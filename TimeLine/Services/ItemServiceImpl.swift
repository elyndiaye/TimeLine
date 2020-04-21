//
//  ItemServiceImpl.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation
import Alamofire

protocol ItemService {
    func getItens(completionHandler: @escaping ([Release]) -> Void )
}

class ItemServiceImpl: ItemService {
    
    static let instance = ItemServiceImpl()
    
    var itens = [Release]()
    
    func getItens(completionHandler: @escaping ([Release]) -> Void ) {
        Alamofire.request("\(BASE_URL)", method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { (response:DataResponse<Any>) in
            
            let arrayItens = [Release]()
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                
                
                do {
                    let decoder = JSONDecoder()
                    let decodedItens = try decoder.decode([Release].self, from: data)
                    
                    completionHandler(decodedItens)
                } catch let error {
                    print(error)
                    completionHandler(arrayItens)
                    debugPrint(response.result.error as Any)
                }
            } else {
                debugPrint(response.result.error as Any)
            }
        }
    }
}
