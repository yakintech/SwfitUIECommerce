//
//  UsersMain.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 15.10.2023.
//

import SwiftUI
import Alamofire

struct UsersMain: View {
    
    @State var users : [UserModel] = []
    
    var body: some View {
        
        VStack{
            
            ForEach(users, id:\.id){item in
                
                Text(item.email)
                    .padding()
            }
            
        }
        .onAppear(){
            let request = AF.request("https://jsonplaceholder.typicode.com/users")
            
            request.responseDecodable(of : [UserModel].self){ response in
                users = response.value ?? []
            }
        }
    }
}

struct UsersMain_Previews: PreviewProvider {
    static var previews: some View {
        UsersMain()
    }
}
