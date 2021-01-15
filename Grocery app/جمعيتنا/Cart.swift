//
//  Cart.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct Cart: View {
    @EnvironmentObject var envv : Inv
    var body: some View {
        
        VStack{
            HStack{
                Spacer()
                HStack(){
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("عربة التسوق")
                    
                }
                Spacer()
            }
            .padding()
            .background(Color("Color1").opacity(0.1))
            .padding(.vertical)
            
            
            
            List{
                
                if envv.item.itemNumber != nil{
                    ForEach(envv.items, id: \.self){ item in
                        if item.NameF != nil {
                            
                            HStack{
                                Image(item.ImageF ?? "No item")
                                    .resizable()
                                    .frame(width: 85, height: 85, alignment: .center)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 5)
                                    .background(Color("Color1").opacity(0.1))
                                    .cornerRadius(18)
                                
                                VStack{
                                    Text(item.NameF ?? "No item")
                                    
                                    HStack(spacing: 0){
                                   // let digitpricef = String(format: " %.3f" , item.PriceF )
                                        Text(priceDigit(item : item))
                                            
                                            .font(.title3)
                                        Text("KWD")
                                    }

                                }
                                
                            }
                            
                            .onAppear{
                              
                                envv.totalPrice = envv.totalPrice + (item.PriceF ?? 0.0)
                            
                                print(envv.totalPrice)
                              
                            }
                            
                        }
                    }
                    
                }
              
            }
            
            
        HStack{
         Text("KWD")
            let finalPrice = String(format: "%.3f", envv.totalPrice)
            //Text("\(envv.totalPrice)")
            Text(finalPrice)
        }
            
            Button(action:  {
                
            }, label: {
                Text("الدفع")
                    .padding()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .frame(width: 200, height: 40, alignment: .center)
                    .background(Color("Color1").opacity(0.3))
                    .cornerRadius(18)
                    .shadow(radius: 20)
            })
            .padding()
            
            
        }
        
        
    }
    
    
    func priceDigit (item: cartdetails) -> String {
        String(format: " %.3f" , item.PriceF ?? 0.0 )
    }
}

//struct Cart_Previews: PreviewProvider {
//    static var previews: some View {
//        Cart()
//    }
//}







