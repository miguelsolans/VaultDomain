//
//  ScheduledOperationDTO.swift
//  VaultCore
//
//  Created by Miguel Solans on 06/10/2026.
//

import Foundation

public class ScheduledOperationDTO {
    
    public let id: UUID
    
    public let title: String
    
    public let amount: Double
    
    public let recurrence: RecurrenceType
    
    public let startDate: Date
    
    public let endDate: Date?
    
    public let nextOccurrenceDate: Date?
    
    public let occurrenceCount: Int32
    
    public let isActive: Bool
    
    public let createdAt: Date
    
    public let updatedAt: Date
    
    public let vault: VaultDTO
    
    public let category: CategoryDTO
    
    public init(
        id: UUID,
        title: String,
        amount: Double,
        recurrence: RecurrenceType,
        startDate: Date,
        endDate: Date?,
        nextOccurrenceDate: Date?,
        occurrenceCount: Int32,
        isActive: Bool,
        createdAt: Date,
        updatedAt: Date,
        vault: VaultDTO,
        category: CategoryDTO
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
