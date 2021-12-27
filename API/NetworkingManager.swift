//
//  NetworkingManager.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 24/05/21.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject {
    
    var didChange = PassthroughSubject<NetworkingManager, Never>()  //enviar y recibir información , never no retorna nada
    
    @Published var userList = UserList(data: [])
    {
        //property observers: 'funcion' que ejecuta algo cuando nuestras variables cambian de valor
        didSet
        {//se ejecuta cuando la variable ya cambió
            didChange.send(self)
        }
    }
    
    
    init()
    {
        guard let url = URL(string: "http://64.227.107.216:5000/api/clientes") else { return  }
        
        URLSession.shared.dataTask(with: url) { (data, response, _) in
            
            if let response = response{
                print(response)
            }
            do
            {
                guard let data = data else { return }
                let users = try JSONDecoder().decode(UserList.self, from: data)
                print(users)
                DispatchQueue.main.async {
                    self.userList = users
                }
            }
            catch let error as NSError
            {
                print("No funciona la API", error.localizedDescription)
            }
            
            
        }.resume()
    }
    
}


