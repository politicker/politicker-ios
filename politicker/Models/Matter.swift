//
//  Matter.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

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
	var lastModifiedAt: String
	var introducedAt: String
	var passedAt: String
	var enactedAt: String
	var agendaDate: String
	var enactmentNumber: String
	var updatedAt: String
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
		self.lastModifiedAt = matter.lastModifiedAt
		self.introducedAt = matter.introducedAt
		self.passedAt = matter.passedAt
		self.enactedAt = matter.enactedAt
		self.agendaDate = matter.agendaDate
		self.enactmentNumber = matter.enactmentNumber
		self.updatedAt = matter.updatedAt
		self.likeCount = matter.likeCount
		self.liked = matter.liked
	}
}

// Hashable & Equatable conforms
extension Matter {
	static func == (lhs: Matter, rhs: Matter) -> Bool {
		return lhs.id < rhs.id
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}
