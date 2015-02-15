# Login Page Slide Show Application
*Login Page Slide Show for custom My Domain branded login pages*

An example: https://f2b-login-helper-app-dev-ed.my.salesforce.com?login

#### Installation:
* Unmanaged Package Installer: https://login.salesforce.com/packaging/installPackage.apexp?p0=04tj0000001YpB6

#### Prerequisites
* Registered 'My Domain' for your Salesforce Org
* Registered 'Force.com Site' for your Salesforce Org

#### App Configuration:
* Any number of images can be rotated automatically by the visual force page
* Images should be uploaded to the Documents tab in a "Public Read/Only" folder and must have the "Externally Available Image" box checked.
* The "Document Unique Name" value will be used on the Custom Settings record to link to the externally available image dynamically without having to copy/paste URL's
![Document](https://f2b-login-helper-app-dev-ed--c.na16.content.force.com/servlet/servlet.ImageServer?id=015j00000004L8q&oid=00Dj0000001tMup)
* Under Custom Settings, click "Manage" on the "Login Page Slideshow Images" object
* Add a new custom settings record to this object for each image to be displayed in the slide show, setting the "Name" field to the same value from the "Document Unique Name" field, and the "Click URL for Image" field to a target URL if the user clicks on that image.

![Custom Settings Record](https://f2b-login-helper-app-dev-ed--c.na16.content.force.com/servlet/servlet.ImageServer?id=015j00000004L8v&oid=00Dj0000001tMup)

#### Force.com Site Configuration
* A Site is required for Salesforce to access the custom visualforce page that generates the slide show
* An existing or different 'public' site can be used for this.
* Important: The "Clickjack Protection Level" setting must be set to "Allow framing by any page (no protection)" otherwise Salesforce will not allow the page to be displayed on the login page
* A web address sub-folder is not required for the Site, but is helpful if more than one Site is in use in your Org.
![Site Configuration](https://f2b-login-helper-app-dev-ed--c.na16.content.force.com/servlet/servlet.ImageServer?id=015j00000004L8l&oid=00Dj0000001tMup)

#### My Domain Configuration
* Under My Domain, add the Force.com Site URL (must be the HTTPS version) you created above, specifying the LoginPageSlideShow visualforce page at the end.
![My Domain Configuration](https://f2b-login-helper-app-dev-ed--c.na16.content.force.com/servlet/servlet.ImageServer?id=015j00000004L90&oid=00Dj0000001tMup)
