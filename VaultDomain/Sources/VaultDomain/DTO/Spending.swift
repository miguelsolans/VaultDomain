//
//  Spending.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct Spending {

    public let gross: Decimal

    public let reimbursements: ReimbursementBreakdown

    public let net: Decimal

    public let savings: Decimal

    public let savingEfficiency: Decimal

    public init(
        gross: Decimal,
        reimbursements: ReimbursementBreakdown,
        net: Decimal,
        savings: Decimal,
        savingEfficiency: Decimal
    ) {
        self.gross = gross
        self.reimbursements = reimbursements
        self.net = net
        self.savings = savings
        self.savingEfficiency = savingEfficiency
    }
}
