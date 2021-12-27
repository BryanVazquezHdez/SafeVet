//
//  MenuView.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 21/04/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            
            HStack
            {
                Image("logoalt")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }.padding(.top,70)
            .padding(.horizontal,30)
            
            
            HStack {
                HStack{
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    
                    Button(action: {}, label: {
                        NavigationLink(
                            destination: Profile()
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                .navigationBarBackButtonHidden(true)
                        ){
                            Text("Perfil")
                                .foregroundColor(.gray)
                                .font(.title2)
                        }
                    })
                }
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "hare.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Button(action: {}, label: {
                    NavigationLink(
                        destination: pet_view()
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                    ){
                        Text("Mascotas")
                            .foregroundColor(.gray)
                            .font(.title2)
                    }
                })
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "calendar.circle.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Button(action: {}, label: {
                    NavigationLink(
                        destination: Principal()
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    ){
                        Text("Citas")
                            .foregroundColor(.gray)
                            .font(.title2)
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)
                        
                    }
                    
                    
                })
                
                
            }
            .padding(.top, 30)
            //            HStack {
            //                Image(systemName: "archivebox.circle")
            //                    .foregroundColor(.gray)
            //                    .imageScale(.large)
            //
            //                Button(action: {}, label: {
            //                    NavigationLink(
            //                        destination: expedientes_view()
            //                            .navigationBarTitle("")
            //                            .navigationBarHidden(true)
            //                    ){
            //                        Text("Expedientes")
            //                            .foregroundColor(.gray)
            //                            .font(.title2)
            //                            .navigationBarBackButtonHidden(true)
            //                            .navigationBarHidden(true)
            //
            //                    }
            //
            //
            //                })
            //            }
            //            .padding(.top, 30)
            
            HStack {
                Image(systemName: "info.circle.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Button(action: {}, label: {
                    NavigationLink(
                        destination: AboutUs()
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    ){
                        Text("About SafeVet")
                            .foregroundColor(.gray)
                            .font(.title2)
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)
                        
                    }
                    
                    
                })
            }
            .padding(.top, 480)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
