//
//  BillsViewModel.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import Foundation
import Combine

final class BillViewModel: ObservableObject {
    @Published var bills: [Bills.Bill] = []

    func fetch() {
        Network.shared.apollo.fetch(query: BillsQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
    
    func process(data: BillData) -> [Bills.Bill] {
        return Bills.Bill(data)
    }
    
    init() {
        fetch()
    }

}
