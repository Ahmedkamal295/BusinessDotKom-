//
//  HottOffersModel.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//


import Foundation

struct HottoffersModel : Codable {
    
    
    let categories : [Categories]?
    let topsuppliers : [Topsuppliers]?
    let slider : [String]?

    enum CodingKeys: String, CodingKey {

        case categories = "categories"
        case topsuppliers = "top-suppliers"
        case slider = "slider"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        categories = try values.decodeIfPresent([Categories].self, forKey: .categories)
        topsuppliers = try values.decodeIfPresent([Topsuppliers].self, forKey: .topsuppliers)
        slider = try values.decodeIfPresent([String].self, forKey: .slider)
    }

}
struct Topsuppliers : Codable {
    let id : Int?
    let name : String?
    let logo : String?
    let stars : Int?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case logo = "logo"
        case stars = "stars"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        logo = try values.decodeIfPresent(String.self, forKey: .logo)
        stars = try values.decodeIfPresent(Int.self, forKey: .stars)
    }

}
struct Categories : Codable {
    let id : Int?
    let name : String?
    let image : String?
    let childs : [Childs]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case image = "image"
        case childs = "childs"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        childs = try values.decodeIfPresent([Childs].self, forKey: .childs)
    }

}
struct Childs : Codable {
    let id : Int?
    let name : String?
    let image : String?
    let childs : [String]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case image = "image"
        case childs = "childs"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        childs = try values.decodeIfPresent([String].self, forKey: .childs)
    }

}
