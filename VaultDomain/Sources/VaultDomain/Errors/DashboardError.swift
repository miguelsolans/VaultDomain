//
//  DashboardError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Errors that can occur when retrieving a dashboard.
public enum DashboardError: LocalizedError {

    /// No dashboard exists
    case notFound
}

extension DashboardError {

    public var errorDescription: String? {
        switch self {

        case .notFound:
            return "Could not find Dashboard."
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
