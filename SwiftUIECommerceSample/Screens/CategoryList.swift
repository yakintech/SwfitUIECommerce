//
//  CategoryList.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 15.10.2023.
//

import SwiftUI
import Alamofire

struct CategoryList: View {
    
    @State var categories : [CategoryModel] = []
    
    var body: some View {
        VStack{
            
            ForEach(categories, id:\.id) { category in
                Text(category.name)
                    .font(.title)
                    .padding()
            }
            
        }
        .onAppear(){
            let request = AF.request("https://northwind.vercel.app/api/categories");
            
            request.responseDecodable(of: [CategoryModel].self){response in
                categories = response.value ?? []
                //?? burada bir nil kontrol yapıyor. Eğer response.value nil ise boş bir dizi atıyor
            }
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
