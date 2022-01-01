//
//  BillsViewModel.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import Foundation
import Combine
import zlib

final class BillViewModel: ObservableObject {
	@Published var bills: [Bill] = []
	
	func fetch() {
		Network.shared.apollo.fetch(query: BillsQuery()) { result in
			switch result {
				case .success(let graphQLResult):
					if let bills = graphQLResult.data {
						self.bills = self.process(data: bills.bills)
					}
				case .failure(let error):
					print("Failure! Error: \(error)")
			}
		}
	}

	func likeBill(billId: String) {
		let createLike = CreateLikeMutation(
			input: CreateLikeInput(billId: billId)
		)
		
		Network.shared.apollo.perform(mutation: createLike) { result in
			switch result {
				case .success(let graphQLResult):
					guard let response = graphQLResult.data else {
						return
					}

					let updatedBill = response.createLike.bill.fragments.displayableBill
					
					print(self.bills.map { $0.id })
					
					self.bills = self.bills.map { bill in
						if bill.id == updatedBill.id {
							return Bill(updatedBill)
						}
						
						return bill
					}
					
//					print(graphQLResult)
				case.failure(let err):
					print(err)
			}
		}
	}
	
	func process(data: [BillsQuery.Data.Bill]) -> [Bill] {
		return Bills(
			data.map { $0.fragments.displayableBill }
		).bills
	}
	
	init() {
		fetch()
	}
}
