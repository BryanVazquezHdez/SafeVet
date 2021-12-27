//
//  mascotas_view.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 14/05/21.
//

import SwiftUI

struct pet_view: View {
    
//    @ObservedObject var networkingManager = NetworkingManager()
    @ObservedObject var petManager = PetManager()
    @State var modal2 = false
    @State var modal3 = false
    
    init() {
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0.7445648313, blue: 0.9996808171, alpha: 1) // Uses UIColor
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0, green: 0.7445648313, blue: 0.9996808171, alpha: 1)
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                VStack
                {
                    Text("Administrar Mascotas")
                        .font(.title)
                        .bold()
                        .padding(.top,15)
                        .padding(.bottom,30)
                    
                    
                    VStack
                    {
                        ForEach(self.petManager.petList.data, id: \.id)
                        { pet in
                            VStack(alignment: .leading)
                            {

                                Text("Nombre: \(pet.nombre)")
                                Text("Especie: \(pet.especie)")
                                Text("Edad: \(pet.edad)")
                                Text("Caracteristicas: \(pet.caracteristicas)")
                                VStack(alignment: .leading)
                                {
                                    Text("Creado: \(CustomDateFormatter.createDefault(dateString: pet.creado))")
                                    Text("Estatus: \(pet.estatus)")
                                    Text("Altura: \(pet.altura)")
                                }
                            }.padding()
                            .frame(width: 350, height: 160, alignment: .leading)
                            .background(Color.white)

                        }.padding()
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                    }
                    
                }
                
                ZStack
                {
                    Spacer()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                self.modal2.toggle()
                            }, label: {
                                Text("Ver Expedientes")
                                    .foregroundColor(Color.white)
                                    .font(.title3)
                                    .bold()
                                    .shadow(radius:10 )
                                Image(systemName: "newspaper.fill")
                                    
                                    .font(.title)
                                    .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color.white)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    .shadow(radius:10 )
                            }).sheet(isPresented: self.$modal2, content: {
                                expedientes_view()
                            })
                            .padding(.horizontal)
                            .shadow(radius: 2 )
                        }
                    }
                }.padding(.bottom,40)
                
            }.background(Color("blue")).ignoresSafeArea(.all, edges: .bottom)
            
        }
        
    }
}




struct mascotas_view_Previews: PreviewProvider {
    static var previews: some View {
        pet_view()
    }
}


