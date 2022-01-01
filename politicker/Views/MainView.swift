//
//  ContentView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct MainView: View {
	@EnvironmentObject var billsViewModel: BillViewModel
	
	var likedBills: [Bill] {
		get {
			billsViewModel.bills.filter { $0.liked }
		}
	}
	
	var body: some View {
		VStack {
			TabView() {
				ScrollView(showsIndicators: false) {
					BillListView(title: "Bills", bills: billsViewModel.bills, onLikeBill: likeBill)
				}.tabItem {
					Image(systemName: "house")
				}.tag(1)
					.padding(.leading, 10.0)
					.padding(.trailing, 10.0)
				ScrollView(showsIndicators: false) {
					BillListView(title: "Liked", bills: likedBills, onLikeBill: likeBill)
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

// State modifiers
extension MainView {
	func likeBill(billId: String) {
		billsViewModel.likeBill(billId: billId)
	}
}

struct ContentView_Previews: PreviewProvider {
	static private let billsViewModel = BillViewModel()
	
	static var previews: some View {
		MainView()
			.environmentObject(billsViewModel)
	}
}
