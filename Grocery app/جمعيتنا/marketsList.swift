//
//  marketsList.swift
//  جمعيتنا
//
//  Created by bibi on 11/01/2021.
//

import SwiftUI

struct marketsList: View {
    var body: some View {

            
            ZStack(){
                
                Image("BG3")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                Spacer()
                List{
                    Section(header: Text(Detail[0].Governorate)){
                        ForEach(Detail[0].Market, id: \.self){ (f: String) in
                         
                            NavigationLink(
                                destination:selectedMarket() , label: {
                                    Text(f) })
                           
                        }
                    }
                    
                    
                    Section(header: Text(Detail[1].Governorate)){
                        ForEach(Detail[1].Market, id: \.self){ (f: String) in

                            NavigationLink(
                                destination:selectedMarket() , label: {
                                    Text(f) })
                        }
                    }

                    Section(header: Text(Detail[2].Governorate)){
                        ForEach(Detail[2].Market, id: \.self){ (f: String) in

                            NavigationLink(
                                destination:selectedMarket() , label: {
                                    Text(f) })
                        }
                    }

                    Section(header: Text(Detail[3].Governorate)){
                        ForEach(Detail[3].Market, id: \.self){ (f: String) in

                            NavigationLink(
                                destination:selectedMarket() , label: {
                                    Text(f) })
                        }
                    }
                    Section(header: Text(Detail[4].Governorate)){
                        ForEach(Detail[4].Market, id: \.self){ (f: String) in

                            NavigationLink(
                                destination:selectedMarket() , label: {
                                    Text(f) })

                        }
                    }
                    Section(header: Text(Detail[5].Governorate)){
                        ForEach(Detail[5].Market, id: \.self){ (f: String) in

                            NavigationLink(
                                destination:selectedMarket() , label: {
                                    Text(f) })

                        }
                    }
                    
                }
                
                .listStyle(GroupedListStyle())
            }
            }
        }
}


//struct marketsList_Previews: PreviewProvider {
//    static var previews: some View {
//        marketsList()
//    }
//}
