//
//  Profile.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 28/04/21.
//

import SwiftUI

struct Profile: View {
    
    @ObservedObject var networkingManager = NetworkingManager()
    
    init() {
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0.7445648313, blue: 0.9996808171, alpha: 1) // Uses UIColor
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0, green: 0.7445648313, blue: 0.9996808171, alpha: 1)
        
        
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                VStack(alignment: .center) {
                    Text("Perfil")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.black)
                        .bold()
                        .padding(.bottom,10)

                    Image("SafeVet")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .clipShape(Circle())
                    
                }.padding(.bottom,20)
                
                VStack {
                    
                    List(self.networkingManager.userList.data, id: \.id)
                    { user in
                        
                        VStack(alignment: .leading)
                        {
                            Text("Nombre: ")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            
                            Text(user.nombre)
                                .font(.title)
                                .padding(.bottom,10)
                            Text("Apellidos: ")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            Text(user.apellido)
                                .font(.title)
                                .padding(.bottom,10)
                            Text("Fecha de Nacimiento: ")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            Text(CustomDateFormatter.createDefault(dateString: user.fechaNacimiento) )
                                .font(.title)
                                .padding(.bottom,10)
                            Text("Nombre de usuario: ")
                                .font(.title)
                                .bold()
                            Text(user.usuario)
                                .font(.title)
                                .padding(.bottom,10)
                            VStack(alignment:.leading)
                            {
                                Text("Numero de telefono: ")
                                    .font(.title)
                                    .bold()
                                Text(user.telefono)
                                    .font(.title)
                                    .padding(.bottom,10)
                                Text("Correo asociado: ")
                                    .font(.title)
                                    .bold()
                                Text(user.correo)
                                    .font(.title)
                                    .padding(.bottom,10)
                                Text("Estatus: ")
                                    .font(.title)
                                    .bold()
                                Text(user.estatus)
                                    .font(.title)
                                    .padding(.bottom,10)
                                Text("Sexo: ")
                                    .font(.title)
                                    .bold()
                                Text(user.sexo)
                                    .font(.title)
                                    .padding(.bottom,10)
                                VStack(alignment: .leading)
                                {
                                    Text("Estado: ")
                                        .font(.title)
                                        .bold()
                                    Text(user.domicilio.estado)
                                        .font(.title)
                                        .padding(.bottom,10)
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Text("Ciudad: ")
                                            .font(.title)
                                            .bold()
                                        Text(user.domicilio.ciudad)
                                            .font(.title)
                                            .padding(.bottom,10)
                                        Text("Numero de casa: ")
                                            .font(.title)
                                            .bold()
                                        Text(user.domicilio.numero)
                                            .font(.title)
                                            .padding(.bottom,10)
                                        
                                        VStack(alignment: .leading)
                                        {
                                            Text("Codigo Postal: ")
                                                .font(.title)
                                                .bold()
                                            Text(user.domicilio.codigoPostal)
                                                .font(.title)
                                                .padding(.bottom,10)
                                            Text("Colonia: ")
                                                .font(.title)
                                                .bold()
                                            Text(user.domicilio.colonia)
                                                .font(.title)
                                                .padding(.bottom,10)
                                            Text("Calle: ")
                                                .font(.title)
                                                .bold()
                                            Text(user.domicilio.calle)
                                                .font(.title)
                                                .padding(.bottom,30)
                                        }
                                        
                                    }
                                }
                                
                            }
                            
                        }.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                }.background(Color.white)
                
                
            }.background(Color("blue"))
            
        }        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
    
    
    
    
    struct Profile_Previews: PreviewProvider {
        static var previews: some View {
            Profile()
        }
    }
}
