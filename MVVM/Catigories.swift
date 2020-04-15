//
//  Catigories.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

struct Catigories {
    var name: String
    
    init?(dict: [String:AnyObject]) {
        guard let name = dict["name"] as? String  else {  return nil }
        
        self.name = name
    }
}

