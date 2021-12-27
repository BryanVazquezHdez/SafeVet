//
//  PetManager.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 05/06/21.
//

import Foundation
import SwiftUI
import Combine

class PetManager: ObservableObject {
    
    var didChange = PassthroughSubject<PetManager, Never>()  //enviar y recibir información , never no retorna nada
    
    @Published var petList = PetList(data: [])
    {
        //property observers: 'funcion' que ejecuta algo cuando nuestras variables cambian de valor
        didSet
        {//se ejecuta cuando la variable ya cambió
            didChange.send(self)
        }
    }
    
    
    init()
    {
        guard let url = URL(string: "http://64.227.107.216:5000/api/mascotas") else { return  }
        
        URLSession.shared.dataTask(with: url) { (data, response, _) in
            
            if let response = response{
                print(response)
            }
            do
            {
                guard let data = data else { return }
                let users = try JSONDecoder().decode(PetList.self, from: data)
                print(users)
                DispatchQueue.main.async {
                    self.petList = users
                }
            }
            catch let error as NSError
            {
                print("No funciona la API", error.localizedDescription)
            }
            
            
        }.resume()
    }
    
}


