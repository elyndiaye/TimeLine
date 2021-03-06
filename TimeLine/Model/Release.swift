//
//  Return.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 21/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation

// MARK: - Releases
struct Release: Codable {
    let id: Int
    let valor: Double?
    let origem: String?
    let categoria, mesLancamento: Int
    var categoriaNome: String?

    enum CodingKeys: String, CodingKey {
        case id, valor, origem, categoria
        case mesLancamento = "mes_lancamento"
    }
}

struct Category: Codable {
    let id: Int
    let nome: String?
}
