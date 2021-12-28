//
//  politickerApp.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

let bills = [
        Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.860", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.861", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.862", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.863", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.864", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.866", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false)
    ]

@main
struct politickerApp: App {
    @StateObject var billsViewModel = BillViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView(bills: bills)
                .environmentObject(billsViewModel)
        }
    }
}
