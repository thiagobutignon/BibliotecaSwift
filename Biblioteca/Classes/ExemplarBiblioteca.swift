//
//  ExemplarBiblioteca.swift
//  Exemplar Biblioteca
//
//  Created by Thiago B Claramunt on 25/04/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class ExemplarBiblioteca {
    var livro: Livro
    var numeroDaEdicao: Int
    var localizacao: String
    var numeroDeIdentificacao: Int
    static var listaDeExemplares: [ExemplarBiblioteca] = []
    
    init(livro: Livro, numeroDaEdicao: Int, localizacao: String, numeroDeIdentificacao: Int ) {
        self.livro = livro
        self.numeroDaEdicao = numeroDaEdicao
        self.localizacao = localizacao
        self.numeroDeIdentificacao = numeroDeIdentificacao
    }
    
    
}
