//
//  AppLaunchSource.swift
//  VaultDomain
//
//  Created by itsector on 25/10/2026.
//

import Foundation

/// The source from which the app was launched.
public enum AppLaunchSource {

    /// The app was launched directly by the user, typically from its app icon.
    case appIcon

    /// The app was launched through an Apple Shortcut or App Intent.
    case shortcut
}
