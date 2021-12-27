//
//  ContentView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct ContentView: View {
    @State var bills: [Bill]
    
    var body: some View {
        VStack {
            TabView() {
                BillListView(bills: $bills).tabItem {
                    Image(systemName: "house")
                }.tag(1)
                Text("Tab Content 2").tabItem {
                    Image(systemName: "heart")
                }.tag(2)
                Text("Tab Content 3").tabItem {
                    Image(systemName: "gear")
                }.tag(3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static private var bills = [
            Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
            
            Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
            
            Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
            
            Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false)
        ]
    
    static var previews: some View {
        ContentView(bills: bills)
    }
}
