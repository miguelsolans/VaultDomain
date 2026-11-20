//
//  CategoriesBreakdown.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct CategoriesBreakdown {
    
    public let income: [AmountPerCategory]
    
    public let grossExpenses: [AmountPerCategory]
    
    public let netExpenses: [AmountPerCategory]
    
    public init(
        income: [AmountPerCategory],
        grossExpenses: [AmountPerCategory],
        netExpenses: [AmountPerCategory]
    ) {
        self.income = income
        self.grossExpenses = grossExpenses
        self.netExpenses = netExpenses
    }
    
}

extension CategoriesBreakdown {
    
    public var totalIncome: Decimal {
        get {
            income.reduce(0) { $0 + $1.amount }
        }
    }
    
    public var totalGrossExpenses: Decimal {
        get {
            grossExpenses.reduce(0) { $0 + $1.amount }
        }
    }
    
    public var totalNetExpenses: Decimal {
        get {
            netExpenses.reduce(0) { $0 + $1.amount }
        }
    }
}
