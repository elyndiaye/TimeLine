//
//  ViewController.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 20/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let screen = ItemView()
    
    var service: ItemService = ItemServiceImpl()
    var items = [Release]()
    
    override func loadView() {
        self.view = screen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        api()
    }
    
    // MARK: - API Services
    func api(){
        service.getItens(){ [weak self] items in
            guard let self = self else { return }
             self.items.append(contentsOf: items)
            print(self.items)
            DispatchQueue.main.async {
                if self.items.count >= 1 {
                    self.screen.load.stopAnimating()
                    self.screen.load.isHidden = true
                    self.screen.table.isHidden = false
                    //self.setupTableView(with: self.items)
                } else {
                    self.screen.table.isHidden = true
                }
            }
        }
    }
    


}

