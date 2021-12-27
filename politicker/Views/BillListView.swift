//
//  BillListView.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import SwiftUI

struct BillListView: View {
    var body: some View {
        Text("Bills")
            .font(.largeTitle)
    }
}

struct BillListItem: View {
    var title: String
    var subTitle: String
    var sponsor: String
    var state: String
    var party: String
    var updatedAt: String
    
    var description: String
    var categories: [String]
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title3)
                Spacer()
                Text(updatedAt)
                    .font(.caption)
            }
            HStack {
                Text(subTitle)
                
                HStack {
                    Text("\(sponsor) · \(state) (\(party))")
                }
            }.font(.subheadline).foregroundColor(Color.secondary)
            
            Text(description)
                .font(.caption)
            
            HStack {
                ForEach(categories, id: \.self) { category in
                    BillCategoryCapsule(text: BillCategory(rawValue: category)!)
                }
                Spacer()
                Image(systemName: "heart")
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

struct BillListView_Previews: PreviewProvider {
    static var previews: some View {
        BillListItem(
            title: "H.RES.859", subTitle: "Introduced 2020-01-05", sponsor: "Doris Matsui", state: "CA", party: "D", updatedAt: "Updated 3 days ago", description: "To ensure that goods made with forced labor in the Xinjiang Uyghur Autonomous Region of the People's Republic of China do not enter the United States market, and for other purposes.", categories: ["science", "technology"]
        )
    }
}
