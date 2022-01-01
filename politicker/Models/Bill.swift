//
//  Bill.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

struct Bills: Decodable {
    var bills: [Bill]

    init(_ bills: [DisplayableBill]) {
        self.bills = bills.map({ bill -> Bill in
            return Bill(bill)
        })
    }
}

struct Bill: Identifiable, Decodable, Hashable {
    var id: String
    var shortTitle: String
    var sponsorName: String
    var sponsorParty: String
    var sponsorState: String
    var summary: String
    var number: String
    var categories: [Category]
    var likeCount: Int
    var liked: Bool

    init(_ bill: DisplayableBill) {
        self.id = bill.id
        self.shortTitle = bill.shortTitle
        self.sponsorName = bill.sponsorName
        self.sponsorParty = bill.sponsorParty
        self.sponsorState = bill.sponsorState
        self.number = bill.number
        self.summary = bill.summary
        self.likeCount = bill.likeCount
        self.liked = bill.liked
        
        self.categories = bill.categories.map { Category($0) }
    }

    struct Category: Identifiable, Decodable {
        var id: String
        var name: String
        
        init(_ category: DisplayableBill.Category) {
            self.id = category.id
            self.name = category.name
        }
    }
}

// Hashable & Equatable conforms
extension Bill {
    static func == (lhs: Bill, rhs: Bill) -> Bool {
        return lhs.id < rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
