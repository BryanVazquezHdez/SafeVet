//
//  SegundaVista.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 17/04/21.
//

import SwiftUI

struct SegundaVista: View {
    
    @Binding var num : Int
    
    var body: some View {
        VStack {
            Text("SEGUNDA VISTA")
            Button (action: { self.num += 1
            })
            {
                HStack
                {
                    Image(systemName: "play")
                        .foregroundColor(.black)
                    Text("CONTADOR =\(self.num)")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.blue)
        }
    }
}

struct SegundaVista_Previews: PreviewProvider {
    static var previews: some View {
        SegundaVista(num: .constant(0))
    }
}
