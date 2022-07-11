# VaporApp
Mock Server

https://gentle-depths-89634.herokuapp.com  - URL, deployed to HEROKU

/login

```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/login' \
--header 'Content-Type: application/json' \
--data-raw '{
"username" : "Somebody",
"password" : "mypassword"
}'
```

/logout

```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/logout' \
--header 'Content-Type: application/json' \
--data-raw '{"id_user" : 123}'
```

/register or /changeUserData

```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/register' \
--header 'Content-Type: application/json' \
--data-raw '{
"id_user" : 123,
"username" : "Somebody",
"password" : "mypassword",
"email" : "some@some.ru",
"gender": "m",
"credit_card" : "9872389-2424-234224-234", 
"bio" : "This is good! I think I will switch to another language"
}'

curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/changeUserData' \
--header 'Content-Type: application/json' \
--data-raw '{
"id_user" : 123,
"username" : "Somebody",
"password" : "mypassword",
"email" : "some@some.ru",
"gender": "m",
"credit_card" : "9872389-2424-234224-234", 
"bio" : "This is good! I think I will switch to another language"
}'
```

/getProductsList Available categories 1 and 2

```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/getProductList' \
--header 'Content-Type: application/json' \
--data-raw '{
"id_category": 1
}'
```

/getSingleProduct

```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/getSingleProduct' \
--header 'Content-Type: application/json' \
--data-raw '{
"id_product": 1
}'
```
