//
//  UserDetail.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import SwiftUI

struct UserDetail: View {
    var name = ""
    var surname = ""
    var address = ""
    
    var body: some View {
        VStack{
            Text(name)
                .padding()
            
            Text(surname)
                .padding()
            
            Text(address)
                .padding()
        }
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail()
    }
}
