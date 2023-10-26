//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/21/22.
//

import Foundation

var productList: [String : Product] = [

    "m1": Product(result: 1, id_product: "m1", product_name: "Rice", price: 30, id_category: 1, productReviews: [ProductReviews(review: "Very high quality rice, tasty and easy to cook", nameOfReviewer: "Jack"), ProductReviews(review: "I didn't like that one, as for me it looks as the cheap version that i've seen in Vietnam", nameOfReviewer: "Grace"), ProductReviews(review: "Good", nameOfReviewer: "Chuck"), ProductReviews(review: "Nice one, happy to have it", nameOfReviewer: "Linda")]),
    "m2": Product(result: 1, id_product: "m2", product_name: "Buckwheat", price: 25, id_category: 1, productReviews: [ProductReviews(review: "Not bad, but could be better", nameOfReviewer: "Mr. Arnold"), ProductReviews(review: "Such a bad quality, was really surprised by that, because the brand is notorious", nameOfReviewer: "John Jones")]),
    "m3": Product(result: 1, id_product: "m3", product_name: "Corn", price: 10, id_category: 1, productReviews: [ProductReviews(review: "It is just a standard corn, nothing special", nameOfReviewer: "Rick"), ProductReviews(review: "yes, finally I have my favorite brand of corn, love it", nameOfReviewer: "Morty")]),
    "m4": Product(result: 1, id_product: "m4", product_name: "Wheat", price: 28, id_category: 1, productReviews: [ProductReviews(review: "Really bad, I won't feed anyone with that", nameOfReviewer: "Triss"), ProductReviews(review: "Average quality, if you have other options for buying, don't recommend", nameOfReviewer: "Yennefer")]),
    "d1": Product(result: 1, id_product: "d1", product_name: "Soda", price: 65, id_category: 2, productReviews: [ProductReviews(review: "Very tasty, kinda salty though, but as for me that's fine", nameOfReviewer: "Gerald of Rivia")]),
    "d2": Product(result: 1, id_product: "d2", product_name: "SparklingWater", price: 45, id_category: 2, productReviews: [ProductReviews(review: "Waste of money", nameOfReviewer: "Joe")]),
    "d3": Product(result: 1, id_product: "d3", product_name: "Coffee", price: 70, id_category: 2, productReviews: [ProductReviews(review: "Very cheap. Good for it's price", nameOfReviewer: "Rocky"), ProductReviews(review: "Love that one", nameOfReviewer: "Chris"), ProductReviews(review: "la la la. Coffee is fine", nameOfReviewer: "Ronald")]),
    "d4": Product(result: 1, id_product: "d4", product_name: "Tea", price: 40, id_category: 2, productReviews: [ProductReviews(review: "Green tea is better, do not buy it", nameOfReviewer: "Green Tea lover"), ProductReviews(review: "Absolutely great tea", nameOfReviewer: "Jimmy")]),
]
