//
//  ListOrdering.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

/// The ordering to apply when displaying a list of records.
public enum ListOrdering {
    
    /// Orders records from the lowest value to the highest value,
    /// or from the earliest date to the latest date, depending on context.
    case ascending
    
    /// Orders records from the highest value to the lowest value,
    /// or from the latest date to the earliest date, depending on context.
    case descending
    
    /// Groups or orders records according to their type.
    case type
}
