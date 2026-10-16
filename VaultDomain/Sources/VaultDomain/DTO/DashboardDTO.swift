//
//  DashboardDTO.swift
//  VaultCore
//
//  Created by Miguel Solans on 03/06/2026.
//

import Foundation

public struct DashboardDTO {
    
    public let id: UUID
    
    public let widgets: [DashboardWidgetDTO]
    
    public init(
        id: UUID,
        widgets: [DashboardWidgetDTO]
    ) {
        self.id = id
        self.widgets = widgets
    }
}

public struct DashboardWidgetDTO {
    
    public let id: UUID
    
    public let isVisible: Bool
    
    public let sortOrder: Int
    
    public let type: DashboardWidgetType
    
    public init(
        id: UUID,
        isVisible: Bool,
        sortOrder: Int,
        type: DashboardWidgetType
    ) {
        self.id = id
        self.isVisible = isVisible
        self.sortOrder = sortOrder
        self.type = type
    }
}
