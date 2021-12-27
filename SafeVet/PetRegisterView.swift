//
//  PetRegisterView.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 22/05/21.
//

import SwiftUI

struct PetRegisterView: View {
    
    @ObservedObject var pet = pets()
    @State private var indMas = ""
    
    var body: some View {
        ScrollView
        {
            VStack
            {
                Image("SafeVetLat").resizable().frame(width: 200, height: 100, alignment: .top)
                
            }.padding(.bottom)
            
            VStack
            {
                Text("Registrar mascota")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }.padding(.bottom)
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
                        Image(systemName: "hare.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 30)
                        
                        TextField("Ej. Snoopy", text: $pet.nombre)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    
                    
                    //Tipo
                    
                    HStack
                    {
                        VStack(alignment: .leading, spacing: 12, content:
                                {
                                    Text("Tipo")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    
                                }).padding(.horizontal,10)
                        
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                    }.padding(5)
                    .padding(.leading,15)
                    
                    HStack
                    {
                        Image(systemName: "person.fill.questionmark")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        Section
                        {
                            Picker(selection: $indMas, label: Text("Tipo")){
                                
                                Text("Canino").foregroundColor(Color.black.opacity(0.9)).tag(1)
                                Text("Felino").foregroundColor(Color.black.opacity(0.9)).tag(2)
                                Text("Roedor").foregroundColor(Color.black.opacity(0.9)).tag(3)
                            }.frame(width: 250, height: 30)
                        }
                        
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                    
                    
                    
                    VStack
                    {
                        
                        //Raza
                        HStack
                        {
                            VStack(alignment: .leading, spacing: 12, content:
                                    {
                                        Text("Raza")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                        
                                    }).padding(.horizontal,10)
                            
                            
                            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                            
                        }.padding(5)
                        .padding(.leading,15)
                        
                        HStack
                        {
                            Image(systemName: "person.fill.questionmark")
                                .font(.title2)
                                .foregroundColor(.black)
                                .frame(width: 35)
                            
                            TextField("Ej. Basset Hount", text: $pet.raza)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,30)
                        .padding(.bottom)
                        
                        
                        //Edad
                        
                        HStack
                        {
                            VStack(alignment: .leading, spacing: 12, content:
                                    {
                                        Text("Edad (en años)")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                        Text("Si tu mascota tiene menos de un año")
                                        Text("Introduce 1 año")
                                        
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
                            
                            TextField("Ej. 7", text: $pet.edad)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,30)
                        .padding(.bottom)
                        
                        //peso
                        
                        VStack
                        {
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Peso")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.black)
                                            Text("Introduce el peso en Kilogramos")
                                            
                                        }).padding(.horizontal,10)
                                
                                
                                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                                
                            }.padding(5)
                            .padding(.leading,15)
                            
                            HStack
                            {
                                Image(systemName: "plus.slash.minus")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .frame(width: 35)
                                
                                TextField("Ej. 34 ", text: $pet.peso)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,30)
                            .padding(.bottom)
                            
                            
                            
                            //Altura
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Altura")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.black)
                                            Text("Introduce la altura en centímetros")
                                            
                                        }).padding(.horizontal,10)
                                
                                
                                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                                
                            }.padding(5)
                            .padding(.leading,15)
                            
                            HStack
                            {
                                Image(systemName: "textformat.123")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .frame(width: 35)
                                
                                TextField("Ej. 60", text: $pet.altura)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,30)
                            .padding(.bottom)
                            
                            
                            //Status
                            HStack
                            {
                                VStack(alignment: .leading, spacing: 12, content:
                                        {
                                            Text("Status")
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
                                
                                Section
                                {
                                    Picker(selection: $pet.Status, label: Text("Tipo")){
                                        
                                        Text("Vivo").foregroundColor(Color.black.opacity(0.9)).tag(1)
                                        Text("Muerto").foregroundColor(Color.black.opacity(0.9)).tag(2)
                                    }.frame(width: 250, height: 30)
                                }
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
                                            Text("Características físicas")
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
                                
                                TextField("Ej. 1413", text: $pet.caracteristicas)
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
                            }.padding(.bottom,15)
                            
                        }
                        
                    }
                }
            }.background(Color.white)
            .padding(.horizontal,30)            
            .padding(.bottom,40)
            
            
            
            
        }.background(Color("blue").ignoresSafeArea(.all,edges: .all)).shadow(radius: 10)
    }
}

struct PetRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        PetRegisterView()
    }
}
