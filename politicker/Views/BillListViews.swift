//
//  BillListView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct BillListView: View {
	var title: String
	let bills: [Bill]
	
	let onLikeBill: (String) -> Void
	
	var body: some View {
		VStack(alignment: .leading) {
			Text(title)
				.font(.bold(.largeTitle)())
			
			Spacer()
			
			ForEach(bills) { bill in
				Text(bill.summary)
				BillListItem(bill: bill, onLikeBill: onLikeBill)
					.padding(.bottom, 20.0)
			}
		}.frame(
			minWidth: 0,
			maxWidth: .infinity,
			minHeight: 0,
			maxHeight: .infinity,
			alignment: .leading
		)
	}
}

struct BillListItem: View {
	var bill: Bill
	let onLikeBill: (String) -> Void
	
	@State private var showingAlert = false
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(bill.number)
					.font(.title3)
				Spacer()
				Text("3 days ago")
					.font(.caption)
			}
			HStack {
				Text(bill.shortTitle)
				Spacer()
				Text("\(bill.sponsorName) · \(bill.sponsorState) (\(bill.sponsorParty))")
			}.font(.subheadline).foregroundColor(Color.secondary)
			
			Text(bill.summary)
				.font(.body)
			
			HStack {
				Spacer()
				Button {
					onLikeBill(bill.id)
				} label: {
					if bill.liked {
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
