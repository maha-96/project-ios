//
//  shopping.swift
//  جمعيتنا
//
//  Created by bibi on 12/01/2021.
//

import SwiftUI

struct shopping: View {
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
//        ZStack{
//           Color("Color4")
//           .opacity(0.1)
//            .ignoresSafeArea()
            
        VStack(){
                
                Image("fh4")
                    .resizable()
                .frame(width: 400, height: 150, alignment: .center)
                .ignoresSafeArea()
            
            Spacer()
                
                
                ScrollView{
                    LazyVGrid(columns: layout, spacing: 30){
                        
                        ForEach (FD){ fruitsDetails in
                            NavigationLink(
                                destination: fruitInfo(Fruits: fruitsDetails) ,
                                label: {
                                    shoppingGrid(Fruits: fruitsDetails)
                                })
                            
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(30)
                .ignoresSafeArea()
                
                .padding()
                .background(Color("Color1").opacity(0.1))
               // .cornerRadius(45)
                .ignoresSafeArea()
            
                 padding()
              NavigationLink(
                 destination: Cart(),
                 label: {
                     HStack(){
                     Text("عربة التسوق")
                     Image(systemName: "cart")
                      .resizable()
                      .frame(width: 20, height: 20)
                 }
                         .padding()
                         .foregroundColor(.black)
                         .opacity(0.8)
                         .frame(width: 200, height: 40, alignment: .center)
                         .background(Color("Color1").opacity(0.2))
                         .cornerRadius(18)
                         .shadow(radius: 20)
                    
                    Spacer()
                 })
                
            }
            
            
        }
    }


//struct shopping_Previews: PreviewProvider {
//    static var previews: some View {
//        shopping()
//    }
//}




struct shoppingGrid: View {
    let Fruits : fruitsDetails
    var body: some View {
        VStack(){
        
            Image(Fruits.fruitImage)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                .background(Color("Color1").opacity(0.1))
                .cornerRadius(18)
            
            Text(Fruits.fruitName)
                .foregroundColor(Color.black)
                .opacity(0.75)
            
          
                Text("KWD / 1kilo")
                    .font(.custom("Adequate-ExtraLight", size: 11))
            Text("\(Fruits.fruitPrice )")
            .font(.custom("Adequate-ExtraLight", size: 15))
        }
        
    }
}
