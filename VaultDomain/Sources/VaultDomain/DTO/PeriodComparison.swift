//
//  PeriodComparison.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct PeriodComparison {

    public let currentPeriod: AnalyticsPeriod

    public let previousPeriod: AnalyticsPeriod

    public let income: FinancialComparison

    public let expenses: FinancialComparison

    public let netSpending: FinancialComparison
    
    public init(
        currentPeriod: AnalyticsPeriod,
        previousPeriod: AnalyticsPeriod,
        income: FinancialComparison,
        expenses: FinancialComparison,
        netSpending: FinancialComparison
    ) {
        self.currentPeriod = currentPeriod
        self.previousPeriod = previousPeriod
        self.income = income
        self.expenses = expenses
        self.netSpending = netSpending
    }
    
}
