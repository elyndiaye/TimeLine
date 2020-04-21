//
//  ItemTableViewDelegate.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import UIKit

final class ItemTableViewDelegate: NSObject, UITableViewDelegate{
    weak var delegate: ItemSelectionDelegate?
    let items:[Release]
                        
    init(items: [Release], delegate: ItemSelectionDelegate){
        self.items = items.sorted(by: {
            $0.mesLancamento > $1.mesLancamento
        })
        self.delegate = delegate
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemCell = items[indexPath.row]
        delegate?.didSelect(item: itemCell)
    }
    
}

