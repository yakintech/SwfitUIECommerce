//
//  FavoritesMain.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import SwiftUI

struct FavoritesMain: View {
    
    @State var favorites : [String] = []
    var body: some View {
        
        VStack{
            
            ForEach(favorites, id:\.self){item in
                Text(item)
                    .padding()
                    .font(.largeTitle)
            }
            
            Button("Clear"){
                UserDefaults.standard.removeObject(forKey: "favorites")
                favorites = []
            }
            
        }
        .onAppear(){
            favorites = UserDefaults.standard.object(forKey: "favorites")  as? [String] ?? [String]()

        }
    }

}

struct FavoritesMain_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesMain()
    }
}
