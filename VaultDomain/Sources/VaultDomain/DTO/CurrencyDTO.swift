//
//  CurrencyDTO.swift
//  Vault
//
//  Created by Miguel Solans on 20/04/2026.
//

import Foundation

public struct CurrencyDTO {
    
    public let id: UUID
    
    public let title: String
    
    public let code: String
    
    public let symbol: String
    
    public init(
        id: UUID,
        title: String,
        code: String,
        symbol: String
    ) {
        self.id = id
        self.title = title
        self.code = code
        self.symbol = symbol
    }
}
