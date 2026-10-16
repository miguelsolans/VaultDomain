//
//  VaultDTO.swift
//  Vault
//
//  Created by Miguel Solans on 20/04/2026.
//

import Foundation

public struct VaultDTO {
    
    public let id: UUID
    
    public let initialDeposit: Double
    
    public let name: String
    
    public let currentBalance: Double
    
    public let isDefault: Bool
    
    public let currency: CurrencyDTO
    
    public let mainIncomeCategory: CategoryDTO?
    
    public init(
        id: UUID,
        initialDeposit: Double,
        name: String,
        currentBalance: Double,
        isDefault: Bool,
        currency: CurrencyDTO,
        mainIncomeCategory: CategoryDTO?
    ) {
        self.id = id
        self.initialDeposit = initialDeposit
        self.name = name
        self.currentBalance = currentBalance
        self.isDefault = isDefault
        self.currency = currency
        self.mainIncomeCategory = mainIncomeCategory
    }
}
