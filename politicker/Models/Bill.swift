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
