//
//  _______App.swift
//  جمعيتنا
//
//  Created by bibi on 10/01/2021.
//

import SwiftUI

@main
struct GroceryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Inv())
           // signUp()
        }
    }
}

