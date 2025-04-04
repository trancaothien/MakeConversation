//
//  VerificationOTPContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import SwiftUI


// Router
protocol VerificationOTPRouterProtocol: RouterProtocol {
    func back()
    func goHome()
    func goRegister()
}

// Presenter
protocol VerificationOTPPresenterProtocol: PresenterProtocol {
    func backButtonDidTap()
    func resendButtonDidTap()
    func codeVerifyDidSend()
    
}

// Interactor
protocol VerificationOTPInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol VerificationOTPViewStateProtocol: ViewStateProtocol {
    func set(with presenter: VerificationOTPPresenterProtocol)
}
