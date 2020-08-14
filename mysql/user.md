### Create User
* Query
```
create user 'username'@'localhost' identified by 'password';
create user 'username'@'localhost' identified WITH mysql_native_password by 'password';
```

### Drop User
* Query
```
drop user 'poa_admin'@'localhost';
```

### Grant permissions to user
* Query
```
grant all on database_name.* to 'username'@'localhost';
```

### Grant super privileges to user
* Query
```
grant super on *.* to 'username'@localhost;
```

### See list of users
* Query
```
select * from mysql.user;
select host, user, password_expired, password_last_changes, password_lifetime from mysql.user;
```