//
//  Menu.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 21/03/21.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        home().navigationBarHidden(false)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

struct home : View
{
    @State var dark = false
    @State var show = false
    var body: some View
    {
        ZStack(alignment: .leading)
        {
            GeometryReader
            {_ in
                VStack
                {
                    ZStack
                    {
                        HStack
                        {
                            Button(action: {
                                
                                withAnimation(.default)
                                {
                                    self.show.toggle()
                                }
                                
                            })
                            {
                                Image(systemName: "filemenu.and.selection")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding()
                            }
                            Spacer()
                        }
                        
                        Text("Home").padding()
                    }
                    .padding(.top,20)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 15)
                    .overlay(Rectangle().stroke(Color.primary.opacity(0.1),lineWidth: 1).shadow(radius: 3).edgesIgnoringSafeArea(.all))
                   
                    
                    Spacer()
                    
                    Text("Aquí va el main we")
                   
                    Spacer()
                }
                
                
            }
            
            HStack
            {
                menu(dark: self.$dark, show: self.$show)
                    .preferredColorScheme(self.dark ? .dark : .light)
                    .offset(x: self.show ? 0 : -UIScreen.main.bounds.width / 1.5)
                
                Spacer(minLength: 0)
            }
        }
        .padding(5)
        .background(Color.primary.opacity(self.show ? (self.dark ? 0.05 : 0.2) :0))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct menu : View {
    @Binding var dark : Bool
    @Binding var show : Bool
    
    var body: some View
    {
        VStack
        {
            HStack
            {
                Button(action:{
                    
                    withAnimation(.default)
                    {
                        self.show.toggle()
                    }
                    
                }){
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 12, height: 20)
                }
                
                Spacer()
                
                Button(action: {
                    
                }){
                    Image(systemName: "square.and.pencil")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image("SafeVet")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            VStack(spacing: 12)
            {
                Text("Usuario")
                
                Text("SafeVet")
                    .font(.caption)
            }
            .padding(.top,25)
            
            HStack(spacing: 22)
            {
                Image(systemName: "moon.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Modo Oscuro")
                
                Spacer()
                
                Button(action: {
                    self.dark.toggle()
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle=self.dark ? .dark : .light
                }){
                    Image(systemName: "switch.2")
                        
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .rotationEffect(.init(degrees: self.dark ? 180 : 0))
                        
                        
                    
                }
                
            }.padding(.top,25)
            
            Group
            {
                //perfil
                Button(action:{
                    
                }){
                    HStack(spacing: 22)
                    {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.black)
                        Text("Perfil")
                        Spacer()
                    }
                }.padding(.top,25)
                
                //usuarios(?)
                
                Button(action:{
                    
                }){
                    HStack(spacing: 22)
                    {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.black)
                        Text("Usuarios(?)")
                        Spacer()
                    }
                }.padding(.top,25)
                
                //Citas
                Button(action:{
                    
                }){
                    HStack(spacing: 22)
                    {
                        Image(systemName: "calendar.badge.clock")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.black)
                        Text("Citas")
                        Spacer()
                    }
                }.padding(.top,25)
                
                //Expedientes
                Button(action:{
                    
                }){
                    HStack(spacing: 22)
                    {
                        Image(systemName: "archivebox.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.black)
                        Text("Expedientes")
                        Spacer()
                    }
                }.padding(.top,25)
            
                
            }
            
            Spacer()
            
        }
        .foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 1.5)
        .background((self.dark ? Color.black : Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2),lineWidth: 2).shadow(radius: 2)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
       
        
        
    }
}
