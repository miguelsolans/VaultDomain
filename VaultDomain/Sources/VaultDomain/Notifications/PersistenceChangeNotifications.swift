//
//  PersistenceChangeNotifications.swift
//  VaultDomain
//
//  Created by Miguel Solans on 12/11/2026.
//

import Foundation

public extension Notification.Name {

    static let importSuccessful = Notification.Name("CoreDataImportSuccessful")
    
    static let importError = Notification.Name("CoreDataImportError")

    static let exportSuccessful = Notification.Name("CoreDataExportSuccessful")
    
    static let exportError = Notification.Name("CoreDataExportError")

    static let dataChanged = Notification.Name("CoreDataChanged")

    static let syncDidBecomeIdle = Notification.Name("CoreDataSyncDidBecomeIdle")
}
