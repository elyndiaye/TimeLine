//
//  ItemCell.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import UIKit
import Reusable

class ItemCell: UITableViewCell, NibReusable {
    
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var origemLbl: UILabel!
    @IBOutlet weak var valueLbl: UILabel!
    @IBOutlet weak var monthLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configureCell(item: Release){
        guard let value = (item.valor) else {return}
        self.valueLbl.text = "\(value)"
        self.origemLbl.text = item.origem
        guard let category = (item.categoriaNome) else {return}
        self.categoryLbl.text = "Categoria: \(category)"
        self.monthLbl.text = "\(item.mesLancamento)"
    }
    
}
