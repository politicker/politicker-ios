//
//  BillStatusView.swift
//  politicker
//
//  Created by Harrison Borges on 1/1/22.
//

import SwiftUI

struct MatterStatusView: View {
	var status: String
	
	var body: some View {
		Text(status)
			.padding(2)
			.background(Color.red)
			.cornerRadius(5)
				 
	}
}

struct BillStatusView_Previews: PreviewProvider {
	static var previews: some View {
		MatterStatusView(status: "Passed")
	}
}
