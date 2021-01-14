//
//  logIn.swift
//  جمعيتنا
//
//  Created by bibi on 10/01/2021.
//

import SwiftUI

struct logIn: View {
    @State var email = ""
    @State var password = ""
    @State var visible = true
    var body: some View {
        VStack(spacing : 15){
            HStack{
                Spacer()
            Text("تسجيل الدخول")
                .padding()
                .font(.custom("ExtaLight", size: 20))
                .foregroundColor(Color("Color2"))

            }
            
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.vertical, 45)
                .padding(.horizontal, 45)
                .background(Color("Color3").opacity(0.2))
                .clipShape(Circle())
            
                .padding()
            
            TextField("البريد الالكتروني", text: $email)
                
                .disableAutocorrection(true)
                .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
            
                .padding()
            
            HStack(){
                                         
                if visible  {
                    
                    SecureField("الرقم السري" , text: $password)
                        .disableAutocorrection(true)
                        .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
                        }
                
                
                
            else{
                    TextField("الرقم السري" , text: $password)
                        .disableAutocorrection(true)
                    .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
                            }
                
              
            
                                         
        Button(action: {
                                             
                visible.toggle()
                                             
                    }) {
                                             
        Image(systemName:visible ? "eye.slash.fill" : "eye.fill")
            .foregroundColor(Color("Color2"))
                        }
                                         
                    }
            
            
                   Spacer()
            
            
           if email != ""  && password != "" {
            
            NavigationLink(
                destination:  Tabview(),
                label: {
                    Text("الدخول")
                        .padding()
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .frame(width: 200, height: 40, alignment: .center)
                        .background(Color("Color1").opacity(0.3))
                        .cornerRadius(18)
                        .shadow(radius: 20)
                })
        }
            Spacer()
            
        }
        .padding()
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .font(.system(size: 22))
        
    }
}

struct logIn_Previews: PreviewProvider {
    static var previews: some View {
        logIn()
    }
}




