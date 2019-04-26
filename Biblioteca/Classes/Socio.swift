//
//  Socio.swift
//  Socio
//
//  Created by Thiago B Claramunt on 25/04/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

protocol Emprestimos {
    func pegarExemplar(umExemplar: ExemplarBiblioteca) -> Void
    func temCapacidadeDisponivel() -> Bool
    func devolver(umExemplar : ExemplarBiblioteca) -> Void
}

class Socio: Emprestimos {
   
    var nome: String
    var sobrenome: String
    var numeroDeIdentificacao: Int
    var listaExemplar: [ExemplarBiblioteca] = []
    
    
    init(nome: String, sobrenome: String, numeroDeIdentificacao: Int) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.numeroDeIdentificacao = numeroDeIdentificacao
    }
    
    func pegarExemplar(umExemplar: ExemplarBiblioteca)   {
        if listaExemplar.count == 3 {
            print("Você não pode pegar mais livros")
        } else {
            listaExemplar.append(umExemplar)
        }
    }
    
    func temCapacidadeDisponivel() -> Bool {
        if listaExemplar.count >= 3 {
            return false
        } else {
            return true
        }
    }

    func devolver(umExemplar : ExemplarBiblioteca) -> Void {
//        listaExemplar.filter({$0 != umExemplar})
        var listaExemplarFiltrada: [ExemplarBiblioteca] = listaExemplar.compactMap({$0})
        
    }
    
    
}
