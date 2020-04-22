//
//  ReleaseViewModel.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation

class ReleaseViewModel {
    typealias completionBlock = ([Release]) -> ()
    var service: ItemService = ItemServiceImpl()
    var item = [Release]()
    
    func getDataFromAPI(completionBlock : @escaping completionBlock){
        
        service.getItens()        { [weak self] (items) in
            self?.item = items
            completionBlock(items)
        }
    }
    
    
    
}
