//
//  pruebaapi.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 24/05/21.


import SwiftUI



struct pruebaapi: View {
    
    @ObservedObject var networkingManager = NetworkingManager()

    var body: some View {

        NavigationView
        {
            List(self.networkingManager.userList.data, id: \.id)
            { user in
                HStack
                {
                    Text(user.fechaNacimiento)
                    VStack
                    {
                        Text(user.nombre)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                        Text(user.apellido)
                            .font(.title2)
                            .bold()

                    }
                }
            }
        }

    }

}

struct pruebaapi_Previews: PreviewProvider {
    static var previews: some View {
        pruebaapi()
    }
}


