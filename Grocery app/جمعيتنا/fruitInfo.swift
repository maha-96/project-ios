//
//  fruitInfo.swift
//  جمعيتنا
//
//  Created by bibi on 12/01/2021.
//

import SwiftUI

struct fruitInfo: View {
    @ObservedObject var inv : Inv

    let Fruits : fruitsDetails
    @State var q = 0.0
   
    var body: some View {
       
        VStack(alignment: .trailing, spacing: 40)
        {
            
            
            Image(Fruits.fruitImage)
                .resizable()
                .frame(width: 340, height: 280)
                .padding(.vertical, 10)
                .background(Color("Color1").opacity(0.2))
                .cornerRadius(26)
            
            Text(Fruits.fruitName)
                .padding()
                .font(.largeTitle)
           
            Stepper("\(q)", value: $q , in:0...7)
                .frame(width: 150, height: 20, alignment: .center)
                
            let total = String( q * Fruits.fruitPrice )
            HStack{
            Text("KWD")
                .font(.title)
            Text(total)
                .font(.title)
            }
            
            Button(action: {
                inv.item.ImageF = Fruits.fruitImage
                inv.item.NameF = Fruits.fruitName
                inv.item.PriceF = Double(total)!
                //inv.items.append(inv.item)
                
//                inv.items.ImageF = Fruits.fruitImage
//                inv.items.NameF = Fruits.fruitName
//                inv.items.PriceF = Double(total)!
            
                
            }, label: {
                HStack{
                    
                 Spacer()
                Text("أضف إلى السلة")
                    .padding()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .frame(width: 220, height: 50, alignment: .center)
                    .background(Color("Color1").opacity(0.3))
                    .cornerRadius(18)
                    .shadow(radius: 20)
                    Spacer()
                }
            })
              
            
            Button(action: {
//                inv.item.ImageF = Fruits.fruitImage
//                inv.item.NameF = Fruits.fruitName
//                inv.item.PriceF = Double(total)!
                inv.items.append(inv.item)
                
//                inv.items.ImageF = Fruits.fruitImage
//                inv.items.NameF = Fruits.fruitName
//                inv.items.PriceF = Double(total)!
            
                
            }, label: {
                HStack{
                    
                 Spacer()
                Text("أضف إلى السلة")
                    .padding()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .frame(width: 220, height: 50, alignment: .center)
                    .background(Color("Color1").opacity(0.3))
                    .cornerRadius(18)
                    .shadow(radius: 20)
                    Spacer()
                }
            })
              
            
            
           // Text(inv.items[0].NameF ?? "no")
                
            Spacer()
        }
        .padding()
        
    }
}

//struct fruitInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        fruitInfo(Fruits: fruitsDetails(fruitImage: "orange", fruitName: "برتقال", fruitPrice: 0.6))
//    }
//}
