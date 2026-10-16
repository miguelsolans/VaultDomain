//
//  AmountPerCategory.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

public struct AmountPerCategory: Identifiable {
    
    public let id: UUID

    public let title: String
    
    public let amount: Double
    
    public let hexColor: String
    
    public init(
        id: UUID,
        title: String,
        amount: Double,
        hexColor: String
    ) {
        self.id = id
        self.title = title
        self.amount = amount
        self.hexColor = hexColor
    }
}
