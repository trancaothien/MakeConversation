//
//  RegisterInteractor.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//


import Foundation

final class RegisterInteractor: RegisterInteractorProtocol {
    
    private let authService = AuthService.shared
    
    func signUp(email: String, password: String, firstname: String, lastname: String, success: @escaping () -> Void, error: @escaping (String) -> Void) {
        authService.signUp(email: email, password: password, firstname: firstname, lastname: lastname, success: success, error: error)
    }
}

// MARK: Private
extension RegisterInteractor {
    
}
