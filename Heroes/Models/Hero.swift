//
//  Hero.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import Foundation

struct Hero: Codable {
    let firstName: String
    let lastName: String
    let email: String
    let age: Int
    let alias: String
    let profilePicture: String
}
