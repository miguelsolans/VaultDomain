//
//  ArchiveFilter.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// A filter for selecting records based on their archival state.
public enum ArchiveFilter {
    
    /// Includes both active and archived records.
    case any
    
    /// Includes only records that have not been archived.
    case active
    
    /// Includes only records that have been archived.
    case archived
}
