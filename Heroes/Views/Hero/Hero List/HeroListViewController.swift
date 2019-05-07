//
//  HeroListViewController.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

class HeroListViewController: RootViewController {

    override class func instantiateFromStoryboard(presenter aPresenter: Presenter) -> UIViewController {
        let vc = UIStoryboard(name: "Hero", bundle: nil)
            .instantiateViewController(withIdentifier: "HeroListViewController")
            as! HeroListViewController
        vc.presenter = aPresenter as? HeroListPresenter
        return vc
    }
    
    fileprivate var presenter: HeroListPresenter!
    fileprivate var dataSource: HeroTableDataSource!
    
    fileprivate var hasHeroes: Bool = false {
        didSet {
            emptyView.isHidden = hasHeroes
            tableView.isHidden = !hasHeroes
        }
    }
    
    @IBOutlet fileprivate weak var tableView: UITableView!
    @IBOutlet fileprivate weak var emptyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
        prepareView()
        presenter.getHeroes()
    }
    
    private func prepareView() {
        self.title = "Heroes"
        hasHeroes = false
        dataSource = HeroTableDataSource(presenter: presenter)
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
}

extension HeroListViewController: HeroListView {
    
    func reloadHeroList() {
        hasHeroes = true
        tableView.reloadData()
    }
    
    func showEmptyListMessage() {
        hasHeroes = false
    }
    
    func startLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func finishLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func gotoHeroDetails(presenter aPresenter: HeroDetailsPresenter) {
        let detailsVC = HeroDetailsViewController.instantiateFromStoryboard(presenter: aPresenter)
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
}

extension HeroListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.showHeroDetails(index: indexPath.row)
    }
}
