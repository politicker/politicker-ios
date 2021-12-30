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
            
            ForEach(bills, id: \.self) { bill in
                BillListItem(bill: bill)
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
//                ForEach(bill.categories, id: \.self) { category in
//                    BillCategoryCapsule(text: BillCategory(rawValue: category)!)
//                }
                Spacer()
                Button {
//                    bill.liked = !bill.liked
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

struct BillCategoryCapsule: View {
    var text: BillCategory
    
    var color: Color {
        get {
            switch self.text {
            case .science:
                return Color.blue
            case .technology:
                return Color.green
            case .environment:
                return Color.yellow
            }
        }
    }
    
    var body: some View {
        Text(text.rawValue)
            .font(.caption)
            .padding(.leading, 10.0)
            .padding(.trailing, 10.0)
            .foregroundColor(.white)
            .background(color)
            .clipShape(Capsule())
    }
}

enum BillCategory: String {
    case science
    case technology
    case environment
}

struct BillListViews_Previews: PreviewProvider {    
    static var previews: some View {
//        BillListItem(bill: bill)
//        BillListView(title: "Bills", bills: bills)
//        BillListView(title: "No Bills", bills: Binding.constant([]))
        Text("Fix these to work with graphql")
    }
}
