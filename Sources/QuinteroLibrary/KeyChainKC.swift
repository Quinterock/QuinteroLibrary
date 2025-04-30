// The Swift Programming Language
// https://docs.swift.org/swift-book

import KeychainAccess

protocol KeyChainKC {
    func setKey(key: String, value: String) -> Bool
    func getKC(key: String) -> String?
    func removeKC(key: String) -> Bool
}

struct KeyChainLibrary: KeyChainKC {
    func setKey(key: String, value: String) -> Bool {
        saveKC(key: key, value: value)
    }
    
    func getKC(key: String) -> String? {
        loadKC(key: key)
    }
    
    func removeKC(key: String) -> Bool {
        deleteKC(key: key)
    }
}
