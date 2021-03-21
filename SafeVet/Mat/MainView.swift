//
//  MainView.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 15/03/21.
//

import SwiftUI

struct MainView: View
{
    var body: some View
    {
       
        ScrollView
        {
            VStack
                {
                MapView().frame(height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                ImageView().offset(y:-150)
                Divider()
                
                ContentView()
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
