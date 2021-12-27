//
//  Usuarios.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 20/05/21.
//

import Foundation

class users : ObservableObject{
    @Published var nombre = ""
    @Published   var app  = ""
    @Published  var tel    = ""
    @Published  var ciudad    = ""
    @Published  var estado    = ""
    @Published  var calle    = ""
    @Published  var colonia    = ""
    @Published  var cp    = ""
    @Published  var noextint    = ""
    @Published  var sexo   = ""
    @Published   var fechna = ""
    @Published   var correo = ""
    @Published   var username = ""
    @Published var password = ""
    @Published  var sexIndex = 0
    @Published  var birthDate = Date()
    @Published  var rol    = ""
}
var elementoCesta = users()
