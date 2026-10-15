//
//  GeneralError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

public enum GeneralError: LocalizedError {
    case invalidYear(Int)
    case invalidAmount
}

extension GeneralError {
    
    public var errorDescription: String? {
        
        switch self {
        case .invalidYear(let year):
            return "The specified year is invalid: \(year)"
            
        case .invalidAmount:
            return "The specified amount is invalid"
        }
    }
    
    public var failureReason: String? {
        ""
    }
    
    public var recoverySuggestion: String? {
        ""
    }
    
    public var helpAnchor: String? {
        ""
    }
}
