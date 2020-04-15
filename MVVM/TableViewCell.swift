//
//  TableViewCell.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var category: UILabel!
    
    weak var viewModel: TableViewCellModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            category.text = viewModel.category
        }
    }
}
