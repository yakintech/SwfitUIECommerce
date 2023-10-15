//
//  Tab.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import SwiftUI

struct Tab: View {
    var body: some View {
       
        NavigationView{
            TabView{
                
                ProductsMain()
                    .tabItem{
                        Label("Products", systemImage: "person")
                    }
                
                ProfileMain()
                    .tabItem{
                        Label("Profile", systemImage: "person")
                    }
                
                
                FavoritesMain()
                    .tabItem{
                        Label("Favorites", systemImage: "star")
                    }
                
                UsersMain()
                    .tabItem{
                        Label("Users", systemImage: "star")
                    }
            }
        }
        
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
