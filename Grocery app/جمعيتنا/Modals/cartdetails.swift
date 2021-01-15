//
//  cartdetails.swift
//  جمعيتنا
//
//  Created by bibi on 13/01/2021.
//

import Foundation
struct cartdetails : Identifiable , Hashable{
    
    var ImageF : String?
    var NameF : String?
    var PriceF : Double?
    var itemNumber : Int? //  add this to count and make it as array counter
    init(ImageF: String? = nil, NameF: String? = nil, PriceF: Double? = nil, itemNumber: Int? = nil ) {
            self.ImageF = ImageF
            self.NameF = NameF
            self.PriceF = PriceF
        self.itemNumber = itemNumber
        
        }

    
    let id = UUID()
}


class Inv : ObservableObject {
    @Published var totalPrice = 0.0
    @Published var item = cartdetails()
    @Published var items = [cartdetails()]
   // let id = UUID()
}

//var envv = Inv()


