//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

class GetProductController {
    
//    let responseSingleProduct = Product(result: 1,
//                                        id_product: 007,
//                                        product_name: "Test",
//                                        price: 20,
//                                        id_category: 1,
//                                        productReviews: [ProductReviews(review: "test", nameOfReviewer: "Test")])
//    

    
    
    func getSingleProduct(_ req: Request) throws -> EventLoopFuture<GetSingleProductResponse> {
        guard let body = try? req.content.decode(GetSingleProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        guard let data = productList[body.id_product]
        else {
            throw Abort(.noContent)
        }
        
        let responseProduct = GetSingleProductResponse(products: data)
        
        return req.eventLoop.future(responseProduct)
    }
    
    func getProductsList(_ req: Request) throws -> EventLoopFuture<GetProductListResponse> {
        guard let body = try? req.content.decode(GetProductListRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        var responseList = GetProductListResponse(products: nil, error: nil)
        var filteredData: [Product] = []
        
        productList.forEach { key, value in
            if key.contains(body.id_category){
                filteredData.append(value)
                responseList = GetProductListResponse(products: filteredData, error: nil)
            } 
        }
        
        return req.eventLoop.future(responseList)
    }
    
    
}
