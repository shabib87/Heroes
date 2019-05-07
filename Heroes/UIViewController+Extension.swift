//
//  UIViewController+Extension.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

class Presenter {}
protocol StoryboardInitializable {
    static func instantiateFromStoryboard(presenter aPresenter: Presenter) -> UIViewController
}
