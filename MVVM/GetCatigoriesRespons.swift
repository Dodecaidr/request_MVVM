//
//  GetCatigoriesRespons.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

struct GetCatigoriesRespons {
    
    let catigories:  [Catigories]
    
    init(json: Any) throws {
        
        guard let array = json as? [String : AnyObject] else { throw NetworkErrors.failInternetError } // проверяем полученные данные от JSON
        
        var catigories = [Catigories]()
        
        for (_, elem) in array { // перебираем данные в  JSON
            guard let arrayCatigoies = elem as? [String : AnyObject] else { continue }
            
            guard let catigory = Catigories(dict: arrayCatigoies ) else { continue }
            
            catigories.append(catigory)
        }
        
        self.catigories = catigories
    }
    
}
