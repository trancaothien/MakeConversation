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
}

// Presenter
protocol LoginPresenterProtocol: PresenterProtocol {
    func nextButtonDidTap()
    func backButtonDidTap()
}

// Interactor
protocol LoginInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol LoginViewStateProtocol: ViewStateProtocol {
    func set(with presenter: LoginPresenterProtocol)
}
