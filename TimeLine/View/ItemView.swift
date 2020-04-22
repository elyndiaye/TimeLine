//
//  ItemView.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 20/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation
import UIKit


final class ItemView: UIView{
    
    lazy var table: UITableView = {
        let view = UITableView()
        view.separatorStyle = .singleLine
        return view
    }()
    
    lazy var load: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(frame: .zero)
        view.color = .black
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .orange
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ItemView: CodeView{
    func buildViewHierarchy() {
        addSubview(table)
        addSubview(load)
        bringSubviewToFront(load)
    }
    
    func setupConstraints() {
        //Configurar Constraints
        //Snapkit
        table.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.topMargin)
            make.right.left.bottom.equalToSuperview()
        }
        
        load.snp.makeConstraints { (make) in
            make.right.left.top.bottom.equalToSuperview()
        }
        
    }
    
    func setupAdditionalConfiguration() {
        //Setup adicional
    }
    
}

