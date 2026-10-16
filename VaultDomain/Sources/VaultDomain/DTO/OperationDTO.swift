//
//  OperationDTO.swift
//  Vault
//
//  Created by Miguel Solans on 18/04/2026.
//

import Foundation

public struct OperationDTO {
    
    public let id: UUID
    
    public let amount: Double
    
    public let date: Date
    
    public let title: String
    
    public let notes: String?
    
    public let operationType: OperationType
    
    public let category: CategoryDTO
    
    public let reimbursements: [ReimbursementDTO]?
    
    public var numberOfReimbursements: Int {
        reimbursements?.count ?? 0
    }
    
    public var numberOfExpectedReimbursements: Int {
        guard let reimbursements else { return 0 }
        
        return reimbursements.reduce(0) {
            $1.status == .expected ? $0 + 1 : $0
        }
    }
    
    public var totalReimbursed: Double {
        reimbursements?
            .filter { $0.isSameVault && $0.status == .received }
            .reduce(0) { $0 + $1.amount } ?? 0
    }

    public var netAmount: Double {
        amount - totalReimbursed
    }
    
    
    public init(
        id: UUID,
        amount: Double,
        date: Date,
        title: String,
        notes: String?,
        operationType: OperationType,
        category: CategoryDTO,
        reimbursements: [ReimbursementDTO]?
    ) {
        self.id = id
        self.amount = amount
        self.date = date
        self.title = title
        self.notes = notes
        self.operationType = operationType
        self.category = category
        self.reimbursements = reimbursements
    }
}

public struct ReimbursementDTO {
    
    public let id: UUID
    
    public var amount: Double
    
    public let notes: String
    
    public let status: ReimbursementStatus
    
    public let sourceVault: VaultDTO
    
    public let destinationVault: VaultDTO
    
    public let destinationCategory: CategoryDTO?
    
    public var isSameVault: Bool {
        return sourceVault.id == destinationVault.id
    }

    public init(
        id: UUID,
        amount: Double,
        notes: String = "",
        status: ReimbursementStatus,
        sourceVault: VaultDTO,
        destinationVault: VaultDTO,
        destinationCategory: CategoryDTO? = nil
    ) {
        self.id = id
        self.amount = amount
        self.notes = notes
        self.status = status
        self.sourceVault = sourceVault
        self.destinationVault = destinationVault
        self.destinationCategory = destinationCategory
    }
}
