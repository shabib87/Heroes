//
//  HeroDetailsViewController.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

class HeroDetailsViewController: RootViewController {

    override class func instantiateFromStoryboard(presenter aPresenter: Presenter) -> UIViewController {
        let vc = UIStoryboard(name: "Hero", bundle: nil)
            .instantiateViewController(withIdentifier: "HeroDetailsViewController")
            as! HeroDetailsViewController
        vc.presenter = aPresenter as? HeroDetailsPresenter
        return vc
    }
    
    @IBOutlet fileprivate weak var profilePictureView: UIImageView!
    @IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var ageLabel: UILabel!
    @IBOutlet fileprivate weak var aliasLabel: UILabel!
    @IBOutlet fileprivate weak var emailLabel: UILabel!
    
    fileprivate var presenter: HeroDetailsPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        presenter.fireDisplay()
    }
}

extension HeroDetailsViewController: HeroDetailsView {
    
    func setHeroAlias(alias: String) {
        self.title = alias
        aliasLabel.text = alias
    }
    
    func setHeroDP(dp: UIImage?) {
        profilePictureView.image = dp
    }
    
    func setHeroName(name: String) {
        nameLabel.text = name
    }
    
    func setHeroAge(age: String) {
        ageLabel.text = age
    }
    
    func setHeroEmail(email: String) {
        emailLabel.text = email
    }
}
