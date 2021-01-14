//
//  home.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct home: View {
    var body: some View {
     

        VStack{
            Image("header")
                .resizable()
            .frame(width: 400, height: 150, alignment: .center)
            .ignoresSafeArea()
              Spacer()
            
            ScrollView(.horizontal){
                HStack(spacing: 1){
                    ZStack{
                  Image("pic2")
                    .resizable()
                    .frame(width: 360, height: 240, alignment: .center)
                    .cornerRadius(20)
                    .opacity(0.8)
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 130, height: 130, alignment: .center)
                            .padding(.vertical, 35)
                            .padding(.horizontal, 40)
                            .background(Color("Color3").opacity(0.2))
                            .clipShape(Circle())
                        
                        
                           
                    }
                    Image("pic1")
                        .resizable()
                        .frame(width: 360, height: 240, alignment: .center)
                        .cornerRadius(20)
                }
            }
            
           Spacer()
            Spacer()
            Spacer()
            
        NavigationLink(
            destination: marketsList(),
            label: {
                Text("قائمة الجمعيات")
                    .padding()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .frame(width: 200, height: 40, alignment: .center)
                    .background(Color("Color1").opacity(0.3))
                    .cornerRadius(18)
                    .shadow(radius: 20)
            })
            
            Spacer()
        }
    }
}

//struct home_Previews: PreviewProvider {
//    static var previews: some View {
//        home()
//    }
//}

