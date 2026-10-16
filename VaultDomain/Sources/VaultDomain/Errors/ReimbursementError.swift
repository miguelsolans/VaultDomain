//
//  ReimbursementError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when retrieving or accessing a reimbursement.
public enum ReimbursementError: LocalizedError {

    /// No reimbursement exists with the specified identifier.
    case notFound(UUID)
}

extension ReimbursementError {

    public var errorDescription: String? {
        switch self {

        case .notFound(let id):
            return "Could not find Reimbursement with an ID \(id.uuidString)"
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
