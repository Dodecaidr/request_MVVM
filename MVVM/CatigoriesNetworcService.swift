//
//  CatigoriesNetworcService.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

class CatigoriesNetworcService {
    private init(){}
    
    static func getComponents(complition: @escaping(GetCatigoriesRespons) -> ()) {
        guard let url = URL(string: "http://blackstarshop.ru/index.php?route=api/v1/categories") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in // получаем json от глобального запроса
            
            do {
                let response = try GetCatigoriesRespons(json: json) // пытаемся создать преобразовать полученные данные
                complition(response) // передаем нужные данные для приложения
            } catch {
                print(error)
            }
            
        }
        
    }
}
