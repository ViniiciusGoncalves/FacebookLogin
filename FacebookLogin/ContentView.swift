//
//  ContentView.swift
//  FacebookLogin
//
//  Created by Joao Victor on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                Spacer().frame(height: 64)
                VStack {
                    TextField("Email", text: $email)
                        .padding(.top, 24)
                        .padding(.bottom,12)
                        .padding(.horizontal)
                    Divider()
                    TextField("Password", text: $password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                }.background(Color.white)
                    .cornerRadius(4.0)
                Spacer().frame(height: 16)
                Button(action: {}) {
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color("ButtonColor"))
                        .cornerRadius(4.0)
                }
                Spacer().frame(height: 64)
                
                Button(action: {}) {
                    Text("Cadastra-se no Facebook")
                        .foregroundColor(.white)
                        .bold()
                }
                Spacer().frame(height: 8 )
                Button(action: {}) {
                    Text("Esqueceu a senha?")
                        .foregroundColor(Color("TextColor"))
                }
                
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
