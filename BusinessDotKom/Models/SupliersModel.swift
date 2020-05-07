////
////  SupliersModel.swift
////  BusinessDotKom
////
////  Created by Ahmed on 3/2/20.
////  Copyright © 2020 Ahmed. All rights reserved.
////
//
//import Foundation
//struct suppliersModel : Codable {
//    let data : [Data]?
//    let links : Links?
//    let meta : Meta?
//
//    enum CodingKeys: String, CodingKey {
//
//        case data = "data"
//        case links = "links"
//        case meta = "meta"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        data = try values.decodeIfPresent([Data].self, forKey: .data)
//        links = try values.decodeIfPresent(Links.self, forKey: .links)
//        meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
//    }
//
//}
//struct SuppliersData : Codable {
//    let id : Int?
//    let name : String?
//    let logo : String?
//    let stars : Int?
//    let products : [Products]?
//
//    enum CodingKeys: String, CodingKey {
//
//        case id = "id"
//        case name = "name"
//        case logo = "logo"
//        case stars = "stars"
//        case products = "products"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        id = try values.decodeIfPresent(Int.self, forKey: .id)
//        name = try values.decodeIfPresent(String.self, forKey: .name)
//        logo = try values.decodeIfPresent(String.self, forKey: .logo)
//        stars = try values.decodeIfPresent(Int.self, forKey: .stars)
//        products = try values.decodeIfPresent([Products].self, forKey: .products)
//    }
//
//}
