/**
* @author Michael Smith - Force2b, LLC
* @date 02/14/2015
*
* @group LoginPage
*
* @description Controller for the LoginPageSlideShow visual force page used to generate
* a dynamic slideshow of images to display on a custom login page.
* The Login_Page_Slideshow_Images__c custom settings object should contains one record
* per image where Name is the unique name of an externally available document, and
* Click_URL_for_Image__c is the destination URL if the user clicks on that image.
*/
public class LoginPageSlideShowController {

	/**
	 * Constructor
	 */
	public LoginPageSlideShowController() {
		buildImagesList();
	}

	/**
	 * Build a list Map of Images where the Key is the Image URL (dynamically generated
	 * from the related public Document) and the value is the target URL if the user
	 * clicks the image in the slide show.
	 */
	public Map<String, String> images 		{ get; private set; }
	private void buildImagesList() {

		String baseURL = Site.getBaseSecureUrl() + '/servlet/servlet.ImageServer';
		String orgId = UserInfo.getOrganizationId().Left(15);

		this.images = new Map<String, String>();
		for (Login_Page_Slideshow_Images__c image : Login_Page_Slideshow_Images__c.getAll().values()) {
			this.images.put(image.Name, image.Click_URL_for_Image__c);
		}

		for (Document doc : [SELECT Id,DeveloperName FROM Document
					WHERE DeveloperName IN :images.keySet() AND IsPublic = True]) {
			String targetURL = images.get(doc.DeveloperName);
			this.images.remove(doc.DeveloperName);
			String imageURL = baseURL + '?id=' + String.valueOf(doc.Id).left(15) + '&oid=' + orgId;
			this.images.put(imageURL, targetURL);
		}

	}

	/**
	 * Returns the size of the images list
	 */
	public Integer getImageListSize() {
		return images.size();
	}

}