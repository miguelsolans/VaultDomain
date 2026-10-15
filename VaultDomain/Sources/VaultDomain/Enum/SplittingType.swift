//
//  SplittingType.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// The method used to divide a financial operation among participants.
public enum SplittingType: Int16 {

    /// The operation is not split among multiple participants.
    case none = 0

    /// The amount assigned to each participant is specified manually.
    case manual = 1

    /// The operation amount is divided equally among all participants.
    case equal = 2
}
