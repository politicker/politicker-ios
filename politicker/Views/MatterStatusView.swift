//
//  MatterStatusView.swift
//  politicker
//
//  Created by Harrison Borges on 1/1/22.
//

import SwiftUI

struct MatterStatusView: View {
	var status: String
	
	var color: Color {
		switch status.lowercased() {
			case "enacted", "committee", "approved", "adopted":
				return Color.green
			case "disapproved", "failed", "withdrawn":
				return Color.red
			case "special", "local", "hearing", "filed", "general", "received":
				return Color.yellow
			default:
				return Color.clear
		}
	}
	
	var body: some View {
		Text(status.capitalized)
			.padding(2)
			.background(color)
			.cornerRadius(5)
		
	}
}

struct MatterStatusView_Previews: PreviewProvider {
	static var previews: some View {
		MatterStatusView(status: "enacted")
	}
}
