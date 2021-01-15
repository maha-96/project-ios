//
//  ContentView.swift
//  جمعيتنا
//
//  Created by bibi on 10/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.vertical, 35)
                    .padding(.horizontal, 40)
                    .background(Color("Color3").opacity(0.2))
                    .clipShape(Circle())
                
                Text("جمعيتنا")
                    .padding()
                    .font(.custom("Adequate-ExtraLight", size: 45))
                    .foregroundColor(Color("Color2"))
                   // .opacity(0.8)
                Text("جميع الجمعيات التعاونية تحت سقف واحد")
                    .foregroundColor(Color("Color2"))
                    .opacity(0.85)
                Spacer()
                
                
                NavigationLink(
                    destination: logIn(),
                    label: {
                        Text("تسجيل الدخول")
                            .padding()
                            .foregroundColor(.black)
                            .opacity(0.8)
                            .frame(width: 220, height: 50, alignment: .center)
                            .background(Color("Color1").opacity(0.3))
                            .cornerRadius(18)
                            .shadow(radius: 20)
                    })
                
                
                NavigationLink(
                    destination: signUp(),
                    label: {
                        Text("إنشاء حساب جديد")
                            .padding()
                            .foregroundColor(.black)
                            .opacity(0.8)
                            .frame(width: 220, height: 50, alignment: .center)
                            .background(Color("Color1").opacity(0.3))
                            .cornerRadius(18)
                            .shadow(radius: 20)
                    })
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Inv())
    }
}


struct Home : View {
    var body: some View {
        
        VStack{
            Spacer()
        }
    }
    
}



