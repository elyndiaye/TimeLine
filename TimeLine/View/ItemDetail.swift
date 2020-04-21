//
//  ItemDetail.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//


import UIKit

final class ItemDetail: UIView{
    
    lazy var origemLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 35)
        view.textColor = .green
        view.text = "Origem"
        return view
    }()
    
    lazy var valorLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .black
        view.text = "Valor"
        return view
    }()
    
    lazy var valueLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .red
        view.text = "Value"
        return view
    }()
    
    lazy var identifLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .black
        view.text = "Id:"
        return view
    }()
    
    lazy var idLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .red
        view.text = "IdValue"
        return view
    }()
    
    lazy var dataLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .black
        view.text = "Mes"
        return view
    }()
    
    lazy var mesLbl: UILabel = {
        let view = UILabel(frame: .zero)
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .red
        view.text = "mes"
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
         backgroundColor = .white
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ItemDetail: CodeView{
    func buildViewHierarchy() {
        //Adicionar View
        addSubview(origemLbl)
        addSubview(valorLbl)
        addSubview(valueLbl)
        addSubview(identifLbl)
        addSubview(idLbl)
        addSubview(dataLbl)
        addSubview(mesLbl)
    }
    
    func setupConstraints() {
        //Configurar Constraints
        //Snapkit
        origemLbl.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.topMargin).offset(20)
            make.centerX.equalToSuperview()
        }
        
        valorLbl.snp.makeConstraints { make in
            make.top.equalTo(origemLbl).offset(50)
            make.left.equalToSuperview().offset(50)
        }
        
        valueLbl.snp.makeConstraints { make in
            make.top.equalTo(valorLbl).offset(20)
            make.left.equalToSuperview().offset(50)
        }
        
        identifLbl.snp.makeConstraints { make in
            make.top.equalTo(valueLbl).offset(50)
            make.left.equalToSuperview().offset(50)
        }
        
        idLbl.snp.makeConstraints { make in
            make.top.equalTo(identifLbl).offset(20)
            make.left.equalToSuperview().offset(50)
        }
        
        dataLbl.snp.makeConstraints { make in
            make.top.equalTo(idLbl).offset(50)
            make.left.equalToSuperview().offset(50)
        }
        
        mesLbl.snp.makeConstraints { make in
            make.top.equalTo(dataLbl).offset(20)
            make.left.equalToSuperview().offset(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        //Setup adicional
    }
    
}

