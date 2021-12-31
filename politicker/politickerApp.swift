//
//  politickerApp.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

@main
struct politickerApp: App {
    @StateObject var billsViewModel = BillViewModel()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(billsViewModel)
        }
    }
}
