//
//  Register.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 16/03/21.
//

import SwiftUI

struct Register: View {
    
    @ObservedObject var user = users()
    
    var body: some View {
        
        ScrollView
        {
            VStack
            {
                Image("SafeVetLat").resizable().frame(width: 200, height: 100, alignment: .top)
            }
            
            VStack
            {
                Text("Registro")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }.padding(.bottom,15)
            
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
                        
                        TextField("Nombre", text: $user.nombre)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    
                    
                    //APELLIDOS
                    
                    HStack
                    {
                        VStack(alignment: .leading, spacing: 12, content:
                                {
                                    Text("Apellidos")
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
                        
                        TextField("Apellido Paterno", text: $user.app)
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
                        
                        TextField("Ej. 6671 23 4567", text: $user.tel)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                    
                    //DOMICILIO
                    VStack
                    {
                        
                        //Estado
                        HStack
                        {
                            VStack(alignment: .leading, spacing: 12, content:
                                    {
                                        Text("Estado")
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
                            
                            TextField("Ej. Sinaloa", text: $user.estado)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,30)
                        .padding(.bottom)
                        
                        
                        //Ciudad
                        
                        HStack
                        {
                            VStack(alignment: .leading, spacing: 12, content:
                                    {
                                        Text("Ciudad")
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
                            
                            TextField("Ej. Culiacán", text: $user.ciudad)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,30)
                        .padding(.bottom)
                        
                        //CALLE
                        
                        VStack
                        {
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Calle")
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
                                
                                TextField("Ej. Isla del socorro ", text: $user.calle)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,30)
                            .padding(.bottom)
                            
                            
                            
                            //Colonia
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Colonia")
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
                                
                                TextField("Ej. Las Quintas", text: $user.colonia)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,30)
                            .padding(.bottom)
                            
                            
                            //Codigo postal
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Codigo postal")
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
                                
                                TextField("Ej. 80090", text: $user.cp)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,30)
                            .padding(.bottom)
                            
                            
                            //Numero exterior o interior
                            
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Numero exterior o interior")
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
                                
                                TextField("Ej. 1413", text: $user.noextint)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,30)
                            .padding(.bottom)
                            
                            
                            
                        }
                        
                        
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
                                Picker(selection: $user.sexIndex, label: Text("Sexo")){
                                    
                                    Text("Masculino").foregroundColor(Color.black.opacity(0.9)).tag(1)
                                    Text("Femenino").foregroundColor(Color.black.opacity(0.9)).tag(2)
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
                                DatePicker("Fecha de nacimiento", selection: $user.birthDate, in: ...Date(), displayedComponents: .date)
                                
                            }
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,30)
                        .padding(.bottom)
                        
                        //Correo
                        
                        VStack
                        {
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
                                
                                TextField("Correo", text: $user.correo)
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
                                                Text("Nombre usuario")
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
                                    
                                    SecureField("Ej. bryanvaz14", text:$user.username )
                                }
                                .padding()
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal,30)
                                .padding(.bottom)
                                
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
                                    
                                    SecureField("Contraseña", text:$user.password )
                                }
                                .padding()
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal,30)
                                .padding(.bottom)
                                
                                //ROL
                                
                                HStack
                                {
                                    VStack(alignment: .leading, spacing: 12, content:
                                            {
                                                Text("Rol")
                                                    .font(.title3)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.black)
                                                
                                            }).padding(.horizontal,10)
                                    
                                    
                                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                                    
                                }.padding(5)
                                .padding(.leading,15)
                                
                                HStack
                                {
                                    Image(systemName: "newspaper.fill")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 35)
                                    
                                    Section
                                    {
                                        Picker(selection: $user.rol, label: Text("Sexo")){
                                            
                                            Text("Cliente").foregroundColor(Color.black.opacity(0.9)).tag(1)
                                            Text("Admi").foregroundColor(Color.black.opacity(0.9)).tag(2)
                                            Text("Doctor").foregroundColor(Color.black.opacity(0.9)).tag(3)
                                        }.frame(width: 220, height: 30)
                                    }
                                }
                                .padding()
                                .background(Color.gray.opacity(0.2))
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
                }
            }.background(Color.white)
            .padding(.horizontal,30)
            
            .padding(.bottom,40)
            
            
            
            
        }.background(Color("blue").ignoresSafeArea(.all,edges: .all))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        
        Register().navigationBarHidden(false)
        
    }
}

