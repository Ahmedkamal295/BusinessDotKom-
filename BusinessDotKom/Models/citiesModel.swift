//
//  citiesModel.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import Foundation
struct citiesModel : Codable {
    let status : String?
    let data : [CitiesData]?

    enum CodingKeys: String, CodingKey {

        case status = "status"
        case data = "data"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        data = try values.decodeIfPresent([CitiesData].self, forKey: .data)
    }

}
struct CitiesData : Codable {
    let id : Int?
    let name : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }

}
