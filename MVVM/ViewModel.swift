//
//  ViewModel.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

class ViewModel: TableViwModelType  {
    
    
    
    var categories: [Catigories] = []
    
    func json() {
        CatigoriesNetworcService.getComponents { (respos) in
            self.categories = respos.catigories
        }
    }
    
    var numberOfRows: Int {
        return categories.count
    }
    
    func callViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellModelType? {
        let category = categories[indexPath.row]
        return CellModel(categoy: category)
    }
}
