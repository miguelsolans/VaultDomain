//
//  RecurrenceType.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// The schedule used to determine when a scheduled operation occurs.
public enum RecurrenceType: Int16 {
    
    /// The operation occurs only once.
    case once = 0
    
    /// The operation repeats every week.
    case weekly = 1
    
    /// The operation repeats every month.
    case monthly = 2
    
    /// The operation repeats every year.
    case yearly = 3
}

