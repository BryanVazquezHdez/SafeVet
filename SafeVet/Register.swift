//
//  Register.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 16/03/21.
//

import SwiftUI

struct Register: View {
    @State private var nombre = ""
    @State private var appat  = ""
    @State private var apmat  = ""
    @State private var tel    = ""
    @State private var dom    = ""
    @State private var sexo   = ""
    @State private var fechna = ""
    @State private var correo = ""
    @State private var password = ""
    @State private var sexIndex = 0
    @State private var birthDate = Date()
    
    var body: some View {
        
       ScrollView
       {

        
        VStack
        {
        Image("SafeVetLat").resizable().frame(width: 200, height: 100, alignment: .top)
        }
        Spacer()
            VStack
            {
                VStack
                {
                    
                
            
                //NOMBRE
            HStack
            {
                
            VStack(alignment: .leading, spacing: 12, content:
            {
                Spacer()
                Text("Nombre")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
            }).padding(.horizontal,10)
            
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
            }.padding(5)
            .padding(.leading,15)
            
            HStack
            {
                Image(systemName: "person.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 30)
                
                TextField("Nombre", text: $nombre)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding(.horizontal,30)
            
                
                //APELLIDO PATERNO
            
            HStack
            {
            VStack(alignment: .leading, spacing: 12, content:
            {
                Text("Apellido paterno")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
            }).padding(.horizontal,10)
            
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
            }.padding(5)
            .padding(.leading,15)
            
            HStack
            {
                Image(systemName: "person.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 35)
                
                TextField("Apellido Paterno", text: $appat)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding(.horizontal,30)
            .padding(.bottom)
            
                
                //APELLIDO MATERNO
            
            HStack
            {
            VStack(alignment: .leading, spacing: 12, content:
            {
                Text("Apellido materno")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
            }).padding(.horizontal,10)
            
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
            }.padding(5)
            .padding(.leading,15)
            
            HStack
            {
                Image(systemName: "person.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 35)
                
                TextField("Apellido materno", text: $apmat)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding(.horizontal,30)
            .padding(.bottom)
                
                
            //TELÉFONO
                HStack
                {
                VStack(alignment: .leading, spacing: 12, content:
                {
                    Text("Teléfono")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }).padding(.horizontal,10)
                
                    
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
                }.padding(5)
                .padding(.leading,15)
                
                HStack
                {
                    Image(systemName: "phone.bubble.left.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    TextField("Teléfono", text: $tel)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal,30)
                .padding(.bottom)
                
                
                //DOMICILIO
                VStack
                {
                    
                    //DOMICILIO
                    HStack
                    {
                    VStack(alignment: .leading, spacing: 12, content:
                    {
                        Text("Domicilio")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                    }).padding(.horizontal,10)
                    
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                    }.padding(5)
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "house")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        TextField("Domicilio", text: $dom)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                    //SEXO
                    HStack
                    {
                    VStack(alignment: .leading, spacing: 12, content:
                    {
                        Text("Sexo")
                            .font(.title3)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.black)
                        
                    }).padding(.horizontal,10)
                    
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                    }.padding(5)
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "figure.wave")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        Section
                        {
                        Picker(selection: $sexIndex, label: Text("Sexo")){
                            
                            Text("Masculino").foregroundColor(Color.white.opacity(0.9)).tag(1)
                            Text("Femenino").foregroundColor(Color.white.opacity(0.9)).tag(2)
                        }.frame(width: 220, height: 30)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                    
                    //Fecha de nacimiento
                    HStack
                    {
                    VStack(alignment: .leading, spacing: 12, content:
                    {
                        Text("Fecha de nacimiento")
                            .font(.title3)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.black)
                        
                    }).padding(.horizontal,10)
                    
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                    }.padding(5)
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "calendar")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        Section
                        {
                            DatePicker("Fecha de nacimiento", selection: $birthDate, in: ...Date(), displayedComponents: .date)
                        
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                    //Correo
                    HStack
                    {
                    VStack(alignment: .leading, spacing: 12, content:
                    {
                        Text("Correo")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                    }).padding(.horizontal,10)
                    
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                    }.padding(5)
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "mail")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        TextField("Correo", text: $correo)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    //CONTRASEñA
                    
                    VStack
                    {
                    
                    HStack
                    {
                    VStack(alignment: .leading, spacing: 12, content:
                    {
                        Text("Contraseña")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                    }).padding(.horizontal,10)
                    
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                    }.padding(5)
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "lock.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        SecureField("Contraseña", text:$password )
                    }
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                        VStack
                        {
                        Button(action: {
                        }, label: {
                            Text("Registrarse")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 150)
                                .background(Color("blue"))
                                .clipShape(Capsule())
                            
                        })
                        .padding(.vertical)
                        }
                    }
                    
                    
                }
                
                
               
                
                
            }
            }.background(Color.white).padding(.horizontal,30).cornerRadius(60)

            
        
    }.background(Color("blue").ignoresSafeArea(.all,edges: .all))
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        
            Register()
        
    }
}
