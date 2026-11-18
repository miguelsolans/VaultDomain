//
//  Period.swift
//  VaultDomain
//
//  Created by Miguel Solans on 18/11/2026.
//

import Foundation

public enum Period: Int {
    case yearly = 0
    case monthly

    public var title: String {
        switch self {
        case .yearly:
            return "Yearly"
        case .monthly:
            return "Monthly"
        }
    }
}
