//
//  Cart.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import SwiftUI

struct Cart: View {
    @ObservedObject var inv : Inv
    var body: some View {
        VStack{
            Text(inv.items[0].NameF ?? "n")
        }
    }
}

//struct Cart_Previews: PreviewProvider {
//    static var previews: some View {
//        Cart()
//    }
//}






struct cartview : View{
    
    let Fruits : fruitsDetails
     var q = 0.0
    var body: some View {
        HStack{
            
        }
    }
    
}
