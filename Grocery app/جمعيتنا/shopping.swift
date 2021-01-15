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
        
        ZStack{
       Image("BG2")
        .resizable()
        .ignoresSafeArea()
            
        VStack(){
    
            
            Spacer()
            Spacer()
            ScrollView{
                
                    LazyVGrid(columns: layout , spacing: 30){
                        
                        ForEach (FD){ fruitsDetails in
                            NavigationLink(
                                destination: fruitInfo(Fruits: fruitsDetails) ,
                                label: {
                                    shoppingGrid(Fruits: fruitsDetails)
                                })
                            
                        }
                    }
               }
            Spacer()
            
            }
           
            
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
                .padding(.vertical, 16)
                .padding(.horizontal, 16)
                .background(Color("Color1").opacity(0.1))
                .cornerRadius(18)
            
            Text(Fruits.fruitName)
                .foregroundColor(Color.black)
                .opacity(0.75)
            
          
                Text("KWD / 1kilo")
                    .font(.custom("Adequate-ExtraLight", size: 11))
            
        let FF = String(format: " %.3f" , Fruits.fruitPrice )
            Text(FF)
            .font(.custom("Adequate-ExtraLight", size: 15))
        }
        
    }
}
