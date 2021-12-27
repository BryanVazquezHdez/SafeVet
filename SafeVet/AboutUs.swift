//
//  AboutUs.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 27/05/21.
//

import SwiftUI

struct AboutUs: View {
    
    @ObservedObject var petManager = PetManager()
    
    
    var body: some View {
    
        
        ScrollView {
            VStack {
                Text("Nosotros: Safevet©")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.bottom,20)
                
                HStack
                {
                    Image(systemName: "pencil.circle")
                    Text("Desarrollado por estudiantes pertenecientes al Tecnológico Nacional de México Campus Culiacán.")
                    
                }.frame(width: 400).padding(.top,30)
                .padding(.bottom,30)
                .background(Color.white)
                .cornerRadius(20.0)
                
                VStack
                {
                    Text("")
                }.padding(2)
                
                VStack
                {
                    Text("Alumnos en este proyecto: ")
                        .font(.title2)
                        .bold()
                        .padding(.bottom,10)
                    
                    Text("Vazquez Hernandez Bryan Alexander")
                        .padding(.bottom,10)
                    Text("Encargado de desarrollar app de iOS")
                        .bold()
                        .padding(.bottom,40)
                    
                    Text("Rodriguez Ortiz Jose")
                        .padding(.bottom,10)
                    Text("Galvez Parra Kevin")
                        .padding(.bottom,10)
                    Text("Encargados de desarrollar app de Android")
                        .bold()
                        .padding(.bottom,40)
                    
                    Text("Borbón Monarrez Geralld")
                        .padding(.bottom,10)
                    Text("Gamiz Aispuro Edna Zuleika")
                        .padding(.bottom,10)
                    Text("Encargados de desarrollar documentación")
                        .bold()
                        .padding(.bottom,40)
                    
                    VStack
                    {
                        Text("Ochoa Miguel")
                            .padding(.bottom,10)
                        Text("Encargado de desarrollar API")
                            .bold()
                            .padding(.bottom,40)
                        
                        Text("Madrigal Adrián")
                            .padding(.bottom,10)
                        Text("Encargado de desarrollar plataforma web")
                            .bold()
                            .padding(.bottom,40)
                    }
                    
                }.frame(width: 400, height:700, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                .cornerRadius(80.0)
                

            }.padding(.top, 150)
        }.frame(width: 450)
        .background(Color("blue")).ignoresSafeArea(.all,edges: .all)
        
    }
    
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
