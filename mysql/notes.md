## Disable Safe Mode
* Using command SET SQL_STATE_UPDATES = 1
* Using My SQL Workbench settings
	* Edit in file menu
	* Preferences
	* Click "SQL Editor" tab
	* Scroll down
	* Uncheck "Safe Updates" check box
	* Query in file menu - this will come if you already connected to any instance
	* Reconnect to server
	* logout and then login
	* Now execute your sql query
	
## Disable Safe Mode In AWS RDS
* Open the RDS web console
* Open the "Parameter Groups" tab
* Create a new Parameter Group. On the dialog, select the MySQL family compatible to your MySQL database version, give it a name and confirm. Select the just created Parameter Group and issue "Edit Parameters"
* Look for the parameter "log_bin_trust_function_creators" and set its value to "1"
* Save the changes
* Open the "Instances" tab. Expand your MySQL instance and issue the "Instance Action" named "Modify"
* Select the just created Parameter Group and enable "Apply Immediately"
* Click on "Continue" and confirm the changes
* Wait for the "Modifying" operation to be completed
* Again, open the "Instances" tab. Expand your MySQL instance and expand "Instance Action" tab and select "Reboot"