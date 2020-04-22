//
//  Helper.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 22/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

enum RequestError: Error {
    case api(error: Error)
    case not200
    case noResponse
    case noData
    case badURL
    case decoded
}


