//
//  selectedMarket.swift
//  جمعيتنا
//
//  Created by bibi on 11/01/2021.
//

import SwiftUI

struct selectedMarket: View {
    @ObservedObject var inv : Inv

    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    var body: some View {
        VStack{
           
            ScrollView{
                
              
                HStack(spacing: 30){
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            VStack{
                              
                                Image("vegetable")
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .padding(.vertical, 30)
                                    .padding(.horizontal, 30)
                                    .background(Color("Color3").opacity(0.6))
                                    .cornerRadius(18)
                                
                                Text("الخضراوات")
                                    .foregroundColor(Color("Color2"))
                            }

                        })
                    
                    NavigationLink(
                        destination: shopping(inv: inv) ,
                        label: {
                            VStack{
                                Image("fruits")
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .padding(.vertical, 30)
                                    .padding(.horizontal, 30)
                                    .background(Color("Color3").opacity(0.6))
                                    .cornerRadius(18)
                                
                                Text("الفواكه")
                                    .foregroundColor(Color("Color2"))
                            }

                        })
                    
                }
                
                LazyVGrid(columns: layout, spacing: 30){
                   
                    ForEach (info){ Grocery in
                        NavigationLink(
                            destination: Text("Destination") ,
                            label: {
                                Grocerylist(grocery: Grocery)
                            })
                       
                    }
                }
            }
        }
    }
}

//struct selectedMarket_Previews: PreviewProvider {
//    static var previews: some View {
//        selectedMarket()
//    }
//}





struct Grocerylist: View {
    let grocery : Grocery
    
    var body: some View {
        
        VStack{
            Image(grocery.imageC)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.vertical, 30)
                .padding(.horizontal, 30)
                .background(Color("Color3").opacity(0.6))
                .cornerRadius(18)
            
            Text(grocery.Category)
                .foregroundColor(Color("Color2"))
        }
    }
}
