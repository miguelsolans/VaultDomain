//
//  BudgetRole.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// The role of an expense category in a budgeting strategy.
///
/// Use this value to classify expenses according to their financial
/// purpose, such as essential needs, discretionary wants, or savings.
public enum BudgetRole: Int16 {
    
    /// The category has not been assigned a budgeting role.
    case unclassified = 0
    
    /// Expenses considered essential for everyday living.
    case needs = 1
    
    /// Discretionary expenses that improve quality of life.
    case wants = 2
    
    /// Expenses or allocations intended to build savings.
    case savings = 3
}
