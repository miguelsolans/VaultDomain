//
//  ReimbursementStatus.swift
//  VaultDomain
//
//  Created by Miguel Solans on 15/10/2026.
//

import Foundation

/// The status of a reimbursement associated with a financial operation.
public enum ReimbursementStatus: Int16 {

    /// The reimbursement is expected but has not yet been received.
    case expected = 0

    /// The reimbursement has been received.
    case received = 1

    /// The reimbursement is no longer expected to be received.
    case cancelled = 2
}
