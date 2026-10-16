//
//  WidgetError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 16/10/2026.
//

import Foundation

public enum WidgetError: LocalizedError {
    
    /// No widget exists
    case notFound
    
    public var errorDescription: String? {
        switch self {
        case .notFound:
            return "Could not find Widget."
        }
    }
}
