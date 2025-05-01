//
//  AuthService.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 1/5/25.
//

import Foundation

protocol AuthServiceProtocol {
    func signInWithMail(mail: String, password: String)
    func signUpWithMail(mail: String, password: String)
    func changePassword(oldPassword: String, newPassword: String)
    func forgotPassword(mail: String, latestPassword: String)
    func signOut()
    
}

final class AuthService {
    static let shared = AuthService()
}

extension AuthService: AuthServiceProtocol {
    
    func signInWithMail(mail: String, password: String) {
            
    }
    
    func signUpWithMail(mail: String, password: String) {
            
    }
    
    func changePassword(oldPassword: String, newPassword: String) {
            
    }
    
    func forgotPassword(mail: String, latestPassword: String) {
            
    }
    
    func signOut() {
            
    }
}
