//
//  HeroListView.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

protocol HeroListView: NSObjectProtocol {
    func startLoading()
    func finishLoading()
    func reloadHeroList()
    func showEmptyListMessage()
    func gotoHeroDetails(presenter aPresenter: HeroDetailsPresenter)
}
