//
//  Income.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct Income {

    public let total: Decimal

    public let main: Decimal?

    public let other: Decimal?

    public init(
        total: Decimal,
        main: Decimal?,
        other: Decimal?
    ) {
        self.total = total
        self.main = main
        self.other = other
    }
}
