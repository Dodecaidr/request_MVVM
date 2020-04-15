//
//  CellModel.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

class CellModel: TableViewCellModelType {
    
    private var categories: Catigories
    
    var category: String {
        return String(describing: categories.name)
    }
    
    init (categoy: Catigories) {
        self.categories = categoy
    }
}
