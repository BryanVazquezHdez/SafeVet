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
            HStack {
                Image(systemName: "person.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Perfil")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 100)
            HStack {
                Image(systemName: "hare.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Mascotas")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "calendar.circle.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Citas")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "archivebox.circle")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Expedientes")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "gearshape.fill")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Ajustes")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 500)
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
