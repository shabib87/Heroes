//
//  HeroService.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import Foundation

class HeroService {
    
    func getHeroes(completion: @escaping (_ heroes: [Hero])->()) {
        
        if let path = Bundle.main.path(forResource: "heroes", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let heroes = try decoder.decode([Hero].self, from: data)
                let deadlineTime = DispatchTime.now() + .seconds(1)
                DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                    completion(heroes)
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
