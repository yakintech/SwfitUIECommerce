//
//  MovieSearchModel.swift
//  SwiftUIECommerceSample
//
//  Created by Çağatay Yıldız on 15.10.2023.
//

import Foundation


struct MovieSearchModel : Codable{
    var Response : String = ""
    var totalResults : String = ""
    var Search : [Movie] = []
}


struct Movie : Codable {
    var Title : String = ""
    var Year : String = ""
    var imdbID : String = ""
    var Poster : String = ""
}







struct SupplierModel{
    var id : Int = 0
    var companyName : String = ""
    var contactName : String  = ""
    var contactTitle : String  = ""
    var address : Address = Address()
}


struct Address{
    var street : String = ""
    var city : String = ""
    var region : String = ""

}



