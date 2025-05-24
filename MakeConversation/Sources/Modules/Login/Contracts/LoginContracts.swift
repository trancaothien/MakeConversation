//
//  LoginContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import SwiftUI


// Router
protocol LoginRouterProtocol: RouterProtocol {
    func nextButtonDidTap()
    func backToPreviousScreen()
    func createAccountButtonDidTap()
}


// Presenter
protocol LoginPresenterProtocol: PresenterProtocol {
    func nextButtonDidTap(email: String, password: String, success: @escaping() -> Void, error: @escaping(String) -> Void)
    func backButtonDidTap()
    func createAccountButtonDidTap()
}

// Interactor
protocol LoginInteractorProtocol: InteractorProtocol {
    func signIn(email: String, password: String, success: @escaping() -> Void, error: @escaping(String) -> Void)
}

// ViewState
protocol LoginViewStateProtocol: ViewStateProtocol {
    func set(with presenter: LoginPresenterProtocol)
}
