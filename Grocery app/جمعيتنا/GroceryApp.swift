//
//  _______App.swift
//  جمعيتنا
//
//  Created by bibi on 10/01/2021.
//

import SwiftUI

@main
struct GroceryApp: App {
    var envv = Inv()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(envv)
           // signUp()
        }
    }
}

