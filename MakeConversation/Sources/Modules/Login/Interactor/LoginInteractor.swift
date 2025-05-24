//
//  LoginInteractor.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//


import Foundation

final class LoginInteractor: LoginInteractorProtocol {
    
    private let authService = AuthService.shared
    
    func signIn(email: String, password: String, success: @escaping () -> Void, error: @escaping (String) -> Void) {
        authService.signIn(email: email, password: password, success: success, error: error)
    }
}
