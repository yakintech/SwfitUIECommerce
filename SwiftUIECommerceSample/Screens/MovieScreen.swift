//
//  MovieScreen.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 15.10.2023.
//

import SwiftUI
import Alamofire

struct MovieScreen: View {
    
    @State var movieSearch : MovieSearchModel = MovieSearchModel()
    
    @State var searchWord : String = ""
    
    var body: some View {
        
        
        VStack{
            
            TextField("Search", text: $searchWord)
                .padding()
            
            Button("Search"){
                let request = AF.request("https://www.omdbapi.com/?s=" + searchWord + "&apikey=bd479c72")
                
                request.responseDecodable(of : MovieSearchModel.self){ response in
                    movieSearch = response.value ?? MovieSearchModel()
                }
            }
            
            Divider()
            
            ForEach(movieSearch.Search, id: \.imdbID){item in
                Text(item.Title)
                    .font(.title)
            }
            
            Spacer()
            
        }
       
    }
}

struct MovieScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieScreen()
    }
}
