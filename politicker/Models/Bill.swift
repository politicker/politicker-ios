//
//  Bill.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

struct Bill: Hashable {
    var title: String
    var subTitle: String
    var sponsor: String
    var state: String
    var party: String
    var updatedAt: String
    
    var description: String
    var categories: [String]
    
    var liked: Bool
}

typealias BillData = BillsQuery.Data

struct Bills: Decodable {
    var bills: [Bill]

    init(_ bills: BillData?) {
        self.bills = bills?.bills.map({ bill -> Bills.Bill in
            Bill(bill)
        }) ?? []
    }
    
    struct Bill: Identifiable, Decodable {
        var id: String
        var shortTitle: String
        var sponsorName: String
        var sponsorParty: String
        var sponsorState: String
        var sponsorTitle: String
        var summary: String
        var statuses: [Status]
        var likes: [Like]
        var likeCount: Int

        init(_ bill: BillData.Bill) {
            self.id = bill.id
            self.shortTitle = bill.shortTitle
            self.sponsorName = bill.sponsorName
            self.sponsorParty = bill.sponsorParty
            self.sponsorState = bill.sponsorState
            self.sponsorTitle = bill.sponsorTitle
            self.summary = bill.summary
            self.likeCount = bill.likeCount
            
            self.statuses = bill.statuses.map { Status($0) }
            self.likes = bill.likes.map { Like($0) }
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
    }
}
