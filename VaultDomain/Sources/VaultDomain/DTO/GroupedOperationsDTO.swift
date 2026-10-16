//
//  GroupedOperationsDTO.swift
//  Vault
//
//  Created by Miguel Solans on 20/04/2026.
//

import Foundation

public struct GroupedOperationsDTO {
    
    public let date: Date
    
    public let operations: [OperationDTO]
    
    public init(
        date: Date, 
        operations: [OperationDTO]
    ) {
        self.date = date
        self.operations = operations
    }
}
