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

## Triggers
* Create Trigger
```
DELIMITER $$
create trigger t_sale_after_insert after insert on t_sale
for each row
begin
insert into t_audit(username, action, action_date_time, table_name, column_name, new_value, row_pk)
values (NEW.username, 'insert', CURRENT_TIMESTAMP(), 't_sale', 'lead_owner', NEW.lead_owner, NEW.id);
if(OLD.lead_owner <> NEW.lead_owner) then
insert into t_audit(username, action, action_date_time, table_name, column_name, new_value, old_value, row_pk)
values (NEW.username, 'update', CURRENT_TIMESTAMP(), 't_sale', 'lead_owner', NEW.lead_owner, OLD.lead_owner, NEW.id);
end if;
END$$
DELIMITER ;
```