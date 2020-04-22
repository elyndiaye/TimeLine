//
//  ItemViewSpec.swift
//  TimeLineTests
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import TimeLine


class ItemDetailViewSpec: QuickSpec {
    override func spec() {
        describe("Screen ItemView") {
            it("has valid snapshot") {
                let frame = UIScreen.main.bounds
                let view = ItemDetail(frame: frame)
                expect(view) == snapshot("ItemDetail")
            }
        }
    }
}
