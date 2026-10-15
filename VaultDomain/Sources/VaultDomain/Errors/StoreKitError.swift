//
//  StoreKitError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

public enum StoreKitError: LocalizedError {
    case subscriptionRequired
}

extension StoreKitError {
    
    public var errorDescription: String? {
        
        switch self {
        case .subscriptionRequired:
            return "This feature requires an active subscription or purchase."
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
