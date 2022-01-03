//
//  BillListView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct MatterListItem: View {
	var matter: Matter
	let onLikeBill: (String) -> Void
	
	@State private var showingAlert = false
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(matter.committeeName)
					.font(.title3)
				Spacer()
				Text("3 days ago")
					.font(.caption)
			}

			HStack {
				Text(matter.shortDescription)
				Spacer()
			}.font(.subheadline).foregroundColor(Color.secondary)
			
			HStack {
				Spacer()
				MatterStatusView(status: "Passed")
			}
			
			Text(matter.longDescription)
				.font(.body)
			
			HStack {
				Spacer()
				Button {
					onLikeBill(matter.id)
				} label: {
					if matter.liked {
						Image(systemName: "heart.fill")
							.foregroundColor(Color.red)
							.font(.system(size: 25, weight: .regular))
					} else {
						Image(systemName: "heart")
							.foregroundColor(.black)
							.font(.system(size: 25, weight: .light))
					}
				}
			}
		}
	}
}

struct BillListViews_Previews: PreviewProvider {    
	static var previews: some View {
		//        BillListItem(bill: bill)
		//        BillListView(title: "Bills", bills: bills)
		//        BillListView(title: "No Bills", bills: Binding.constant([]))
		Text("Fix these to work with graphql")
	}
}
