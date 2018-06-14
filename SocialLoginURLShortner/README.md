#SocialLoginURLShortner

## Introduction
This project is an example of how to implement social login feature with Google sign-in using spring framework.This application supports

1)Normal User registration Form Login : This is usual login,where there will be a form accepting user name,password and other user details.

2) Social Login (Google) : Here social user can sign-in in the application using their Google accounts. Then we add support for current users to associate their social accounts with their accounts in the application,it is also called mapping social user with local user.

3) URL Shorting service: It will generate Short URL for given URL . It will store Long url in database, get its shorten url based on logic.

## Prerequisites

This application assumes that you have already having Google user-login and will be using it to login to this application.

## Build :

mvn clean install

## Deploy :
deploy SocialLoginURLShortner.war in web server(Apache Tomcat).

##TODO
-As of now , long urls are not store inside database and its just generate dummy url. No facility to handle Api key and no facility to derive long url from short url.
-After google login , the flow is not redirected to success page. It just returns back to login page.

