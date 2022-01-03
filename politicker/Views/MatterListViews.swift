//
//  BillListView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct MatterListItem: View {
	var matter: Matter
	let onLike: (String) -> Void
	
	@State private var showingAlert = false
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(matter.committeeName)
					.font(.title2)
				Spacer()
				Text("3 days ago")
					.font(.caption)
			}.padding(.bottom, 5.0)
			
			Text(matter.shortDescription)
				.minimumScaleFactor(0.5)
			
//			Spacer()
//
//			Text(matter.longDescription)
//				.font(.body)
			
			HStack {
				MatterStatusView(status: matter.status)
//				Spacer()
//				Button {
//					onLike(matter.id)
//				} label: {
//					if matter.liked {
//						Image(systemName: "heart.fill")
//							.foregroundColor(Color.red)
//							.font(.system(size: 25, weight: .regular))
//					} else {
//						Image(systemName: "heart")
//							.foregroundColor(.black)
//							.font(.system(size: 25, weight: .light))
//					}
//				}
			}
		}
	}
}

struct MatterListViews_Previews: PreviewProvider {
	static var previews: some View {
		Text("Fix these to work with graphql")
	}
}
