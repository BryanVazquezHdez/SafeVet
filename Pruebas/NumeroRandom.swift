//
//  File.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 17/04/21.
//

import Foundation
import SwiftUI
import Combine

class NumeroRandom: ObservableObject {
   @Published var numero = 0
   @Published var contador = 0
    var timer = Timer()
    init()
    {
        iniciar()
    }
    
    func iniciar()
    {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ (timer) in
            self.numero = Int.random(in: 0..<5)

            }
    }
    
    func detener()
    {
        timer.invalidate()
    }


}
    
   
    

