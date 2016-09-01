<?php


// These three defines set the database connection details.
define('SS_DATABASE_SERVER', 'localhost');
define('SS_DATABASE_USERNAME', 'admin');
define('SS_DATABASE_PASSWORD', 'admin1234');


define('SS_ENVIRONMENT_TYPE', 'dev');

define('SS_DATABASE_CLASS', 'MySQLDatabase');

// These two defines sets a default login which, when used, will always log
// you in as an admin, even creating one if none exist.
define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
define('SS_DEFAULT_ADMIN_PASSWORD', 'admin1234');



if(!(ini_get('date.timezone'))){
	ini_set('date.timezone', 'UTC');
}