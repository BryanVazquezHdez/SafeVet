//
//  Principal.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 18/04/21.
//

import SwiftUI
import Combine

struct Principal: View
{
    
    
    
    @State var showMenu = false
    init() {
        UITableViewCell.appearance().backgroundColor = .green
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0.7445648313, blue: 0.9996808171, alpha: 1)
    }
    
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
        
        .navigationBarTitle("SafeVet", displayMode: .inline)
        .navigationBarItems(leading: (
            Button(action: {
                withAnimation {
                    self.showMenu.toggle()
                }
            }) {
                Image(systemName: "chevron.backward")
                    .imageScale(.large)
                
                Image(systemName: "line.horizontal.3")
                    .imageScale(.large)
            }
        ))
        
    }
}

struct MainView: View {
    
    @State  var modal = false
    @Binding var showMenu: Bool
    @ObservedObject var appointmentManager = AppointManager()
    
    
    var body: some View
    {
        VStack(alignment: .center)
        {
            VStack
            {
                VStack(alignment: .center, spacing: 12, content:
                        {
                            
                            Text("Datos de cita")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                            
                            HStack(alignment:.center)
                            {
                                Image(systemName: "hare.fill")
                                Text(self.appointmentManager.appointList?.data?.mascota.nombre ?? "NO DATA")
                                    .foregroundColor(Color.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                                Text("  ")
                                Text("  ")
                                Image(systemName: "calendar.badge.clock")
                                Text("Fecha: ")
                                Text(CustomDateFormatter.createDefault(dateString: self.appointmentManager.appointList?.data?.dia ) )
                                    .foregroundColor(Color.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                            }
                            
                            HStack
                            {
                                Image(systemName: "calendar.badge.plus")
                                Text("Tipo: ")
                                
                                Text(self.appointmentManager.appointList?.data?.tipo ?? "NO DATA")
                                    .foregroundColor(Color.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                                Text("  ")
                                Text("  ")
                                
                                Image(systemName: "clock")
                                Text("Hora")
                                Text(self.appointmentManager.appointList?.data?.hora ?? "NO DATA")
                                    .foregroundColor(Color.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                            }
                        }).padding()

            }
            .padding()
              
        }.background(Color.white)
        .shadow(radius:10)
        .padding(.bottom,550)
        
        
        
        
        
        
        ZStack
        {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    
                    Button(action: {
                        self.modal.toggle()
                    }, label: {
                        Text("Ver expedientes")
                            .foregroundColor(Color.white)
                            .font(.title3)
                            .bold()
                            .shadow(radius: 15 )
                        Image(systemName: "filemenu.and.selection")
                            .font(.title)
                            .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .shadow(radius:5 )
                    }).sheet(isPresented: self.$modal, content: {
                        expedientes_view()
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
