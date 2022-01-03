//
//  MatterDetailView.swift
//  politicker
//
//  Created by Harrison Borges on 1/2/22.
//

import SwiftUI

struct MatterDetailView: View {
	var matter: Matter
	
	var body: some View {
		VStack(alignment: .leading) {
			Text(matter.committeeName)
				.font(.title)
			
			HStack {
				Text(matter.fileNumber)
				Spacer()
				Text("Introduced: \(matter.introducedAt)")
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
