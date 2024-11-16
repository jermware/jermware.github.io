//
//  Date-ShortDisplay.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 06/11/2024.
//

import Foundation

extension Date {
    /// Converts `Date` objects to the short display format e.g. 2024-11-04.
    public var asShortDisplay: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
}
