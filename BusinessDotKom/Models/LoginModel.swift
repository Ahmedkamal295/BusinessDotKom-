//
//  LoginModel.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//


import Foundation
struct LoginMoedel : Codable {
    let status : String?
    let data : Data?

    enum CodingKeys: String, CodingKey {

        case status = "status"
        case data = "data"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        data = try values.decodeIfPresent(Data.self, forKey: .data)
    }

}
struct User_data : Codable {
    let id : Int?
    let name : String?
    let email : String?
    let mobile : String?
    let avatar : String?
    let country : String?
    let city : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case email = "email"
        case mobile = "mobile"
        case avatar = "avatar"
        case country = "country"
        case city = "city"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        mobile = try values.decodeIfPresent(String.self, forKey: .mobile)
        avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        city = try values.decodeIfPresent(String.self, forKey: .city)
    }

}
struct Data : Codable {
    let user_data : User_data?
    let token : String?
    let token_type : String?
    let expires_at : String?

    enum CodingKeys: String, CodingKey {

        case user_data = "user_data"
        case token = "token"
        case token_type = "token_type"
        case expires_at = "expires_at"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        user_data = try values.decodeIfPresent(User_data.self, forKey: .user_data)
        token = try values.decodeIfPresent(String.self, forKey: .token)
        token_type = try values.decodeIfPresent(String.self, forKey: .token_type)
        expires_at = try values.decodeIfPresent(String.self, forKey: .expires_at)
    }

}
