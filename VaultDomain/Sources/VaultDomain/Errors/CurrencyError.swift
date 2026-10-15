//
//  CurrencyError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when retrieving a currency.
public enum CurrencyError: LocalizedError {

    /// No currency exists with the specified identifier.
    case notFound(String)
}

extension CurrencyError {

    public var errorDescription: String? {
        switch self {
        case .notFound(let id):
            return "Could not find Currency with an ID \(id)"
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
