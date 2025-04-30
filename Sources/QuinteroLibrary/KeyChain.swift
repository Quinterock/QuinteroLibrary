//
//  KeyChain.swift
//  QuinteroLibrary
//
//  Created by Luis Quintero on 29/04/25.
//

import Foundation
import KeychainAccess

@discardableResult func saveKC(key: String, value: String) -> Bool {
    let keychain = Keychain(service: Constants.myKeychain) // Creamos el llavero del login
    keychain[key] = value // Obtenemos el token del llavero del login
    if let _ = keychain[key] {
        return true
    } else {
        return false
    }
}

func loadKC(key: String) -> String? {
    let keychain = Keychain(service: Constants.myKeychain)
    if let value = keychain[key] {
        return value
    } else {
        return ""
    }
}

func deleteKC(key: String) -> Bool {
    let keychain = Keychain(service: Constants.myKeychain)
    keychain[key] = nil
    return keychain[key] == nil
}

// Semantic Versioning

// 1.0.0

// MAJOR: Tiene que cambiar al menos el 80% del cod
