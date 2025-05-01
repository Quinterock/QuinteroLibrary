// The Swift Programming Language
// https://docs.swift.org/swift-book

import KeychainAccess

public protocol KeyChainKC {
    func setKey(key: String, value: String) -> Bool
    func getKC(key: String) -> String?
    func removeKC(key: String) -> Bool
}

public class KeyChainManager: KeyChainKC {
    public static var shared: KeyChainKC {
        return KeyChainManager()
    }
    
    public init() {}
    
    public func setKey(key: String, value: String) -> Bool {
        saveKC(key: key, value: value)
    }
    
    public func getKC(key: String) -> String? {
        loadKC(key: key)
    }
    
    public func removeKC(key: String) -> Bool {
        deleteKC(key: key)
    }
    
}

// Alternativa sin manager
public struct KeyChain: KeyChainKC {
    
    public init() {}
    
    public func setKey(key: String, value: String) -> Bool {
        saveKC(key: key, value: value)
    }
    
    public func getKC(key: String) -> String? {
        loadKC(key: key)
    }
    
    public func removeKC(key: String) -> Bool {
        deleteKC(key: key)
    }
}
