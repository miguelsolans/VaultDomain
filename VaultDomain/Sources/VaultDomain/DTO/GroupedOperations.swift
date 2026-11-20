//
//  GroupedOperations.swift
//  Vault
//
//  Created by Miguel Solans on 20/04/2026.
//

import Foundation

public struct GroupedOperations {
    
    public let date: Date
    
    public let operations: [Operation]
    
    public init(
        date: Date, 
        operations: [Operation]
    ) {
        self.date = date
        self.operations = operations
    }
}

public extension GroupedOperations {
    
    var dailyChange: Decimal {
        operations.reduce(Decimal.zero) { result, operation in
            switch operation.category.operationType {
            case .income:
                result + operation.netAmount
            case .expense:
                result - operation.netAmount
            }
        }
    }
}
