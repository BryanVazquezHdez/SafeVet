//
//  expedientes_view.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 19/05/21.
//

import SwiftUI

struct expedientes_view: View {
    
    @ObservedObject var expManager = ExpManager()
    
    var body: some View {
        ScrollView
        {
            VStack
            {
                Text("Expedientes")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }.background(Color("blue"))
            .ignoresSafeArea()
            .padding(.bottom,50)
            .padding(.top,50)
            
            
            VStack {
                HStack
                {
                    ForEach(expManager.expList.data, id: \.id)
                    { user in
                        Image(systemName: "heart.text.square.fill")
                        Text("Dr. \(user.empleado?.nombre ?? "")")
                        Text(user.empleado?.apellido ?? "")
                    }
                    
                }.padding(.bottom,10)
                
                HStack
                {

                    Image(systemName: "hare.fill")
                    Text("Nombre de mascota: ")
                    ForEach(expManager.expList.data, id: \.id)
                    { user in
                        Text(user.mascota?.nombre ?? "")
                    }
                    
                }.padding(.bottom,10)
                
                VStack (alignment: .center)
                {
                    HStack
                    {
                        Image(systemName: "cross.case.fill")
                        Text("Diagnóstico:")
                            .bold()
                    }.padding(.bottom,20)
                    
                    VStack
                    {
                        ForEach(expManager.expList.data, id: \.id)
                        { user in
                            Text(user.diagnostico ?? "")
                        }
                    }.padding(30)
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                }.padding(.bottom,15)
                
                VStack (alignment: .center)
                {
                    HStack
                    {
                        Image(systemName: "cross.case.fill")
                        Text("Anotaciones y recomendaciones:")
                            .bold()
                    }.padding(.bottom,20)
                    
                    VStack
                    {
                        ForEach(expManager.expList.data, id: \.id)
                        { user in
                            Text(user.anotaciones ?? "")
                        }
                    }.padding(30)
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                    
                    
                }.padding(.bottom, 15)
                
                
                
                

                
            }.padding()
            .background(Color.white)
            .padding(.horizontal,50)
            .cornerRadius(60)
            .padding(.bottom,40)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            

            
           
            
        }.background(Color("blue")
        .ignoresSafeArea(.all,edges: .all))
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct expedientes_view_Previews: PreviewProvider {
    static var previews: some View {
        expedientes_view()
    }
}
