//
//  MonthlySavings.swift
//  VaultDomain
//
//  Created by Miguel Solans on 20/11/2026.
//

import UIKit

public struct MonthlySavings: Identifiable {
    
    public let month: YearMonth
    
    public let amount: Decimal

    public var id: YearMonth { month }
    
    public init(
        month: YearMonth,
        amount: Decimal
    ) {
        self.month = month
        self.amount = amount
    }
}

public struct YearMonth: Hashable, Comparable {
    
    public let year: Int
    
    public let month: Int

    public init(year: Int, month: Int) {
        self.year = year
        self.month = month
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        if lhs.year != rhs.year {
            return lhs.year < rhs.year
        }

        return lhs.month < rhs.month
    }
}
