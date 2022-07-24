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

/getProductsList Available categories String "m" - meal and String "d" - drink
https://github.com/westlaw7x7/VaporApp/blob/master/Sources/App/Models/ProductsData.swift

```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/getProductList' \
--header 'Content-Type: application/json' \
--data-raw '{
"id_category": "m"
}'
```

/getSingleProduct 
Available data - 
https://github.com/westlaw7x7/VaporApp/blob/master/Sources/App/Models/ProductsData.swift


```swift
curl --location --request POST 'https://gentle-depths-89634.herokuapp.com/getSingleProduct' \
--header 'Content-Type: application/json' \
--data-raw '{
"id_product": "m1"
}'
```

/addReview
```swift
curl --location --request PUT 'https://gentle-depths-89634.herokuapp.com/addReview' \
--header 'Content-Type: application/json' \
--data-raw '{
    "review": "alalalalala",
    "nameOfReviewer": "John",
    "id": "m1"
}'
```

/deleteReview
```swift
curl --location --request PUT 'https://gentle-depths-89634.herokuapp.com/deleteReview' \
--header 'Content-Type: application/json' \
--data-raw '{"id" : "m1"
}'
```
