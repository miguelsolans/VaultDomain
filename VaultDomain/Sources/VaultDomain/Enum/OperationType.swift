//
//  OperationType.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// Represents the type of a financial operation.
///
/// This enum distinguishes between operations from `income` and `expense`
public enum OperationType: Int16 {
    case income = 0, expense = 1
}
