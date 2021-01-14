//
//  fruitsDetails.swift
//  جمعيتنا
//
//  Created by bibi on 12/01/2021.
//

import Foundation
struct fruitsDetails: Identifiable {
    let fruitImage : String
    let fruitName : String
    let fruitPrice : Double
   

    
    let id = UUID()
}


let FD = [
    fruitsDetails(fruitImage: "orange", fruitName: "برتقال", fruitPrice: 0.4),
    fruitsDetails(fruitImage: "apple", fruitName: "تفاح", fruitPrice: 0.6 ),
    fruitsDetails(fruitImage: "banana", fruitName: "موز", fruitPrice: 0.5)
    ]
