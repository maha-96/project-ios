//
//  Tabview.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct Tabview: View {
    @EnvironmentObject var inv : Inv
    var body: some View {
        TabView{
         
            home(inv: inv)
            //Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Cart(inv: inv)
            //Text("cart")
                .tabItem {
                    Image(systemName: "cart")
                    Text("cart")
                }
        
        
        
        }

    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
