//
//  Date-LongDisplay.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation

extension Date {
    /// Converts `Date` objects to the long display format e.g. November 4, 2024.
    public var asLongDisplay: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter.string(from: self)
    }
}
