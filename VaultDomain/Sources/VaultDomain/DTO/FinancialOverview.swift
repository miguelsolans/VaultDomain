//
//  FinancialOverview.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

/// Groups the financial metrics calculated for a vault.
public struct FinancialOverview {
    
    /// Metrics describing the selected statistics period.
    public let period: AnalyticsPeriod

    /// Metrics describing the vault's current balance.
    public let balance: Balance

    /// Metrics describing income and expenses over the selected period.
    public let cashFlow: CashFlow

    /// Metrics describing the vault's net spending.
    public let spending: Spending

    /// Metrics describing the distribution of operations across categories.
    public let categories: CategoriesBreakdown
    
    public let periodComparison: PeriodComparison
    
    public init(
        period: AnalyticsPeriod,
        balance: Balance,
        cashFlow: CashFlow,
        spending: Spending,
        categories: CategoriesBreakdown,
        periodComparison: PeriodComparison
    ) {
        self.period = period
        self.balance = balance
        self.cashFlow = cashFlow
        self.spending = spending
        self.categories = categories
        self.periodComparison = periodComparison
    }
}
