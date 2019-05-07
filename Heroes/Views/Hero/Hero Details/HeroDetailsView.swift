//
//  HeroDetailsView.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

protocol HeroDetailsView: NSObjectProtocol {
    func setHeroName(name: String)
    func setHeroAge(age: String)
    func setHeroEmail(email: String)
    func setHeroAlias(alias: String)
    func setHeroDP(dp: UIImage?)
}
