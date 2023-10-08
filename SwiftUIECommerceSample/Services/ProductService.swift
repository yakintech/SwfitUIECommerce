//
//  ProductService.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import Foundation


func GetAllProducts() -> [ProductModel]{
    
    var data : [ProductModel] = []
    
    let product1 : ProductModel = ProductModel(id: 1,name: "IPhone",description: "IPhone Products",price: 100.0, image: "")
    
    let product2 : ProductModel = ProductModel(id: 2,name: "Samsung",description: "Samsung Products",price: 330.0, image: "")
    
    let product3 : ProductModel = ProductModel(id: 3,name: "Huawei",description: "Huawei Products",price: 220.0, image: "")
    
    data.append(product1)
    data.append(product2)
    data.append(product3)
    
    return data;
}
