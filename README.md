# LoginPageSlideShow
Login Page Slide Show for custom My Domain branded login pages

An example: https://f2b-login-helper-app-dev-ed.my.salesforce.com/

*Installation:*
* Unmanaged Package:

*Prerequisites*
* Registered 'My Domain' for your Salesforce Org
* Registered 'Force.com Site' for your Salesforce Org

*App Configuration:*
* Any number of images can be rotated automatically by the visual force page
* Images should be uploaded to the Documents tab in a "Public Read/Only" folder and must have the "Externally Available Image" box checked.
* The "Document Unique Name" value is used to configure
* Under Custom Settings, click "Manage" on the "Login Page Slideshow Images" object
* Add a new custom settings record to this object for each image to be displayed in the slide show, setting the "Name" field to the same value from the "Document Unique Name" field, and the "Click URL for Image" field to a target URL if the user clicks on that image.

*Force.com Site Configuration*
* A Site is required for Salesforce to access the custom visualforce page that generates the slide show
* An existing or different 'public' site can be used for this.
* Important: The "Clickjack Protection Level" setting must be set to "Allow framing by any page (no protection)" otherwise Salesforce will not allow the page to be displayed on the login page
* A web address sub-folder is not required for the Site, but is helpful if more than one Site is in use in your Org.