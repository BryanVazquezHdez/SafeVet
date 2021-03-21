//
//  login.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 15/03/21.
//

import SwiftUI

struct login: View {
    @State var showDetails = true
    @State var email: String=""
    @State var password: String=""
    
    
    var body: some View
    { 
        
        
        VStack(alignment: .center,
               spacing: 0){
            Image("logoalt").resizable().shadow(color: Color.black, radius: 5) .frame(width: 150, height: 150 ).padding(.top, 100).background(Color.blue)
            ZStack
            {
                Color.blue.ignoresSafeArea()
                Text("").frame(maxWidth:.infinity,
                               maxHeight: 450).overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                                                        .stroke(Color.white, lineWidth: 7))
                    .background(Color.white).padding(50)
                
                
                Spacer()
                
                Text("Usuario").font(.title).fontWeight(.bold).multilineTextAlignment(.leading).frame(width: 290, height: 450, alignment: .topLeading).padding(.top, 50)
                Spacer()
                
                TextField("Introduce tu correo", text:$email).textFieldStyle(RoundedBorderTextFieldStyle()).shadow(color: Color.black,radius: 3 ).frame(width: 290, height: 290, alignment: .topLeading)
                
                Text("Contraseña").font(.title).fontWeight(.bold).multilineTextAlignment(.leading).frame(width: 290, height: 210, alignment: .topLeading).padding(.top, 50)
                
                TextField("Introduce tu contraseña", text:$password).textFieldStyle(RoundedBorderTextFieldStyle()).shadow(color: Color.black,radius: 3 ).frame(width: 290, height: 60, alignment: .topLeading)
              
                
                
                
              
                    
                
 
            }
            
           
        }.background(Color.blue).ignoresSafeArea()
        
    }
    
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
            
            
    }
}
