//
//  BillListView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct BillListView: View {
    var title: String
    @Binding var bills: [Bill]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.bold(.largeTitle)())
            
            Spacer()
            
            ForEach($bills, id: \.self) { bill in
                BillListItem(bill: bill)
                    .padding(.bottom, 20.0)
            }
        }
    }
}

struct BillListItem: View {
    @Binding var bill: Bill

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(bill.title)
                    .font(.title3)
                Spacer()
                Text(bill.updatedAt)
                    .font(.caption)
            }
            HStack {
                Text(bill.subTitle)
                Spacer()
                Text("\(bill.sponsor) · \(bill.state) (\(bill.party))")
            }.font(.subheadline).foregroundColor(Color.secondary)
            
            Text(bill.description)
                .font(.body)

            HStack {
                ForEach(bill.categories, id: \.self) { category in
                    BillCategoryCapsule(text: BillCategory(rawValue: category)!)
                }
                Spacer()
                Button {
                    bill.liked = !bill.liked
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
    static private var bill = Binding.constant(
        Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false)
    )
    
    static var bills = Binding.constant([
        Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false),
        
        Bill(title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"], liked: false)
    ])
    
    static var previews: some View {
        BillListItem(bill: bill)
        BillListView(title: "Bills", bills: bills)
    }
}