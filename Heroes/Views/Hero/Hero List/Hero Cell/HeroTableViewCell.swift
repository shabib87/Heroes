//
//  HeroTableViewCell.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

class HeroTableViewCell: UITableViewCell {

    @IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var emailLabel: UILabel!
    
    var name: String = "" {
        didSet {
            nameLabel.text = name
        }
    }
    
    var email: String = "" {
        didSet {
            emailLabel.text = email
        }
    }
}
