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
    var PriceF : String?
    var itemNumber : Int? //  add this to count and make it as array counter
    init(ImageF: String? = nil, NameF: String? = nil, PriceF: String? = nil, itemNumber: Int? = nil) {
            self.ImageF = ImageF
            self.NameF = NameF
            self.PriceF = PriceF
        self.itemNumber = itemNumber
        
        }

    
    let id = UUID()
}


class Inv : ObservableObject {
   
    @Published var item = cartdetails()
    @Published var items = [cartdetails()]
   // let id = UUID()
}

var envv = Inv()


