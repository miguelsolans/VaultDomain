//
//  CategoryError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

public enum CategoryError: LocalizedError {
    case notFound(UUID)
    case alreadyExists(String)
}

extension CategoryError {
    
    public var errorDescription: String? {
        switch self {
            
        case .notFound(let id):
            return "Could not find Category with an ID \(id.uuidString)"
        
        case .alreadyExists(let name):
            return "A category of name \(name) already exists"
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
