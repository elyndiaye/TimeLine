//
//  JsonHelper.swift
//  TimeLineTests
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation
@testable import TimeLine

class JsonHelper {
    
    func loadJson() -> Data {
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "releases", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        return try! Data(contentsOf: url)
    }
    
    func decodeJson() -> [Release] {
        let data = loadJson()
        let decoder = JSONDecoder()
        let items = try! decoder.decode([Release].self, from: data)
        print(items)
        return items
    }
    
}
