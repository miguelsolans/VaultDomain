//
//  CategoryError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when performing operations on a category.
public enum CategoryError: LocalizedError {

    /// No category exists with the specified identifier.
    case notFound(UUID)

    /// A category with the specified name already exists.
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
