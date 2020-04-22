//
//  ItemViewControllerSpec.swift
//  TimeLineTests
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation
import Quick
import Nimble
import Nimble_Snapshots
@testable import TimeLine

class ReleaseViewControllerSpec: QuickSpec {
    override func spec() {
        var controller: ReleaseViewController!
        describe("ReleaseViewController") {
            
            beforeEach {
                controller = ReleaseViewController()
                controller.service = ReleaseServiceMock()
                controller.beginAppearanceTransition(true, animated: false)
                controller.endAppearanceTransition()
            }
            
            it("should have a valid instance") {
                expect(controller).toNot(beNil())
            }

            it("should have the expected number of Items") {
                expect(controller.item.count).to(equal(40))
            }
        }
    }
}

