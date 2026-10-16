//
//  StoreKitError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when enforcing StoreKit purchase requirements.
public enum StoreKitError: LocalizedError {

    /// The requested feature requires an active subscription or a qualifying purchase.
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
