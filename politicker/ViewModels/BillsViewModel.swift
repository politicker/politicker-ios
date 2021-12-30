//
//  BillsViewModel.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import Foundation
import Combine

final class BillViewModel: ObservableObject {
    @Published var bills: [Bill] = []
    
    func fetch() {
        Network.shared.apollo.fetch(query: BillsQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                
                if let bills = graphQLResult.data {
                    self.bills = self.process(data: bills)
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    func process(data: BillData) -> [Bill] {
        return Bills(data).bills
    }
    
    init() {
        fetch()
    }
    
}
