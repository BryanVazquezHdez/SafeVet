//
//  Principal.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 18/04/21.
//

import SwiftUI

struct Principal: View
{
    
    @State var showMenu = false
    
    
    var body: some View
    {
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            ZStack {
                Color("blue").ignoresSafeArea()
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        MainView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                        if self.showMenu {
                            MenuView()
                                .frame(width: geometry.size.width/2)
                                .transition(.move(edge: .leading))
                        }
                    }
                    .gesture(drag)
                }
            }
            
            
        }.background(Color.black)
        
        .navigationBarTitle("Citas", displayMode: .inline)
        .navigationBarItems(leading: (
            Button(action: {
                withAnimation {
                    self.showMenu.toggle()
                }
            }) {
                
                Image(systemName: "line.horizontal.3")
                    .imageScale(.large)
            }
        ))
        
    }
}

struct MainView: View {
    
    @State  var modal = false
    @Binding var showMenu: Bool
    
    var body: some View
    {
        VStack(alignment: .center)
        {
            
            VStack(alignment: .center)
            {
                VStack
                {
                    VStack(alignment: .center, spacing: 12, content:
                            {
                                
                                Text("Dr. Ramírez Beltran")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
     
                                HStack(alignment:.center)
                                {
                                    Image(systemName: "hare.fill")
                                    Text("Firulais")
                                        .foregroundColor(Color.black.opacity(0.5))
                                        .multilineTextAlignment(.leading)
                                    Text("  ")
                                    Text("  ")
                                    Image(systemName: "calendar.badge.clock")
                                    Text("15/03/2021 09:00 AM")
                                }
       
                            })
                    
                }
                .padding()
                
                
                
            }.background(Color.white)
            
        }.frame(width: 400, height: 700, alignment: .top)
        
        VStack(alignment: .center)
        {
            
            VStack(alignment: .center)
            {
                VStack
                {
                    VStack(alignment: .center, spacing: 12, content:
                            {
                                
                                Text("Dr. Garcia Gerardo")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                
                                HStack(alignment:.center)
                                {
                                    Image(systemName: "hare.fill")
                                    Text("Snoopy")
                                        .foregroundColor(Color.black.opacity(0.5))
                                        .multilineTextAlignment(.leading)
                                    Text("  ")
                                    Text("  ")
                                    Image(systemName: "calendar.badge.clock")
                                    Text("29/12/2021 03:00 PM")
                                }
                            })
                }
                .padding()
            }.background(Color.white)
        }.frame(width: 400, height: 450, alignment: .top)
        
        
        ZStack
        {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.modal.toggle()
                    }, label: {
                        Image(systemName: "plus")
                           
                            .font(.title)
                            .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .shadow(radius:10 )
                    }).sheet(isPresented: self.$modal, content: {
                        Modal_Details()
                    })
                    .padding()
                    .shadow(radius: 2 )
                }
            }
        }
        
        
        
        
        
        
        
    }
    



struct Principal_Previews: PreviewProvider
{
    static var previews: some View
    {
        Principal()
    }
}

}
