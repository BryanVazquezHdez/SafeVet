//
//  Mainp.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 17/04/21.
//

import SwiftUI

struct Mainp: View {
    
    @ObservedObject var numerorandom = NumeroRandom()
    var valor = 3
    @State private var nombree = "jorge"
    var body: some View {
        VStack
        {
            Text(self.nombree)
            TextField("Escribe algo", text : self.$nombree)
            Text("\(self.numerorandom.numero)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            if self.numerorandom.numero == self.valor
            {
                Text("Correcto alv")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.green)
            }else
            {
                Text("Incorrecto hijo de la alv")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.red)
            }
            
            Button (action: {
                self.numerorandom.detener()
            })
            {
                HStack
                {
                    Image(systemName: "stop.fill")
                        .foregroundColor(.white)
                    Text("Detener alv")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.red)
            
            Button (action: {
                self.numerorandom.iniciar()
            })
            {
                HStack
                {
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                    Text("Play alv")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.green)
            
            Button (action: {
                self.numerorandom.contador += 1
            })
            {
                HStack
                {
                    Image(systemName: "folder.fill")
                        .foregroundColor(.white)
                    Text("Contador= \(self.numerorandom.contador)")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.yellow)
            
            
            SegundaVista(num: self.$numerorandom.contador)
            
        } //fin de vstack
        
    }
}

struct Mainp_Previews: PreviewProvider {
    static var previews: some View {
        Mainp()
    }
}
