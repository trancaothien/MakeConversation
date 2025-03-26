//
//  VerificationContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI


// Router
protocol VerificationRouterProtocol: RouterProtocol {
    func backToPreviousScreen()
    func continueButtonDidTap(_ phoneNumber: String)
}

// Presenter
protocol VerificationPresenterProtocol: PresenterProtocol {
    func continueButtonDidTap(_ phoneNumber: String)
    func backButtonDidTap()
}

// Interactor
protocol VerificationInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol VerificationViewStateProtocol: ViewStateProtocol {
    func set(with presenter: VerificationPresenterProtocol)
}
