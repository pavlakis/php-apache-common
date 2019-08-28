# PHP Apache Common

### A docker image with PHP, Apache and some common extensions and tools

> Pull from docker hub: `pavlakis/php-apache-common:{PHP_VERSION}`

Extensions:

* `pdo_mysql` 
* `mysqli`
* `zip` 
* `json` 
* `xml` 
* `mbstring`
* `gd`

Tools:
	
* `nano` 
* `zip` 
* `unzip` 
* `git` 
* `iputils-ping` 
* `net-tools acl`

## Latest Builds

### PHP 7.4

* PHP 7.4.0beta4
* composer 1.9
* Apache 2.4.38

Available from: `pavlakis/php-apache-common:7.4.0beta4`

### PHP 7.3

* PHP 7.3.8
* composer 1.9
* Apache 2.4.38

Available from: `pavlakis/php-apache-common:7.3.8`

### PHP 7.2

* PHP 7.2.21
* composer 1.9
* Apache 2.4.38

Available from: `pavlakis/php-apache-common:7.2.21`

## Confirming versions

```
docker run --name php-7.2.21 --rm pavlakis/php-apache-common:7.2.21 sh -c "php -v"
docker run --name php-7.2.21 --rm pavlakis/php-apache-common:7.2.21 sh -c "apachectl -V"
```
