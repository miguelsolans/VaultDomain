//
//  CashFlow.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct CashFlow {

    public let income: Income

    public let expenses: Decimal

    public let net: Decimal

    public let averageIncome: Decimal

    public let averageExpenses: Decimal

    public init(
        income: Income,
        expenses: Decimal,
        net: Decimal,
        averageIncome: Decimal,
        averageExpenses: Decimal
    ) {
        self.income = income
        self.expenses = expenses
        self.net = net
        self.averageIncome = averageIncome
        self.averageExpenses = averageExpenses
    }
}
