//
//  Settings.swift
//  VaultCore
//
//  Created by Miguel Solans on 14/07/2026.
//

import Foundation

public struct Settings {

    public var favoriteVault: Vault?
    
    public init(
        favoriteVault: Vault? = nil
    ) {
        self.favoriteVault = favoriteVault
    }
}
