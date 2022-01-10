//
// Created by Harrison Borges on 1/9/22.
//

import Foundation
import Combine

class MattersListViewModel: ObservableObject {
    @Published public var matters: [MatterShort]?

    func fetchMatters() {
        Network.shared.apollo.fetch(query: MattersQuery()) { [weak self] result in
            switch result {
            case .success(let result):
                self?.matters = result.data?.matters.compactMap { $0.fragments.matterShort }
            case .failure(let error):
                print("GraphQL query error: \(error)")
            }
        }
    }
}