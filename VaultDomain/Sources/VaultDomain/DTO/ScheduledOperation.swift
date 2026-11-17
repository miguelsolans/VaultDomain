//
//  ScheduledOperation.swift
//  VaultCore
//
//  Created by Miguel Solans on 06/10/2026.
//

import Foundation

public class ScheduledOperation {
    
    public let id: UUID
    
    public let title: String
    
    public let amount: Decimal
    
    public let recurrence: RecurrenceType
    
    public let startDate: Date
    
    public let endDate: Date?
    
    public let nextOccurrenceDate: Date?
    
    public let occurrenceCount: Int32
    
    public let isActive: Bool
    
    public let createdAt: Date
    
    public let updatedAt: Date
    
    public let vault: Vault
    
    public let category: Category
    
    public init(
        id: UUID,
        title: String,
        amount: Decimal,
        recurrence: RecurrenceType,
        startDate: Date,
        endDate: Date?,
        nextOccurrenceDate: Date?,
        occurrenceCount: Int32,
        isActive: Bool,
        createdAt: Date,
        updatedAt: Date,
        vault: Vault,
        category: Category
    ) {
        self.id = id
        self.title = title
        self.amount = amount
        self.recurrence = recurrence
        self.startDate = startDate
        self.endDate = endDate
        self.nextOccurrenceDate = nextOccurrenceDate
        self.occurrenceCount = occurrenceCount
        self.isActive = isActive
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.vault = vault
        self.category = category
    }
}
