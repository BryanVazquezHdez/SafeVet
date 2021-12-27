//
//  GetPets.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 26/05/21.
//

//
//  NetworkingManager.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 24/05/21.
//

import Foundation
import SwiftUI
import Combine

class GetPets: ObservableObject {
    
    var didChange = PassthroughSubject<GetPets, Never>()  //enviar y recibir información , never no retorna nada
    
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
        guard let url = URL(string: "http://localhost:5000/api/mascotas") else { return  }
        
        URLSession.shared.dataTask(with: url) { (data, response, _) in
            
            if let response = response{
                print(response)
            }
            do
            {
                guard let data = data else { return }
                let pets = try JSONDecoder().decode(PetList.self, from: data)
                print(pets)
                DispatchQueue.main.async {
                    self.petList = pets
                }
            }
            catch let error as NSError
            {
                print("No funciona la API", error.localizedDescription)
            }
            
            
        }.resume()
    }
    
}


