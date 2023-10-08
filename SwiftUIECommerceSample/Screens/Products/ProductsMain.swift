//
//  ProductsMain.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import SwiftUI

struct ProductsMain: View {
    
   @State var products : [ProductModel] = []
    
    var body: some View {
       
        VStack{
            
            ForEach(products, id:\.id) { item in
                
                NavigationLink(destination: ProductDetail(detail: item)){
                    
                    Text("\(item.name) - \(item.price)")
                        .padding()
                }
                
                Button("Add to fav"){
                    
                    var favorites = UserDefaults.standard.object(forKey: "favorites") as? [String] ?? [String]()
                    
                    if(!favorites.contains(item.name)){
                        favorites.append(item.name)
                    }

                  
                    
                    UserDefaults.standard.set(favorites, forKey: "favorites")
                }
                
            }
            
            
        }
        .onAppear(){
            
           products = GetAllProducts()
            
            
        }
        
    }
}

struct ProductsMain_Previews: PreviewProvider {
    static var previews: some View {
        ProductsMain()
    }
}



