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
				VStack(alignment: .leading) {
					Text(matter.committeeName)
						.font(.title2)
					Text(matter.fileNumber)
						.font(.subheadline)
						.foregroundColor(.secondary)
				}.fixedSize(horizontal: false, vertical: true)
				Spacer()
				Text(matter.postDate.timeAgoDisplay())
					.font(.caption)
			}.padding(.bottom, 5.0)
			
			Text(matter.shortDescription)
				.minimumScaleFactor(0.5)
			
			MatterStatusView(status: matter.status)
		}
	}
}

struct MatterListViews_Previews: PreviewProvider {
	static var previews: some View {
		Text("Fix these to work with graphql")
	}
}
