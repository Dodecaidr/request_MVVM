
//
//  NetworkService.swift
//  MVVM
//
//  Created by Илья Лобков on 14/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import Foundation

class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, complition: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                
                DispatchQueue.main.async {
                    complition(json)
                }
            }
            catch {
                print(error)
            }
        }.resume()
    }
}
