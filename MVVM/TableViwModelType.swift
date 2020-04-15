//
//  TableViwModelType.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

protocol TableViwModelType {
    var numberOfRows: Int { get }
    var categories: [Catigories] { get set }
    func json()
    func callViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellModelType?
}
