### Create
* Create User
```
create user 'username'@'localhost' identified by 'password';
create user 'username'@'localhost' identified WITH mysql_native_password by 'password';
```

### Drop
* Drop User
```
drop user 'poa_admin'@'localhost';
```

### Grants 
* Grant permissions to user
```
grant all on database_name.* to 'username'@'localhost';
```

* Grant super privileges to user
```
grant super on *.* to 'username'@localhost;
```

* See list of users
```
select * from mysql.user;
select host, user, password_expired, password_last_changes, password_lifetime from mysql.user;
```

* Revokes ALL the priviliges from the user
```
revoke all on database_name.* from 'username'@'localhost';
```

* Grant select, insert, delete, update privileges to user
```
grant select, insert, delete, update on database_name.* to 'username'@'localhost';
```