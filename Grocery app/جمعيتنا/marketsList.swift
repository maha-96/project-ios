//
//  marketsList.swift
//  جمعيتنا
//
//  Created by bibi on 11/01/2021.
//

import SwiftUI

struct marketsList: View {
    @ObservedObject var inv : Inv

    var body: some View {
       
        
            //Color("Color3")
           // .opacity(0.4)
//            Image("header1")
//                .resizable()
//                .frame(width: 400, height: 125, alignment: .center)
//                .ignoresSafeArea()
            
            VStack(spacing: 0){
                
                Image("header1")
                    .resizable()
                .frame(width: 400, height: 160, alignment: .center)
                .ignoresSafeArea()
                
//                HStack{
//                    Spacer()
//                    Text("قائمة الجمعيات التعاونية")
//
//                        .padding()
//                        .font(.custom("ExtaLight", size: 30))
//                        .foregroundColor(Color("Color2"))
//                }
//
                
                List{
                    Section(header: Text(Detail[0].Governorate)){
                        ForEach(Detail[0].Market, id: \.self){ (f: String) in
                            
                            NavigationLink(
                                destination:selectedMarket(inv: inv) , label: {
                                    Text(f) })
                           
                        }
                    }
                
                    
                    Section(header: Text(Detail[1].Governorate)){
                        ForEach(Detail[1].Market, id: \.self){ (f: String) in
                            
                            NavigationLink(
                                destination:selectedMarket(inv: inv) , label: {
                                    Text(f) })
                        }
                    }
                
                    Section(header: Text(Detail[2].Governorate)){
                        ForEach(Detail[2].Market, id: \.self){ (f: String) in
                            
                            NavigationLink(
                                destination:selectedMarket(inv: inv) , label: {
                                    Text(f) })
                        }
                    }
                    
                    Section(header: Text(Detail[3].Governorate)){
                        ForEach(Detail[3].Market, id: \.self){ (f: String) in
                            
                            NavigationLink(
                                destination:selectedMarket(inv: inv) , label: {
                                    Text(f) })
                        }
                    }
                    Section(header: Text(Detail[4].Governorate)){
                        ForEach(Detail[4].Market, id: \.self){ (f: String) in
                            
                            NavigationLink(
                                destination:selectedMarket(inv: inv) , label: {
                                    Text(f) })
                            
                        }
                    }
                    Section(header: Text(Detail[5].Governorate)){
                        ForEach(Detail[5].Market, id: \.self){ (f: String) in
                            
                            NavigationLink(
                                destination:selectedMarket(inv: inv) , label: {
                                    Text(f) })
                            
                        }
                    }
                    
                    
                }
                .listStyle(GroupedListStyle())
            }
        }
    }


//struct marketsList_Previews: PreviewProvider {
//    static var previews: some View {
//        marketsList()
//    }
//}
