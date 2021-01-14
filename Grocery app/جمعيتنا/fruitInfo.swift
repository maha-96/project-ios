//
//  fruitInfo.swift
//  جمعيتنا
//
//  Created by bibi on 12/01/2021.
//

import SwiftUI

struct fruitInfo: View {
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
           
            Stepper("\(q)", value: $q , in:0...20)
                .frame(width: 150, height: 20, alignment: .center)
            
            //let total = String( q * Fruits.fruitPrice )
                
            let total = String(format: " %.3f" , q * Fruits.fruitPrice )
          
            HStack{
            Text(total)
                .font(.title)
            Text("KWD")
            }
            
            Button( action: {
                envv.item.ImageF = Fruits.fruitImage
                envv.item.NameF = Fruits.fruitName
                envv.item.PriceF = total
                if envv.item.itemNumber == nil{
                    envv.item.itemNumber = 0
                }
                else {
                    envv.item.itemNumber! += 1
                }
                envv.items.insert(envv.item, at: envv.item.itemNumber!)
                envv.item.ImageF = nil
                envv.item.NameF = nil
                envv.item.PriceF = nil
               
                // reset item . shoud not reset itemNumber
                print("testing here")
                print(envv.items[envv.item.itemNumber!].NameF ?? "Not inserted")
                //envv.item.itemNumber! += 1
                print("all the item here 0")
                print(envv.items[0].NameF ?? "No item")
                print("all the item here 1")
                print(envv.items[1].NameF ?? "No item")

            }){
                HStack{
                    
                 Spacer()
                Text("أضف إلى السلة")
                    .padding()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .frame(width: 200, height: 40, alignment: .center)
                    .background(Color("Color1").opacity(0.3))
                    .cornerRadius(18)
                    .shadow(radius: 20)
                    Spacer()
                }
               
            }
            
            HStack{
      Spacer()
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
                        .background(Color("Color1").opacity(0.3))
                        .cornerRadius(18)
                        .shadow(radius: 20)
                })
                
                Spacer()
                
            }

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
