//
//  Bill.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

typealias BillData = BillsQuery.Data

struct Bills: Decodable {
    var bills: [Bill]

    init(_ bills: BillData?) {
        self.bills = bills?.bills.map({ bill -> Bill in
            Bill(bill)
        }) ?? []
    }
}

struct Bill: Identifiable, Decodable, Hashable {
    var id: String
    var shortTitle: String
    var sponsorName: String
    var sponsorParty: String
    var sponsorState: String
    var sponsorTitle: String
    var summary: String
    var number: String
    var statuses: [Status]
    var likes: [Like]
    var categories: [Category]
    var likeCount: Int
    var liked: Bool

    init(_ bill: BillData.Bill) {
        self.id = bill.id
        self.shortTitle = bill.shortTitle
        self.sponsorName = bill.sponsorName
        self.sponsorParty = bill.sponsorParty
        self.sponsorState = bill.sponsorState
        self.sponsorTitle = bill.sponsorTitle
        self.number = bill.number
        self.summary = bill.summary
        self.likeCount = bill.likeCount
        self.liked = bill.liked
        
        self.statuses = bill.statuses.map { Status($0) }
        self.likes = bill.likes.map { Like($0) }
        self.categories = bill.categories.map { Category($0) }
    }
    
    struct Status: Identifiable, Decodable {
        var id: String
        
        init(_ status: BillData.Bill.Status) {
            self.id = status.id
        }
    }

    struct Like: Identifiable, Decodable {
        var id: String
        
        init(_ like: BillData.Bill.Like) {
            self.id = like.id
        }
    }

    struct Category: Identifiable, Decodable {
        var id: String
        var name: String
        
        init(_ category: BillData.Bill.Category) {
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
