//
//  ContentView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct MainView: View {
	@EnvironmentObject var mattersViewModel: MattersViewModel
	
	var likedMatters: [Matter] {
		get {
			mattersViewModel.matters.filter { $0.liked }
		}
	}
	
	var body: some View {
		TabView {
			NavigationView {
				List(mattersViewModel.matters) { matter in
					NavigationLink {
						MatterDetailView(matter: matter)
					} label: {
						MatterListItem(matter: matter, onLike: handleLike)
							.listRowSeparator(.visible, edges: .bottom)
					}
				}.listStyle(.plain).refreshable {
					mattersViewModel.fetch()
				}.navigationTitle("Bills")
			}.tabItem {
				Image(systemName: "house")
			}.tag(1)
				.padding(.leading, 10.0)
				.padding(.trailing, 10.0)
			Text("Settings").tabItem {
				Image(systemName: "gear")
			}.tag(2)
		}.accentColor(.black)
	}
}

// State modifiers
extension MainView {
	func handleLike(matterId: String) {
		mattersViewModel.createLike(matterId: matterId)
	}
}

struct ContentView_Previews: PreviewProvider {
	static private let mattersViewModel = MattersViewModel()
	
	static var previews: some View {
		MainView()
			.environmentObject(mattersViewModel)
	}
}
