# PictureFrameSolutions App #

------

## Setup ##

#### • Frontend ####
This application relies on [npm](https://npmjs.org/), [compass](http://compass-style.org/), [sass](http://sass-lang.com) and [React JS](https://facebook.github.io/react/) for all of its frontend js, css, and template compiling.

#### • Backend ####
This application relies on [Laravel](http://laravel.com) installed via [Composer](https://getcomposer.org/). Composer is a tool for dependency management in PHP. It allows us to manage the dependent libraries our project needs. Laravel is a MVC Framework. It makes building web applications simpler, faster and require less code.

### 1. Install Node.js ###
[Installation instructions for Node.js](http://nodejs.org/)

    $ npm install

Then

    $ npm start

### 2. Setup Symbolic Link
create "assets" folder under public folder.
Then

	$ cd public/assets
	$ ln -s ../../src/* ./

create .gitignore file in assets folder.
Then write the follwoing in the .gitignore file.

```
*
!public/
!.gitignore
```

### 3. Install Docker ###

#### • step1  (only one time)
You need to install [Docker](https://docs.docker.com/install/).


#### • step2
The following folder should be rewritable.

	/storage


#### • step3 (only one time) - copy env file

In the project folder

```
cp .env.example .env
```
```
cd laradock
cp env-example .env
```

#### • step4 - start docker
In the project folder

	$ sh start.sh


#### • step5 (only one time) - create database
Go to PhpMyAdmin

	http://localhost:8080
	server: mysql
	user: root
	password: root

Create database named "vektor"

#### • step6 (only one time) - database migration
In the project folder

	$ sh docker.sh
	$ sh db.sh
	$ exit
	
#### • step7 (only one time) setup host
add the following code to /etc/hosts

	127.0.0.1   local.pictureframesolutions.com
	
Then go to

	http://local.pictureframesolutions.com

## Basic Docker Command ##
In the project folder

### Start Docker

	$ sh start.sh

### Stop Docker

	$ sh down.sh

### Database Migration

	$ sh docker.sh
	$ sh db.sh
	$ exit


## Deployment ##

Please run the following command to compile frontend code

	$ npm run build

### • Deploy to Staging ###

Push to 'staging' branch

[https://studiomoulding.nextitinnovations.com](https://studiomoulding.nextitinnovations.com/)


### • Deploy to Production ###

Push to 'production' branch


## User Account ##

Please use one of the following credentials to login to User Account (local and staging only)

[http://local.pictureframesolutions.com/login](http://local.pictureframesolutions.com/login)

[https://studiomoulding.nextitinnovations.com/login](https://studiomoulding.nextitinnovations.com/login)

	username: john.smith@botble.com
	password: 12345678

## CMS ##
Please use the following credentials to login to CMS (local and staging only)

[http://local.pictureframesolutions.com/admin](http://ocal.pictureframesolutions.com/admin)

[https://studiomoulding.nextitinnovations.com/admin](https://studiomoulding.nextitinnovations.com/admin)

	username: botble
	password: 159357

## Test Credit Cards ##

Please use test card number for test.

[https://stripe.com/docs/testing#cards](https://stripe.com/docs/testing#cards)


	To test paying by credit card via PayPal, please use the following card.
	PayPal: test@botble.com – 12345678

Stripe

	Card Number: 4242 4242 4242 4242
	CVV: any three non-consecutive numbers
	Expiration Date: any month and year in the future


## Cron Job Setting ##

Command:

	* * * * * php /path-to-your-project/artisan schedule:run

## Amazon EC2 Access

Command:

	chmod 400 studiomoulding.pem
	sh connect.sh


## S3 Access

* Deploy

Buckets

`- vektorsports-deploy-staging`

`- vektorsports-deploy-production`

`- vektorsports-servers-logs`

```
Key: AKI
Secret: Iq/
```

