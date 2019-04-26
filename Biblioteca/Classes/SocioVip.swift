//
//  SocioVip.swift
//  Biblioteca
//
//  Created by Thiago B Claramunt on 25/04/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation
class SocioVip: Socio {
    var mensalidade: Int
    
    init(nome: String, sobrenome: String, numeroDeIdentificacao: Int, mensalidade: Int) {
        self.mensalidade = mensalidade
        super.init(nome: nome, sobrenome: sobrenome, numeroDeIdentificacao: numeroDeIdentificacao)
    }
    
    override func temCapacidadeDisponivel() -> Bool {
        if listaExemplar.count >= 15 {
            return false
        } else {
            return true
        }
    }
    override func pegarExemplar(umExemplar: ExemplarBiblioteca)   {
        if listaExemplar.count == 15 {
            print("Você não pode pegar mais livros")
        } else {
            listaExemplar.append(umExemplar)
        }
    }
}
