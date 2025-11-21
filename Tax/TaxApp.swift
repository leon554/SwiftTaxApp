//
//  TaxApp.swift
//  Tax
//
//  Created by leon smit on 21/11/2025.
//

import SwiftUI

@main
struct TaxApp: App {
    @State private var taxState = TaxState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(taxState)
        }
    }
}
