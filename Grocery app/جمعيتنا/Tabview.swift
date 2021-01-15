//
//  Tabview.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct Tabview: View {
    @EnvironmentObject var envv : Inv
    var body: some View {
        TabView{

           
            home()
           
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
           
            Cart()
            
                .tabItem {
                    Image(systemName: "cart")
                    Text("cart")
                }



        }

    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview().environmentObject(Inv())

    }
}
