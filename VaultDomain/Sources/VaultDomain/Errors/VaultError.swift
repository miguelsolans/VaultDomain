//
//  VaultError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

public enum VaultError: LocalizedError {
    
    case notFound(UUID)
}

extension VaultError {
    
    public var errorDescription: String? {
        
        switch self {
            
        case .notFound(let id):
            return "Could not find Vault with an ID \(id.uuidString)"
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
