//
//  home.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct home: View {
    @ObservedObject var inv : Inv

    var body: some View {
     

        VStack{
            Image("header")
                .resizable()
            .frame(width: 400, height: 150, alignment: .center)
            .ignoresSafeArea()
              
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
            
           
            
        NavigationLink(
            destination: marketsList(inv: inv),
            label: {
                Text("قائمة الجمعيات")
                    .padding()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .frame(width: 220, height: 50, alignment: .center)
                    .background(Color("Color1").opacity(0.3))
                    .cornerRadius(18)
                    .shadow(radius: 20)
            })
            
        }
    }
}

//struct home_Previews: PreviewProvider {
//    static var previews: some View {
//        home()
//    }
//}

