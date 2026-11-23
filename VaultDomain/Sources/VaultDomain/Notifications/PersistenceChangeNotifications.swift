//
//  PersistenceChangeNotifications.swift
//  VaultDomain
//
//  Created by Miguel Solans on 18/04/2026.
//

public enum CloudKitAccountAvailability: Sendable {
    case available
    case noAccount
    case restricted
    case temporarilyUnavailable
    case couldNotDetermine
}

public enum PersistenceSyncState: Equatable, Sendable {
    case storeLoading
    case storeLoaded
    case checkingAccount
    case waitingForImport
    case importInProgress
    case importSucceeded
    case importFailed
    case accountUnavailable(CloudKitAccountAvailability)
}

extension CloudKitAccountAvailability: Equatable {}

public enum PersistenceChange: Sendable {
    case dataChanged
    case syncStateChanged(PersistenceSyncState)
}

public protocol PersistenceChangeObserver: AnyObject {
    func persistenceChangeDidOccur(_ change: PersistenceChange)
}

public protocol PersistenceChangeObserving: AnyObject {
    var syncState: PersistenceSyncState { get }

    func addObserver(_ observer: PersistenceChangeObserver, replayCurrentState: Bool)
    func removeObserver(_ observer: PersistenceChangeObserver)
    func checkCloudKitAccount() async -> CloudKitAccountAvailability
    func retryCloudKitSyncCheck() async -> CloudKitAccountAvailability
}
