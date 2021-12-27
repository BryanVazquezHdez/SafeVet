//
//  pets.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 22/05/21.
//

import Foundation

class pets : ObservableObject{
    @Published var nombre = ""
    @Published var tipo = ""
    @Published var raza = ""
    @Published var edad = ""
    @Published var peso = ""
    @Published var altura = ""
    @Published var Status = ""
    @Published var caracteristicas = ""

}
var elementos = pets()

/*
 
 Nombre
 Tipo
 Raza
 Edad
 Peso
 Altura
 Status
 Caracteristicas
 
 */
