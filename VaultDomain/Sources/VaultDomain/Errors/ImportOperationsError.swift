//
//  ImportOperationsError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 18/11/2026.
//

import Foundation

public enum ImportOperationsError: LocalizedError {
    case invalidDate(String)
    
    case invalidAmount(String)
    
    case missingField(String)
    
    case invalidOperationType(String)
    
    case repositoryError(String)
    
    case fileAccessFailed
}

extension ImportOperationsError {
    
    public var errorDescription: String? {
        switch self {
        case .invalidDate(let value):
            return "Invalid date format: \(value)"
        case .invalidAmount(let value):
            return "Invalid amount format: \(value)"
        case .missingField(let value):
            return "Missing required field: \(value)"
        case .invalidOperationType(let value):
            return "Invalid operation type: \(value). Use 'expense' or 'income'"
        case .repositoryError(let value):
            return "Database error: \(value)"
        case .fileAccessFailed:
            return "Unable to access the CSV file"
        }
    }
}
