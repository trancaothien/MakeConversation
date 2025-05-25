//
//  RegisterContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import SwiftUI


// Router
protocol RegisterRouterProtocol: RouterProtocol {
    func submitButtonDidTap()
    func backToPreviousScreen()
    func continueButtonDidTap(_ phoneNumber: String)
}

// Presenter
protocol RegisterPresenterProtocol: PresenterProtocol {
    func continueButtonDidTap(_ phoneNumber: String)
    func submitButtonDidTap(email: String, password: String, firstname: String, lastname: String, success: @escaping() -> Void, error: @escaping(String) -> Void)
    func backButtonDidTap()
}

// Interactor
protocol RegisterInteractorProtocol: InteractorProtocol {
    func signUp(email: String, password: String, firstname: String, lastname: String, success: @escaping () -> Void, error: @escaping (String) -> Void)
}

// ViewState
protocol RegisterViewStateProtocol: ViewStateProtocol {
    func set(with presenter: RegisterPresenterProtocol)
}
