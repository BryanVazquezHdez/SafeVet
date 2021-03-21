//
//  login1.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 16/03/21.
//




import SwiftUI

struct login1: View
{
    var body: some View {
        NavigationView
        {
            Home()
                .preferredColorScheme(.light)
                .navigationBarHidden(true)
        }
    }
}

struct Home : View
{
    @State private var showAlert : Bool = false
    
    var alert : Alert
    {
        Alert(title: Text("Has inciado sesión"), message: Text("Inicio de sesión correcto"), dismissButton:.default(Text("Aceptar")))
    }
        
     @State var username = ""
     @State var password = ""
    var body : some View
    {
        VStack
        {
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Image("logoalt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                //frame dinámico
                .padding(.horizontal,35)
                .padding(.vertical)
            VStack
            {
            HStack
            {
                VStack(alignment: .leading, spacing: 12, content:
                        {
                            
                            Text("Inicio de sesión")
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                                
                            
                            Text("Inicie sesión para continuar")
                                .foregroundColor(Color.black.opacity(0.5))
                            

                        })
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                
            }
            .padding()
            .padding(.leading,15)
            
            HStack
            {
                Image(systemName: "person.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 35)
                
                TextField("Usuario", text: $username).foregroundColor(.white)
            }
            .padding()
            .background(Color.gray.opacity( 0.2))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding(.horizontal,30)
            
            
            HStack
            {
                Image(systemName: "lock")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 35)
                
                SecureField("Contraseña", text: $password).foregroundColor(.black)
            }
            .padding()
            .background(Color.gray.opacity( 0.2))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding(.horizontal,30)
            .padding(.top)
            
            HStack
            {
            Button(action: {
                self.showAlert.toggle()
            }, label: {
                Text("Iniciar sesión")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 150)
                    .background(Color("blue"))
                    .clipShape(Capsule())
                
            })
            .padding(.top)
            }.alert(isPresented: self.$showAlert) { () -> Alert in self.alert
                
            }
            
            //olvidé mi contra xd
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("¿Olvidaste tu contraseña?")
                    .fontWeight(.regular)
                    .foregroundColor(Color("grey"))
            })
            .padding(.top,8)
            
            
            
            
            //registro
            
            HStack (spacing: 5)
            {
                Text("¿No estás registrado?")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black.opacity(0.9))
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    NavigationLink(
                        destination: Register()){
                        Text("¡Regístrate!")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("blue"))
                    }
                    
                        
                       
                })
            }
            .padding(.vertical)
            
                
            
            }.background(Color.white)
            .padding(.horizontal,40)
            .cornerRadius(60)
            Spacer()
            Spacer()
        }
        
        .background(Color("blue").ignoresSafeArea(.all,edges: .all))
        
        
    }
}

struct login1_Previews: PreviewProvider {
    static var previews: some View {
       Home()
    }
}
