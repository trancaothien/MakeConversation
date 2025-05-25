//
//  RegisterPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import SwiftUI

final class RegisterPresenter: RegisterPresenterProtocol {

    private let router: RegisterRouterProtocol
    private weak var viewState: RegisterViewStateProtocol?
    private let interactor: RegisterInteractorProtocol
    
    init(router: RegisterRouterProtocol,
         interactor: RegisterInteractorProtocol,
         viewState: RegisterViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}

// MARK: For Router
extension RegisterPresenter {
    
    func submitButtonDidTap(email: String, password: String, firstname: String, lastname: String, success: @escaping () -> Void, error: @escaping (String) -> Void) {
        self.interactor.signUp(email: email, password: password, firstname: firstname, lastname: lastname, success: success, error: error)
    }
    
    func submitButtonDidTap() {
        self.router.submitButtonDidTap()
    }
    
    func backButtonDidTap() {
        self.router.backToPreviousScreen()
    }
    
    func continueButtonDidTap(_ phoneNumber: String) {
        // TODO: Handle when tap on the Continue button
        self.router.continueButtonDidTap(phoneNumber)
    }
}
