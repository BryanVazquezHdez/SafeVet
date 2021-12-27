//
//  NetworkingManager.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 24/05/21.
//

import Foundation
import SwiftUI
import Combine

class AppointManager: ObservableObject {
    
    var didChange = PassthroughSubject<AppointManager, Never>()  //enviar y recibir información , never no retorna nada
    
    @Published var appointList: AppointmentsList? = AppointmentsList(data: nil, horarioData: nil, msg: "")
    {
        //property observers: 'funcion' que ejecuta algo cuando nuestras variables cambian de valor
        didSet
        {//se ejecuta cuando la variable ya cambió
            didChange.send(self)
        }
    }
    
    
    init()
    {
        guard let url = URL(string: "http://64.227.107.216:5000/api/citas") else { return  }
        
        URLSession.shared.dataTask(with: url) { (data, response, _) in
            
            if let response = response{
                print(response)
            }
            do
            {
                guard let data = data else { return }
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                guard let dataDic = json as? Dictionary<String,Any>,
                      let castedDataArrDic = dataDic["data"] as? [Dictionary<String,Any>],
                      let firstDataDic = castedDataArrDic.first else { return }
                
                
                print(firstDataDic)
                
                DispatchQueue.main.async {
                    self.appointList = AppointmentsList(with: firstDataDic)
                    
                }
            }
            catch let error as NSError
            {
                print("No funciona la API", error.localizedDescription)
            }
            
            
        }.resume()
    }
    
}


