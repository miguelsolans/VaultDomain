//
//  AnalyticsPeriod.swift
//  VaultDomain
//
//  Created by Miguel Solans on 19/11/2026.
//

import Foundation

public struct AnalyticsPeriod {
    
    public let startDate: Date?
    
    public let endDate: Date?
    
    public let interval: Interval
    
    public let isEmpty: Bool
    
    public init(
        startDate: Date?,
        endDate: Date?,
        interval: Interval,
        isEmpty: Bool
    ) {
        self.startDate = startDate
        self.endDate = endDate
        self.interval = interval
        self.isEmpty = isEmpty
    }
}
