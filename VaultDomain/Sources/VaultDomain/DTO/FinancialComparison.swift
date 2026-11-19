//
//  FinancialComparison.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct FinancialComparison {

    public let current: Decimal

    public let previous: Decimal

    public init(
        current: Decimal,
        previous: Decimal
    ) {
        self.current = current
        self.previous = previous
    }
}

public extension FinancialComparison {
    
    var difference: Decimal {
        current - previous
    }
    
    var percentageChange: Decimal? {
        
        guard previous != .zero else {
            return nil
        }
        
        return ((current - previous) / previous)
    }
}
