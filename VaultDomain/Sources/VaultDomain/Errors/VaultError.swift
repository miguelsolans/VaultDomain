//
//  VaultError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when retrieving or accessing a vault.
public enum VaultError: LocalizedError {

    /// No vault exists with the specified identifier.
    case notFound(UUID)
    
    /// Vault already exists
    case alreadyExists
}

extension VaultError {

    public var errorDescription: String? {

        switch self {

        case .notFound(let id):
            return "Could not find Vault with an ID \(id.uuidString)"
            
        case .alreadyExists:
            return "A Vault with a specified name already exists"
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
