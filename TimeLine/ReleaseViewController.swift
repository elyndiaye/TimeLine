//
//  ViewController.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 20/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import UIKit

class ReleaseViewController: UIViewController {
    
    let screen = ItemView()
    
//    var service: ItemService = ItemServiceImpl()
//    var item = [Release]()
    
    var viewModel = ReleaseViewModel()
    
    var tableViewDataSource: ItemTableViewDataSource?
    var tableViewDelegate: ItemTableViewDelegate?
    
    override func loadView() {
        super.loadView()
        self.view = screen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.screen.table.isHidden = true
        screen.load.startAnimating()
        api()
    }
    
    // MARK: - API Services
    func api(){
        viewModel.getDataFromAPI { (item) in
            print(item.count)
            DispatchQueue.main.async {
                if item.count >= 1 {
                    self.screen.load.stopAnimating()
                    self.screen.load.isHidden = true
                    self.screen.table.isHidden = false
                    self.setupTableView(with:item)
                } else {
                    self.screen.table.isHidden = true
                }
            }
            
        }
    }
    
    //MARK: - SetupTableView
    func setupTableView(with item:[Release]){
        tableViewDataSource = ItemTableViewDataSource(items: item, tableView: screen.table)
        tableViewDelegate = ItemTableViewDelegate(items: item, delegate: self)
        
        screen.table.dataSource = tableViewDataSource
        screen.table.delegate = tableViewDelegate
        screen.table.reloadData()
    }

}

//MARK: - PROTOCOL ITEM SELECTION DELEGATE
extension ReleaseViewController: ItemSelectionDelegate{
    func didSelect(item: Release) {
        print(item.origem)
        let controller = ItemDetailViewController()
        controller.itemDetail = item
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
