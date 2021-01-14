//
//  Details.swift
//  جمعيتنا
//
//  Created by bibi on 11/01/2021.
//

import Foundation
struct Details: Hashable, Identifiable {
    var Governorate: String
    var Market: [String]
    
    var id = UUID()
    
}


let Detail = [
    Details(Governorate: "محافظة العاصمة", Market: ["جمعية كيفان","جمعية الروضة","جمعية الدسمة"]),
    Details(Governorate: "محافظة الجهراء", Market: ["جمعية سعد العبدالله","جمعية الجهراء","جمعية النسيم"]),
    Details(Governorate: "محافظة الفروانية", Market: ["جمعية اشبيلية","جمعية الاندلس","جمعية صباح الناصر"]),
    Details(Governorate: "محافظة حولي", Market: ["جمعية حولي","جمعية بيان","جمعية الصديق"]),
    Details(Governorate: "محافظة مبارك الكبير", Market: ["جمعية القرين","جمعية القصور","جمعية المسيلة"]),
    Details(Governorate: "محافظة الاحمدي", Market: ["جمعية الفنطاس","جمعية هدية","جمعية عقيلة"])
]





struct Grocery: Identifiable {
    
    let imageC: String
    let Category: String

    
    let id = UUID()
}


let info = [
    Grocery(imageC: "bread", Category: "المخبوزات"),
    Grocery(imageC: "milk", Category: "منتجات الالبان"),
    Grocery(imageC: "meat", Category: "اللحوم"),
    Grocery(imageC: "seafood", Category: "المأكولات البحرية"),
    Grocery(imageC: "snack", Category: "المأكولات السريعة"),
    Grocery(imageC: "softdrink", Category: "المشروبات"),
    Grocery(imageC: "cleaning", Category: "أدوات التنظيف"),
    Grocery(imageC: "coffee", Category: "الشاي والقهوة"),
    ]


