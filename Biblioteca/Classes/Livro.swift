//
//  Livro.swift
//  Biblioteca
//
//  Created by Thiago B Claramunt on 25/04/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

protocol ColecaoLivros {
    static func adicionar(umExemplar : ExemplarBiblioteca) -> Void
    static func temExemplaresDisponíveis(numeroID: Int) -> Bool
    static func temExemplaresDisponíveis(nomeDoLivro: String) -> Bool
    static func temExemplaresDisponíveis(nomeDoAutor: String) -> Bool
    static func temExemplaresDisponíveis(isbn: Int) -> Bool
    static func removerExemplar() -> ExemplarBiblioteca
    static func receber(umExemplar: ExemplarBiblioteca) -> Void
    
}

class Livro: ColecaoLivros {
    var nomeDoLivro: String
    var isbn: Int
    var autor: String
    
    init(nomeDoLivro: String, isbn: Int, autor: String) {
        self.nomeDoLivro = nomeDoLivro
        self.isbn = isbn
        self.autor = autor
    }
    
    static func adicionar(umExemplar: ExemplarBiblioteca) {
        return ExemplarBiblioteca.listaDeExemplares.append(umExemplar)
    }
    
    
    static func temExemplaresDisponíveis(numeroID: Int) -> Bool {
        let numeroDeIdentificacaoFiltrado: [Int] = ExemplarBiblioteca.listaDeExemplares.compactMap({$0.numeroDeIdentificacao})
        let exemplarProcurado = numeroDeIdentificacaoFiltrado.contains {$0 == numeroID}
        
        return exemplarProcurado
    }
    
    static func temExemplaresDisponíveis(nomeDoLivro: String) -> Bool {
        let numeroDeIdentificacaoFiltrado: [String] = ExemplarBiblioteca.listaDeExemplares.compactMap({$0.livro.nomeDoLivro})
        let exemplarProcurado = numeroDeIdentificacaoFiltrado.contains {$0 == nomeDoLivro}
        
        return exemplarProcurado
    }
    
    static func temExemplaresDisponíveis(nomeDoAutor: String) -> Bool {
        let numeroDeIdentificacaoFiltrado: [String] = ExemplarBiblioteca.listaDeExemplares.compactMap({$0.livro.autor})
        let exemplarProcurado = numeroDeIdentificacaoFiltrado.contains {$0 == nomeDoAutor}
        
        return exemplarProcurado
    }
    
    static func temExemplaresDisponíveis(isbn: Int) -> Bool {
        let numeroDeIdentificacaoFiltrado: [Int] = ExemplarBiblioteca.listaDeExemplares.compactMap({$0.livro.isbn})
        let exemplarProcurado = numeroDeIdentificacaoFiltrado.contains {$0 == isbn}
        
        return exemplarProcurado
    }
    
    static func removerExemplar() -> ExemplarBiblioteca {
        let removerExemplar = ExemplarBiblioteca.listaDeExemplares.remove(at: 0)
        return removerExemplar
    }
    
    static func receber(umExemplar: ExemplarBiblioteca) {
        return ExemplarBiblioteca.listaDeExemplares.append(umExemplar)
    }
    
}
