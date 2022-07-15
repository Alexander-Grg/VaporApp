//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

class GetProductController {
    
    let responseSingleProduct = GetSingleProductResponse(result: 1,
                                                         product_name: "Название",
                                                         product_price: 123,
                                                         product_description: "Описание продукта")
    
    let productList: [Product] = [
    
        Product(result: 1, id_product: 11, product_name: "Rice", price: 30, id_category: 1, productReviews: [ProductReviews(review: "Very high quality rice, tasty and easy to cook", nameOfReviewer: "Jack"), ProductReviews(review: "I didn't like that one, as for me it looks as the cheap version that i've seen in Vietnam", nameOfReviewer: "Grace"), ProductReviews(review: "Good", nameOfReviewer: "Chuck"), ProductReviews(review: "Nice one, happy to have it", nameOfReviewer: "Linda")]?),
        Product(result: 1, id_product: 12, product_name: "Buckwheat", price: 25, id_category: 1, productReviews: [ProductReviews(review: "Not bad, but could be better", nameOfReviewer: "Mr. Arnold"), ProductReviews(review: "Such a bad quality, was really surprised by that, because the brand is notorious", nameOfReviewer: "John Jones")]?),
        Product(result: 1, id_product: 13, product_name: "Corn", price: 10, id_category: 1, productReviews: [ProductReviews(review: "It is just a standard corn, nothing special", nameOfReviewer: "Rick"), ProductReviews(review: "yes, finally I have my favorite brand of corn, love it", nameOfReviewer: "Morty")]?),
        Product(result: 1, id_product: 14, product_name: "Wheat", price: 28, id_category: 1, productReviews: [ProductReviews(review: "Really bad, I won't feed anyone with that", nameOfReviewer: "Triss"), ProductReviews(review: "Average quality, if you have other options for buying, don't recommend", nameOfReviewer: "Yennefer")]?),
        
        Product(result: 1, id_product: 21, product_name: "Soda", price: 65, id_category: 2, productReviews: [ProductReviews(review: "Very tasty, kinda salty though, but as for me that's fine", nameOfReviewer: "Gerald of Rivia")]?),
        Product(result: 1, id_product: 22, product_name: "SparklingWater", price: 45, id_category: 2),
        Product(result: 1, id_product: 23, product_name: "Coffee", price: 70, id_category: 2, productReviews: [ProductReviews(review: "Very cheap. Good for it's price", nameOfReviewer: "Rocky"), ProductReviews(review: "Love that one", nameOfReviewer: "Chris"), ProductReviews(review: "la la la. Coffee is fine", nameOfReviewer: "Ronald")]?),
        Product(result: 1, id_product: 24, product_name: "Tea", price: 40, id_category: 2, productReviews: [ProductReviews(review: "Green tea is better, do not buy it", nameOfReviewer: "Green Tea lover"), ProductReviews(review: "Absolutely great tea", nameOfReviewer: "Jimmy")]?),
    ]
    
    func getSingleProduct(_ req: Request) throws -> EventLoopFuture<Product> {
        guard let body = try? req.content.decode(GetSingleProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)

        return req.eventLoop.future(responseSingleProduct)
    }
    
    func getProductsList(_ req: Request) throws -> EventLoopFuture<GetProductListResponse> {
        guard let body = try? req.content.decode(GetProductListRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        if body.id_category == 1 {
            let filteredArray = productList.filter {$0.id_product == 1}

            return req.eventLoop.future(GetProductListResponse(products: filteredArray, error: nil))

        } else if body.id_category == 2 {
            let filteredArray = productList.filter {$0.id_product == 2}

            return req.eventLoop.future(GetProductListResponse(products: filteredArray, error: nil))
            
        } else {

            return req.eventLoop.future(GetProductListResponse(products: nil, error: "There is no such category or ID"))
        }
    }
    
    
}
