//
//  RootViewController.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, StoryboardInitializable {
    
    class func instantiateFromStoryboard(presenter aPresenter: Presenter) -> UIViewController {
        fatalError("Override failed. Dependency injection not processed. Presenter injection hampered.")
    }
    
    // Preventing segue to support dependency injection
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        fatalError("Segues should not be used. Presenter injection hampered.")
    }
}

