//
//  DateExtensions.swift
//  politicker
//
//  Created by Harrison Borges on 1/9/22.
//
import Foundation

extension Date {
		func timeAgoDisplay() -> String {
				let formatter = RelativeDateTimeFormatter()
				formatter.unitsStyle = .full
				return formatter.localizedString(for: self, relativeTo: Date())
		}
}
