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
    
        Product(id_product: 1, product_name: "Rice", price: 30, id_category: 11),
        Product(id_product: 1, product_name: "Buckwheat", price: 25, id_category: 12),
        Product(id_product: 1, product_name: "Corn", price: 10, id_category: 13),
        Product(id_product: 1, product_name: "Wheat", price: 28, id_category: 14),
        
        Product(id_product: 2, product_name: "Soda", price: 65, id_category: 21),
        Product(id_product: 2, product_name: "SparklingWater", price: 45, id_category: 22),
        Product(id_product: 2, product_name: "Coffee", price: 70, id_category: 23),
        Product(id_product: 2, product_name: "Tea", price: 40, id_category: 24),

    ]
    
    func getSingleProduct(_ req: Request) throws -> EventLoopFuture<GetSingleProductResponse> {
        guard let body = try? req.content.decode(GetSingleProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
//        if body.id_product == productLis {
//
//
//            GetSingleProductResponse(result: 1, product_name: filteredProduct, product_price: <#T##Int#>, product_description: <#T##String#>)
//        }
//
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
