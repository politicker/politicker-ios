//
//  ContentView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView() {
                BillListView().tabItem {
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
    static var previews: some View {
        ContentView()
    }
}
