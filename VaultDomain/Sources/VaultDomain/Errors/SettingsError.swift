//
//  SettingsError.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

public enum SettingsError: LocalizedError {
    case notFound
}

extension SettingsError {
    
    public var errorDescription: String? {
        switch self {
            
        case .notFound:
            return "Could not find Settings"
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
