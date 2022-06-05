//
//  json.swift
//  finalProjectAni
//
//  Created by apple on 6/5/22.
//

import Foundation


struct Products: Decodable {
    let products: [Technics]!
    let total, skip, limit: Int
}

struct Technics: Decodable {
    let id : Int
    let title : String
    let description : String
    var price : Int
    let discountPercentage : Double
    let rating : Double
    let stock : Int
    let brand : String
    let category : String
    let thumbnail : String
    let images : [String]
}

var caunt: Int = 0

/*private enum jsonKeys: String, CodingKey {
    case id = "id"
    case title = "title"
    case description = "descriprion"
    case price = "price"
    case discountPercentage = "discountParsentage"
    case rating = "rating"
    case stock = "stock"
    case brand = "brand"
    case category = "category"
    case thumbnail =  "tumbnail"
    case images = "images"
    
}*/
