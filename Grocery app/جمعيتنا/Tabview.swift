//
//  Tabview.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct Tabview: View {
    var body: some View {
        TabView{
         
           // home(inv: inv)
            home().environmentObject(envv)
            //Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            //Cart(inv: inv)
                Cart().environmentObject(envv)
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
        Tabview().environmentObject(envv)
    }
}
