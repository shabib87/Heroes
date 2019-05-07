//
//  HeroListPresenter.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import Foundation

final class HeroListPresenter: Presenter {
    
    private let service: HeroService
    weak private var view : HeroListView?
    fileprivate var heroes = [HeroViewData]()
    
    var heroCount: Int {
        get {
            return heroes.count
        }
    }
    
    init(service: HeroService) {
        self.service = service
    }
    
    private func hasHero(at index: Int) -> Bool {
        return heroCount > 0 && index >= 0 && index < heroCount
    }
    
    func attachView(view: HeroListView) {
        self.view = view
    }
    
    func showHeroDetails(index: Int) {
        if hasHero(at: index) {
            let presenter = HeroDetailsPresenter(hero: heroes[index])
            view?.gotoHeroDetails(presenter: presenter)
        }
    }
    
    func hero(at index: Int) -> HeroViewData? {
        if hasHero(at: index) {
            return heroes[index]
        }
        return nil
    }

    func getHeroes() {
        self.view?.startLoading()
        service.getHeroes { [weak self] heroes in
            self?.view?.finishLoading()
            if heroes.count > 0 {
                let mappedHeroes = heroes.map {
                    return HeroViewData(hero: $0)
                }
                self?.heroes.append(contentsOf: mappedHeroes)
                self?.view?.reloadHeroList()
            } else {
                self?.view?.showEmptyListMessage()
            }
        }
    }
}
