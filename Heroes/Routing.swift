//
//  Routing.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-06-12.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

protocol CanDisplayHeroDetailsScreen {
    func displayHeroDetailsScreen(presenter aPresenter: Presenter)
}

extension CanDisplayHeroDetailsScreen where Self: UIViewController {
    
    func displayHeroDetailsScreen(presenter aPresenter: Presenter) {
        let detailsVC = HeroDetailsViewController.instantiateFromStoryboard(presenter: aPresenter)
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}
