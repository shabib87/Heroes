//
//  HeroDetailsPresenter.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import Foundation

class HeroDetailsPresenter: Presenter {
    
    fileprivate let hero: HeroViewData
    weak private var view : HeroDetailsView?
    
    init(hero aHero: HeroViewData) {
        self.hero = aHero
    }
    
    func attachView(view: HeroDetailsView) {
        self.view = view
    }
    
    func fireDisplay() {
        view?.setHeroName(name: hero.name)
        view?.setHeroAge(age: hero.age)
        view?.setHeroEmail(email: hero.email)
        view?.setHeroAlias(alias: hero.alias)
        view?.setHeroDP(dp: hero.profilePicture)
    }
}
