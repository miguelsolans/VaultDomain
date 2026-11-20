//
//  ReimbursementBreakdown.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct ReimbursementBreakdown {

    public let expected: Decimal

    public let received: Decimal

    public let cancelled: Decimal

    public let sameVault: Decimal

    public let crossVault: Decimal

    public init(
        expected: Decimal,
        received: Decimal,
        cancelled: Decimal,
        sameVault: Decimal,
        crossVault: Decimal
    ) {
        self.expected = expected
        self.received = received
        self.cancelled = cancelled
        self.sameVault = sameVault
        self.crossVault = crossVault
    }
}
