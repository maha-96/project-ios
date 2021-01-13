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
   
    init(ImageF: String? = nil, NameF: String? = nil, PriceF: Double? = nil) {
            self.ImageF = ImageF
            self.NameF = NameF
            self.PriceF = PriceF
        
        
        }

    
    let id = UUID()
}


class Inv : ObservableObject {
   
    @Published var item = cartdetails()
    @Published var items = [cartdetails()]
}
//var CD = [ cartdetails(ImageF: <#String#>, NameF: <#String#>, PriceF: <#Double#>)]
//var CD : [cartdetails()] = []

