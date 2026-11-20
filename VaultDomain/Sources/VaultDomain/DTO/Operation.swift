//
//  Operation.swift
//  Vault
//
//  Created by Miguel Solans on 18/04/2026.
//

import Foundation

public struct Operation {
    
    public let id: UUID
    
    public let amount: Decimal
    
    public let date: Date
    
    public let title: String
    
    public let notes: String?
    
    public let operationType: OperationType
    
    public let category: Category
    
    public let reimbursements: [Reimbursement]?
    
    public init(
        id: UUID,
        amount: Decimal,
        date: Date,
        title: String,
        notes: String?,
        operationType: OperationType,
        category: Category,
        reimbursements: [Reimbursement]?
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

public extension Operation {
    
    var totalReimbursements: Decimal {
        reimbursements?
            .reduce(.zero) { $0 + $1.amount } ?? .zero
    }
    
    var totalReimbursed: Decimal {
        reimbursements?
            .filter { $0.isSameVault && $0.status == .received }
            .reduce(.zero) { $0 + $1.amount } ?? .zero
    }

    var netAmount: Decimal {
        amount - totalReimbursed
    }
    
    var numberOfReimbursements: Int {
        reimbursements?.count ?? .zero
    }
    
    func numberOfReimbursements(for status: ReimbursementStatus) -> Int {
        guard let reimbursements else { return 0 }
        
        return reimbursements.reduce(.zero) {
            $1.status == status ? $0 + 1 : $0
        }
    }
}

public struct Reimbursement {
    
    public let id: UUID
    
    public var amount: Decimal
    
    public let notes: String
    
    public let status: ReimbursementStatus
    
    public let sourceVault: Vault
    
    public let destinationVault: Vault
    
    public let destinationCategory: Category?
    
    public var isSameVault: Bool {
        return sourceVault.id == destinationVault.id
    }

    public init(
        id: UUID,
        amount: Decimal,
        notes: String = "",
        status: ReimbursementStatus,
        sourceVault: Vault,
        destinationVault: Vault,
        destinationCategory: Category? = nil
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
