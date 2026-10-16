//
//  SettingsDTO.swift
//  VaultCore
//
//  Created by Miguel Solans on 14/07/2026.
//

import Foundation

public struct SettingsDTO {

    public var favoriteVault: VaultDTO?
    
    public init(
        favoriteVault: VaultDTO? = nil
    ) {
        self.favoriteVault = favoriteVault
    }
}
