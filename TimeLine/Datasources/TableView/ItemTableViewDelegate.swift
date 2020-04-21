//
//  ItemTableViewDelegate.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import UIKit

final class ItemTableViewDelegate: NSObject, UITableViewDelegate{
    //weak var delegate: ItemSelectionDelegate?
    let items:[Release]
                        //, delegate: ItemSelectionDelegate
    init(items: [Release]){
        self.items = items
       // self.delegate = delegate
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemCell = items[indexPath.row]
       // delegate?.didSelect(item: itemCell)
    }
    
}

