//
//  ReleaseServiceMock.swift
//  TimeLineTests
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

@testable import TimeLine

class ReleaseServiceMock: ItemService {
    
    let items: [Release]
    private let jsonHelper: JsonHelper
    
    init() {
        self.jsonHelper = JsonHelper()
        self.items = jsonHelper.decodeJson()
    }
    
    func getItens(completionHandler: @escaping ([Release]) -> Void) {
        completionHandler(self.items)
    }
}
