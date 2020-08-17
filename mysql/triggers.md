## Create trigger

## Drop trigger
```
drop trigger trigger_name;
```

## Use triggers
* Show triggers - General syntax
```
SHOW TRIGGERS [FROM db_name] [LIKE 'pattern' | WHERE expr]
```
* Show all triggers
```
SHOW TRIGGERS
```
* Show triggers with name like
```
SHOW triggers Like 'animals'
```
* Listing all triggers associated with a certain table
```
SHOW TRIGGERS FROM test WHERE 'Table' = 'user'
```
* Show triggers by event
```
SHOW triggers WHERE Event Like 'Insert'
```