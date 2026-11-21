# VaultDomain - Agent Instructions

## Purpose

VaultDomain contains the core domain definitions
of the Vault application.

It defines the business concepts, domain models,
enums and domain errors used throughout the system.

## Responsibilities

- Define domain models.
- Define domain enums and value types.
- Define domain errors.
- Represent business concepts independently
  of their persistence implementation.

## Architectural Rules

- Must not depend on VaultCore.
- Must not depend on VaultData.
- Must not depend on UIKit or SwiftUI.
- Must not import CoreData.
- Must not contain persistence logic.
- Must not contain presentation logic.
- Avoid external dependencies.

## Implementation Guidelines

- Prefer value types where appropriate.
- Use strong typing for domain concepts.
- Keep models focused and cohesive.
- Avoid unnecessary abstractions.
- Do not introduce DTOs without architectural
  justification.

## Before Making Changes

Inspect existing domain models and usages across
the repository.

Consider the impact of domain changes on
VaultCore, VaultData and VaultApp.
