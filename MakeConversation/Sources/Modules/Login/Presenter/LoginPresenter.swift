//
//  LoginPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import SwiftUI

final class LoginPresenter: LoginPresenterProtocol {
    
    private let router: LoginRouterProtocol
    private weak var viewState: LoginViewStateProtocol?
    private let interactor: LoginInteractorProtocol
    
    init(router: LoginRouterProtocol,
         interactor: LoginInteractorProtocol,
         viewState: LoginViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}

// MARK: For Router
extension LoginPresenter {
    
    func nextButtonDidTap(email: String, password: String, success: @escaping () -> Void, error: @escaping (String) -> Void) {
        self.interactor.signIn(email: email, password: password, success: success, error: error)
    }
    
    func backButtonDidTap() {
        self.router.backToPreviousScreen()
    }
    
    func createAccountButtonDidTap() {
        self.router.createAccountButtonDidTap()
    }
}
