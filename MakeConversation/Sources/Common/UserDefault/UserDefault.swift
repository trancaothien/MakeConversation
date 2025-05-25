//
//  UserDefault.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Foundation

// Centralize UserDefaults keys here
enum UserDefaultsKeys: String {
    case accessToken = "access_token"
    case refreshToken = "refresh_token"
}

class UserDefaultsManager {

    // Singleton instance to ensure single access point
    static let shared = UserDefaultsManager()

    private init() {}
    
    func saveAccessToken(token: String) {
        UserDefaults.standard.set(token, forKey: UserDefaultsKeys.accessToken.rawValue)
    }
    
    func saveRefreshToken(token: String) {
        UserDefaults.standard.set(token, forKey: UserDefaultsKeys.refreshToken.rawValue)
    }
    
    func getAccessToken() -> String? {
        UserDefaults.standard.string(forKey: UserDefaultsKeys.accessToken.rawValue)
    }
    
    func getRefreshToken() -> String? {
        UserDefaults.standard.string(forKey: UserDefaultsKeys.refreshToken.rawValue)
    }
}
