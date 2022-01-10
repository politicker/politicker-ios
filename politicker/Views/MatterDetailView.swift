//
//  MatterDetailView.swift
//  politicker
//
//  Created by Harrison Borges on 1/2/22.
//

import SwiftUI

struct MatterDetailView: View {
	var matter: Matter
	var introducedAt: String {
		get {
			let formatter = DateFormatter()
			formatter.dateStyle = .short
			
			return formatter.string(from: matter.introducedAt)
		}
	}
	
	var body: some View {
		VStack(alignment: .leading) {
			Text(matter.committeeName)
				.font(.title)
			
			HStack {
				Text(matter.fileNumber)
				Spacer()
				Text("Introduced: \(introducedAt)")
			}
			.font(.subheadline)
			.foregroundColor(.secondary)
			
			Divider()
			
			Text(matter.longDescription)
		}.padding()
	}
}

struct MatterDetailView_Previews: PreviewProvider {
	static var previews: some View {
//		MatterDetailView()
		Text("MatterDetail")
	}
}
