//
//  login1.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 16/03/21.
//

import SwiftUI

struct login1: View
{
    
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        
      
        NavigationView
        {
           Home()
                .preferredColorScheme(.light)
                .navigationBarHidden(false)
        }
    }
}

struct Home : View
{
    @State private var showAlert : Bool = false
    
    var alert : Alert
    {
        Alert(title: Text(username), message: Text(password), dismissButton:.default(Text("Aceptar")))
    }
        
     @State var username = ""
     @State var password = ""

    
    
    var body : some View
    {
        
            VStack(alignment: .center)
            {  
                
                Image("logoalt")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    //frame dinámico
                    .padding(.horizontal,35)
                    .padding(.vertical)
                VStack
                {
                    HStack
                    {
                        VStack(alignment: .leading, spacing: 12, content:
                                {
                                    
                                    Text("Inicio de sesión")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    
                                    
                                    Text("Inicie sesión para continuar")
                                        .foregroundColor(Color.black.opacity(0.5))
                                    
                                    
                                })
                        
                        Spacer(minLength: 0)
                        
                        
                    }
                    .padding()
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "person.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        TextField("Usuario", text: $username).foregroundColor(.black)
                            .autocapitalization(.none)
                    }
                    .padding()
                    .background(Color.gray.opacity( 0.2))
                    .cornerRadius(3.0)
                    .padding(.horizontal,30)
                    
                    
                    HStack
                    {
                        Image(systemName: "lock")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        SecureField("Contraseña", text: $password).foregroundColor(.black)
                            .autocapitalization(.none)
                    }
                    .padding()
                    .background(Color.gray.opacity( 0.2))
                    .cornerRadius(3.0)
                    .padding(.horizontal,30)
                    .padding(.top)
                    
                    HStack
                    {
                        Button(action: {
                            self.showAlert.toggle()
                            
                        }, label: {
                            
                            NavigationLink(destination: Principal().navigationBarBackButtonHidden(true))
                            {
                            Text("Iniciar sesión")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 150)
                                .background(Color("blue"))
                                .clipShape(Capsule())
                            }.navigationBarBackButtonHidden(true)
                        })
                        .padding(.top)
                    }.alert(isPresented: self.$showAlert) { () -> Alert in self.alert
                        
                    }
                    
                    //olvidé mi contra xd
                    
                    Button(action: {}, label: {
                        Text("¿Olvidaste tu contraseña?")
                            .fontWeight(.regular)
                            .foregroundColor(Color("grey"))
                    })
                    .padding(.top,8)
                    
                    
                    
                    
                    //registro
                    
                    HStack (spacing: 5)
                    {
                        Text("¿No estás registrado?")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black.opacity(0.9))
                        
                        
                        Button(action: {}, label: {
                            NavigationLink(
                                destination: Register()){
                                Text("¡Regístrate!")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("blue"))
                            }
                            
                            
                            
                        })
                    }
                    .padding(.vertical)

                    
                }.background(Color.white)
                .padding(.horizontal,40)
                .padding(.vertical)
                .padding(.bottom,70)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Spacer(minLength: 10)
                
                Spacer()
            }
            .background(Color("blue").ignoresSafeArea(.all,edges: .all))
            
        
        
        
        
        
    }
}

struct login1_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            
    }
}
