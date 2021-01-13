//
//  shopping.swift
//  جمعيتنا
//
//  Created by bibi on 12/01/2021.
//

import SwiftUI

struct shopping: View {
    @ObservedObject var inv : Inv
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
//        ZStack{
//           Color("Color4")
//           .opacity(0.1)
//            .ignoresSafeArea()
            
        VStack(spacing: 0){
                
                Image("fh4")
                    .resizable()
                .frame(width: 400, height: 150, alignment: .center)
                .ignoresSafeArea()
                
//                HStack{
//                    Spacer()
//                    Text("الفواكه    ")
//                        .padding()
//                        .font(.title)
//                    //.foregroundColor(Color("Color2"))
//                        .opacity(0.7)
//
//                }
                
                
                ScrollView{
                    LazyVGrid(columns: layout, spacing: 30){
                        
                        ForEach (FD){ fruitsDetails in
                            NavigationLink(
                                destination: fruitInfo(inv: inv, Fruits: fruitsDetails) ,
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
            
            HStack{
                Text("KWD / 1kilo")
                Text("\(Fruits.fruitPrice)")
            }
        }
        
    }
}
