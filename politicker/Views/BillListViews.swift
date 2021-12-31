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
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.bold(.largeTitle)())
            
            Spacer()
            
            ForEach(bills) { bill in
                Text(bill.summary)
                BillListItem(bill: bill)
                    .padding(.bottom, 20.0)
                    .disabled(true)
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
//                    bill.liked = !bill.liked
                    print("hi")
                } label: {
                    if bill.liked {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.red)
                    } else {
                        Image(systemName: "heart")
                            .foregroundColor(Color.black)
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
