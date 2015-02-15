/**
* @author Michael Smith - Force2b, LLC
* @date 02/14/2015
*
* @group LoginPage
*
* @description Unit Test for the LoginPageSlideShow Controller
*/
@isTest
private class LoginPageSlideShowControllerTest {
	
	@isTest static void test_Controller() {
		Integer expectedSize = 0;
		try {
			Folder f = [SELECT ID From Folder WHERE Type = 'Document' LIMIT 1];

			Document doc = new Document(
				Name = 'UNITTEST',
				DeveloperName = 'UNITEST',
				URL = 'https://www.salesforce.com',
				IsPublic = True,
				Type = 'PNG',
				FolderId = f.Id
			);
			insert(doc);

			Login_Page_Slideshow_Images__c img = new Login_Page_Slideshow_Images__c(
				Name = doc.DeveloperName,
				Click_URL_for_Image__c = 'https://www.salesforce.com'
			);
			insert(img);
			expectedSize = 1;
		} catch (exception ex) { }

		Test.startTest();
		LoginPageSlideShowController ctrlr = new LoginPageSlideShowController();
		system.assertEquals(expectedSize, ctrlr.getImageListSize());

	}
	
}