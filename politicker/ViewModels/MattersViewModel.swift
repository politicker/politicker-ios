//
//  BillsViewModel.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//
import Combine

final class MattersViewModel: ObservableObject {
	@Published var matters: [Matter] = []
	
	func fetch() {
		Network.shared.apollo.fetch(query: MattersQuery()) { result in
			switch result {
				case .success(let graphQLResult):
					if let matters = graphQLResult.data {
						self.matters = self.process(data: matters.matters)
					}
				case .failure(let err):
					print(err)
			}
		}
	}

	func createLike(matterId: String) {
		let createLike = CreateLikeMutation(
			input: CreateLikeInput(matterId: matterId)
		)

		Network.shared.apollo.perform(mutation: createLike) { result in
			switch result {
				case .success(let graphQLResult):
					guard let response = graphQLResult.data else {
						print("GraphQL result missing data")
						return
					}

					let updatedMatter = response.createLike.matter.fragments.displayableMatter
					self.matters = self.matters.map { matter in
						if matter.id == updatedMatter.id {
							return Matter(updatedMatter)
						}
						
						return matter
					}
				case.failure(let err):
					print(err)
			}
		}
	}
	
	func process(data: [MattersQuery.Data.Matter]) -> [Matter] {
		return Matters(
			data.map { $0.fragments.displayableMatter }
		).matters
	}
	
	init() {
		fetch()
	}
}
