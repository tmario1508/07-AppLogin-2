//
//  Modelo.swift
//  07-AppLogin
//
//  Created by Felipe Hernandez on 22/10/21.
//

import Foundation

//MARK: declaración global
var lista : [EntidadUsuario] = []

class EntidadUsuario {
    
    init(usuario:String, password: String) {
        self.usuario =  usuario
        self.password =  password
    }
    
    var usuario : String = ""
    var password: String = ""
    
}
