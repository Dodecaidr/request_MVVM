//
//  TableViewController.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var categories: TableViwModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categories = ViewModel()
        CatigoriesNetworcService.getComponents { (respos) in
            self.categories?.categories = respos.catigories
            self.tableView.reloadData()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories?.numberOfRows ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        
        guard let tabelViewCell = cell, let viewModel = categories else { return UITableViewCell() }
        
        let cellViewModel = viewModel.callViewModel(forIndexPath: indexPath)
        
        tabelViewCell.viewModel = cellViewModel
        
        return tabelViewCell
    }
}


