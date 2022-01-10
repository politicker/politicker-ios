//
//  Matter.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import Foundation

struct Matters: Decodable {
	var matters: [Matter]
	
	init(_ matters: [DisplayableMatter]) {
		self.matters = matters.map({ matter -> Matter in
			return Matter(matter)
		})
	}
}

struct Matter: Identifiable, Decodable, Hashable {
	var id: String
	var shortDescription: String
	var longDescription: String
	var billWouldText: String
	var fileNumber: String
	var typeName: String
	var status: String
	var committeeName: String
	var postDate: Date
	var introducedAt: Date
	var enactmentNumber: String
	var likeCount: Int
	var liked: Bool
	
	init(_ matter: DisplayableMatter) {
		self.id = matter.id
		self.shortDescription = matter.shortDescription
		self.longDescription = matter.longDescription
		self.billWouldText = matter.billWould
		self.fileNumber = matter.fileNumber
		self.typeName = matter.typeName
		self.status = matter.status.rawValue
		self.committeeName = matter.committeeName
		self.enactmentNumber = matter.enactmentNumber
		self.likeCount = matter.likeCount
		self.liked = matter.liked

		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
		
		self.postDate = formatter.date(from: matter.postDate)!
		
		if let introducedAt = formatter.date(from: matter.introducedAt) {
			self.introducedAt = introducedAt
		} else {
			self.introducedAt = Date()
		}
	}
}

// MARK: Hashable & Equatable conforms
extension Matter {
	static func == (lhs: Matter, rhs: Matter) -> Bool {
		return lhs.id < rhs.id
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}
