//
//  HeroViewData.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

struct HeroViewData {
    let name: String
    let age: String
    let email: String
    let alias: String
    let profilePicture: UIImage?
    
    init(hero aHero: Hero) {
        self.name = aHero.firstName + " " + aHero.lastName
        self.age = "\(aHero.age)"
        self.email = aHero.email
        self.alias = aHero.alias
        self.profilePicture = UIImage(named: aHero.profilePicture)
    }
}
