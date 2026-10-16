//
//  OperationType.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// The financial direction of an operation recorded in a vault.
public enum OperationType: Int16 {
    
    /// Money received by the vault.
    case income = 0
    
    /// Money spent from the vault.
    case expense = 1
}
