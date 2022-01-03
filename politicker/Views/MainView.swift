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
		VStack {
			TabView {
				VStack(alignment: .leading) {
					Text("Bills")
						.font(.bold(.largeTitle)())
					Spacer()

					List(mattersViewModel.matters) { matter in
						MatterListItem(matter: matter, onLike: handleLike)
							.listRowSeparator(.visible, edges: .bottom)
					}.listStyle(.plain).refreshable {
						print("fetching more bills")
					}
				}.tabItem {
					Image(systemName: "house")
				}.tag(1)
					.padding(.leading, 10.0)
					.padding(.trailing, 10.0)
				VStack(alignment: .leading) {
					Text("Liked")
						.font(.bold(.largeTitle)())
					Spacer()
					List(likedMatters) { matter in
						MatterListItem(matter: matter, onLike: handleLike)
					}
				}.tabItem {
					Image(systemName: "heart")
				}.tag(2)
					.padding(.leading, 10.0)
					.padding(.trailing, 10.0)
				Text("Tab Content 3").tabItem {
					Image(systemName: "gear")
				}.tag(3)
			}.accentColor(.black)
		}
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
