//
//  politickerApp.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

let bills = [
    Bill(title: "", subTitle: "", sponsor: "", state: "", party: "", updatedAt: "", description: "", categories: [], liked: false)
]

@main
struct politickerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(bills: bills)
        }
    }
}
