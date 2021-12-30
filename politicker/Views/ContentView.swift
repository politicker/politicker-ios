//
//  ContentView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State var bills: [Bill]
    
    @EnvironmentObject var billViewModel: BillViewModel
    @State var billsViewModel = BillViewModel()
    
    var likedBills: [Bill] {
        get {
            billsViewModel.bills.filter { $0.liked }
        }
    }
    
    var body: some View {
        VStack {
            TabView() {
                ScrollView(showsIndicators: false) {
                    BillListView(title: "Bills", bills: billsViewModel.bills)
                }.tabItem {
                    Image(systemName: "house")
                }.tag(1)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 10.0)
                ScrollView(showsIndicators: false) {
                    BillListView(title: "Liked", bills: likedBills)
                }.tabItem {
                    Image(systemName: "heart")
                }.tag(2)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 10.0)
                
                Text("Tab Content 3").tabItem {
                    Image(systemName: "gear")
                }.tag(3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static private let billsViewModel = BillViewModel()
    
    static var previews: some View {
        ContentView(bills: [])
            .environmentObject(billsViewModel)
    }
}
