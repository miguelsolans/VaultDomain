//
//  CategoryDTO.swift
//  Vault
//
//  Created by Miguel Solans on 20/04/2026.
//

import Foundation

public struct CategoryDTO {
    
    public let id: UUID
    
    public let title: String
    
    public let notes: String
    
    public let operationType: OperationType
    
    public let visibleInPlot: Bool
    
    public let emoji: String
    
    public let color: String
    
    public let hasOperations: Bool
    
    public let numberOfOperations: Int
    
    public let totalAmount: Double

    public let netAmount: Double
    
    public let isMainIncome: Bool
    
    public let isArchived: Bool
    
    public var aiBulletString: String {
        return "- \(title)"
    }
    
    public init(
        id: UUID,
        title: String,
        notes: String,
        operationType: OperationType,
        visibleInPlot: Bool,
        emoji: String,
        color: String,
        hasOperations: Bool,
        numberOfOperations: Int,
        totalAmount: Double,
        netAmount: Double,
        isMainIncome: Bool,
        isArchived: Bool
    ) {
        self.id = id
        self.title = title
        self.notes = notes
        self.operationType = operationType
        self.visibleInPlot = visibleInPlot
        self.emoji = emoji
        self.color = color
        self.hasOperations = hasOperations
        self.numberOfOperations = numberOfOperations
        self.totalAmount = totalAmount
        self.netAmount = netAmount
        self.isMainIncome = isMainIncome
        self.isArchived = isArchived
    }
}
