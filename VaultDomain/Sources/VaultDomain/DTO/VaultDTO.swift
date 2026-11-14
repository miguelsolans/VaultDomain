//
//  VaultDTO.swift
//  Vault
//
//  Created by Miguel Solans on 20/04/2026.
//

import Foundation

public struct VaultDTO {
    
    public let id: UUID
    
    public let initialDeposit: Decimal
    
    public let name: String
    
    public let currentBalance: Decimal
    
    public let isDefault: Bool
    
    public let mainIncomeCategory: CategoryDTO?
    
    public init(
        id: UUID,
        initialDeposit: Decimal,
        name: String,
        currentBalance: Decimal,
        isDefault: Bool,
        mainIncomeCategory: CategoryDTO?
    ) {
        self.id = id
        self.initialDeposit = initialDeposit
        self.name = name
        self.currentBalance = currentBalance
        self.isDefault = isDefault
        self.mainIncomeCategory = mainIncomeCategory
    }
}
