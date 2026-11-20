//
//  Balance.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct Balance {
    
    public let initialDeposit: Decimal
    
    public let current: Decimal
    
    public init(
        initialDeposit: Decimal,
        current: Decimal
    ) {
        self.initialDeposit = initialDeposit
        self.current = current
    }
}
