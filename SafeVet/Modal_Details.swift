//
//  Moda_Details.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 21/04/21.
//

import SwiftUI

struct Modal_Details: View {
    
    @State private var mascota = ""
    @State private var indMas = ""
    @State private var tpoCta = ""
    @State private var fecha = Date()
    @State private var hora = Int()
    
    var body: some View {
        ScrollView
        {
         
         
         VStack
         {
            Text("")
            Text("Agendar cita")
                .fontWeight(.black)
                .frame(width: 200, height: 50, alignment: .top)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         }
         Spacer()
            
            
            VStack(alignment: .leading, spacing: 12) {
                VStack
                {
                    Text("Mascota")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }.padding(10)
                
                
                HStack
                {
                    Image(systemName: "hare.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    Section
                    {
                        Picker(selection: $indMas, label: Text("Sexo")){
                            
                            Text("Pepito").foregroundColor(Color.black.opacity(0.9)).tag(1)
                            Text("Snoopy").foregroundColor(Color.black.opacity(0.9)).tag(2)
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
                    Text("Tipo de cita")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }.padding(10)
                
                
                HStack
                {
                    Image(systemName: "calendar.circle.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    Section
                    {
                        Picker(selection: $indMas, label: Text("Sexo")){
                            
                            Text("Baño/Corte").foregroundColor(Color.black.opacity(0.9)).tag(1)
                            Text("Atención médica").foregroundColor(Color.black.opacity(0.9)).tag(2)
                        }.frame(width: 220, height: 30)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal,30)
                .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 12){
                    VStack
                    {
                        Text("Fecha")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                    }.padding(10)
                    
                    
                    HStack
                    {
                        Image(systemName: "calendar.circle.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        Section
                        {
                            DatePicker("Fecha de cita", selection: $fecha, in: ...Date(), displayedComponents: .date)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                    
                    VStack
                    {
                        Text("Hora")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                    }.padding(10)
                    
                    
                    HStack
                    {
                        Image(systemName: "clock.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        Section
                        {
                            DatePicker("Hora de cita", selection: $fecha, in: ...Date(), displayedComponents: .hourAndMinute)
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,30)
                    .padding(.bottom)
                
                    }
                
                VStack(alignment: .center, spacing: 12)
                {
                Button(action: {
                }, label: {
                    Text("Agendar cita")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .background(Color("blue"))
                        .clipShape(Capsule())
                    
                })
                .padding(.horizontal,40)
                    
                    Text("")
                }
                
            }.background(Color.white).padding(.horizontal,40).cornerRadius(60)
         
     }.background(Color("blue").ignoresSafeArea(.all,edges: .all))
    }
}

struct Modal_Details_Previews: PreviewProvider {
    static var previews: some View {
        Modal_Details()
    }
}
