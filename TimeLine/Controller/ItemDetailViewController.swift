//
//  ItemDetailViewController.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {
    
    let screenDetail = ItemDetail()
    var itemDetail: Release?
    
    override func loadView() {
        super.loadView()
        self.view = screenDetail
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Release Detail"
        configureComponents()
        // Do any additional setup after loading the view.
    }
    
    func configureComponents() {
        guard let itemDetail = self.itemDetail else {
            screenDetail.origemLbl.text = "Error on Movie"
            navigationItem.title = "Error"
            return
        }
        
        screenDetail.origemLbl.text = itemDetail.origem
        guard let valor = itemDetail.valor else { return }
        screenDetail.valueLbl.text = "\(valor)"
        screenDetail.idLbl.text = "\(itemDetail.id)"
        screenDetail.mesLbl.text = "\(itemDetail.mesLancamento)"
        
    }
    

}
