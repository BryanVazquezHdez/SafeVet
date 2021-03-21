//
//  ContentView.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 11/03/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,
               spacing: 20) {
            Text("¡Hola Mundo!")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .padding()
                .background(Color.gray)
            
            Spacer()
            ZStack
            {
                Text("").frame(maxWidth:.infinity,
                     maxHeight: .infinity)
                    .background(Color.gray).padding(20)
                Text("").frame(maxWidth:.infinity,
                               maxHeight: .infinity)
                              .background(Color.red).padding(40)
                Text("").frame(maxWidth:.infinity,
                               maxHeight: .infinity)
                              .background(Color.blue).padding(60)
                Text("").frame(maxWidth:.infinity,
                               maxHeight: .infinity)
                              .background(Color.yellow
                              ).padding(80)
            }
            
            HStack{
            Text("Bienvenido :3")
                .foregroundColor(Color.blue)
                .padding()
            
            Spacer()
                
            Text("hola")
                
                .foregroundColor(Color.yellow)
                .padding()
        }.background(Color.gray)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
