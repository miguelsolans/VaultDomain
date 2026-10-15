//
//  GeneralError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when validating general financial data.
public enum GeneralError: LocalizedError {

    /// The specified year is not valid for the requested operation.
    case invalidYear(Int)

    /// The specified monetary amount is not valid for the requested operation.
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
