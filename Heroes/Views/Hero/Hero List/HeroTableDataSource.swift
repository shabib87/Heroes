//
//  HeroTableDataSource.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

final class HeroTableDataSource: NSObject {
    
    fileprivate let presenter: HeroListPresenter
    
    init(presenter aPresenter: HeroListPresenter) {
        self.presenter = aPresenter
    }
}

extension HeroTableDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.heroCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroTableViewCell", for: indexPath) as! HeroTableViewCell
        if let hero = presenter.hero(at: indexPath.row) {
            cell.name = hero.name
            cell.email = hero.email
        }
        return cell
    }
}
