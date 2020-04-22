//
//  Constants.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 20/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool, _ errorMessage :String?) -> ()

// URL Constants
let BASE_URL = "https://desafio-it-server.herokuapp.com/lancamentos"
let CATEGORY_URL = "https://desafio-it-server.herokuapp.com/categorias/"

//Segues
let TO_DETAIL = "toDetail"


//  Defaults
let DETAIL = "detail"


// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8",
    "Accept": "application/json"
]
