//
//  ItemServiceImpl.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation

protocol ItemService {
    func getItens(completionHandler: @escaping (Result<[Release], Error>) -> Void )
}

class ItemServiceImpl: ItemService {
    
    var apiCLiente = APIClient()
    
    static let instance = ItemServiceImpl()
    
    var itens = [Release]()
    
    func getItens(completionHandler: @escaping (Result<[Release], Error>) -> Void ) {
        apiCLiente.fetchData(url: BASE_URL) { (response) in
            switch response{
            case .success(let data):
                let decoder = JSONDecoder()
                guard let decodedItens = try? decoder.decode([Release].self, from: data) else {
                    completionHandler(.failure(RequestError.decoded))
                    return
                }
                //completion
                self.getCategory(completionHandler: completionHandler, releaseArray: decodedItens)
            case .failure(let error):
                completionHandler(.failure(error))
            }
            
        }
    }
    
    func getCategory(completionHandler: @escaping (Result<[Release], Error>) -> Void , releaseArray: [Release] ){
        apiCLiente.fetchData(url: CATEGORY_URL) { (response) in
            switch response{
            case .success(let data):
                let decoder = JSONDecoder()
                guard let categores = try? decoder.decode([Category].self, from: data) else {
                    completionHandler(.failure(RequestError.decoded))
                    return
                }
                var releases: [Release] = []
                for var release in releaseArray {
                    release.categoriaNome = categores.first(where: { (category) -> Bool in
                        return category.id == release.categoria
                        })?.nome
                    releases.append(release)
                }
                completionHandler(.success(releases))
                
            case .failure(let error):
                completionHandler(.failure(error))
            }
            
        }
    }
    
}
