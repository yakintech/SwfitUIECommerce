//
//  ProductDetail.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import SwiftUI

struct ProductDetail: View {
    var detail : ProductModel = ProductModel()
    
    var body: some View {
        
        VStack{
            Text("Id: \(detail.id)")
                .padding()
            
            Text("Name: \(detail.name)")
                .padding()
            
            Text("Description: \(detail.description)")
                .padding()
            
        }
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail()
    }
}
