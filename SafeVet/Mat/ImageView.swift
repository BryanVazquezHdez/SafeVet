//
//  ImageView.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 14/03/21.
//

import SwiftUI

struct ImageView: View {
    var body: some
    View
    {
        ZStack
        {
            Color.blue.ignoresSafeArea()
            Image("SafeVet").resizable().padding(40).shadow(color: Color.black,radius: 5).frame(width: 250, height: 250 ).background(Color.white).clipShape(Circle()).overlay(Circle().stroke(Color.black,lineWidth: 2)).shadow(color: Color.black,radius: 5)
        }
    }
}


//preview en vivo
struct ImageView_Previews:
PreviewProvider
{
    static var previews: some View{
        Group {
            ImageView()

        }
    }
}
