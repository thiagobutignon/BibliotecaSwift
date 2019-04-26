//
//  main.swift
//  Biblioteca
//
//  Created by Thiago B Claramunt on 25/04/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

var livro1: Livro = Livro(nomeDoLivro: "Mate-me quando Quiser", isbn: 1, autor: "Anita Deak")
var livro2: Livro = Livro(nomeDoLivro: "No fundo do Oceano, os animais invísiveis", isbn: 2, autor: "Anita Deak")
var livro3: Livro = Livro(nomeDoLivro: "Como nasceu o Coaching", isbn: 3, autor: "Thiago Butignon")

var socio1: Socio = Socio(nome: "Thiago", sobrenome: "Butignon", numeroDeIdentificacao: 359123)
var socio2: Socio = Socio(nome: "Anita", sobrenome: "Butignon", numeroDeIdentificacao: 345641)
var socio3: Socio = Socio(nome: "Bruno", sobrenome: "Barreira", numeroDeIdentificacao: 345162)

var vip1: SocioVip = SocioVip(nome: "Thiago", sobrenome: "Claramunt", numeroDeIdentificacao: 123188, mensalidade: 10)

var vip2: SocioVip = SocioVip(nome: "Anita", sobrenome: "Claramunt", numeroDeIdentificacao: 1312111, mensalidade: 10)

var exemplar1: ExemplarBiblioteca = ExemplarBiblioteca(livro: livro1, numeroDaEdicao: 1, localizacao: "Ala A", numeroDeIdentificacao: 1111)

var exemplar2: ExemplarBiblioteca = ExemplarBiblioteca(livro: livro1, numeroDaEdicao: 1, localizacao: "Ala A", numeroDeIdentificacao: 3213)

var exemplar3: ExemplarBiblioteca = ExemplarBiblioteca(livro: livro2, numeroDaEdicao: 1, localizacao: "Ala B", numeroDeIdentificacao: 1233)
var exemplar4: ExemplarBiblioteca = ExemplarBiblioteca(livro: livro2, numeroDaEdicao: 1, localizacao: "Ala B", numeroDeIdentificacao: 2233)

var exemplar5: ExemplarBiblioteca = ExemplarBiblioteca(livro: livro3, numeroDaEdicao: 2, localizacao: "Ala C", numeroDeIdentificacao: 3333)
var exemplar6: ExemplarBiblioteca = ExemplarBiblioteca(livro: livro3, numeroDaEdicao: 2, localizacao: "Ala C", numeroDeIdentificacao: 4444)


Livro.adicionar(umExemplar: exemplar1)
Livro.adicionar(umExemplar: exemplar2)
Livro.adicionar(umExemplar: exemplar3)
Livro.adicionar(umExemplar: exemplar4)
Livro.adicionar(umExemplar: exemplar5)
Livro.adicionar(umExemplar: exemplar6)

print("Sócio 1: \(socio1.pegarExemplar(umExemplar: exemplar1))")
print("\(socio1.pegarExemplar(umExemplar: exemplar2))")
print("\(socio1.pegarExemplar(umExemplar: exemplar3))")
print("\(socio1.pegarExemplar(umExemplar: exemplar4)) \n")


print("Sócio 2: \(socio2.pegarExemplar(umExemplar: exemplar1)) \n")

print(Livro.temExemplaresDisponíveis(numeroID: 3333))
print(Livro.temExemplaresDisponíveis(numeroID: 1))
print(Livro.temExemplaresDisponíveis(nomeDoLivro: "Como nasceu o Coaching"))
print(Livro.temExemplaresDisponíveis(nomeDoLivro: "Mate-me"))
print(Livro.temExemplaresDisponíveis(nomeDoAutor: "Anita Deak"))
print(Livro.temExemplaresDisponíveis(nomeDoAutor: "Anita Butignon"))
print(Livro.temExemplaresDisponíveis(isbn: 1))
print(Livro.temExemplaresDisponíveis(isbn: 10))

print(Livro.removerExemplar())

dump(ExemplarBiblioteca.listaDeExemplares)

Livro.receber(umExemplar: exemplar1)

dump(ExemplarBiblioteca.listaDeExemplares)

print("Socio 1 tem capacidade? \(socio1.temCapacidadeDisponivel())")
print("Socio 2 tem capacidade? \(socio2.temCapacidadeDisponivel())")
