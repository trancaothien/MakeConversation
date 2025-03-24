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
}

// Presenter
protocol VerificationPresenterProtocol: PresenterProtocol {
    func backButtonDidTap()
}

// Interactor
protocol VerificationInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol VerificationViewStateProtocol: ViewStateProtocol {
    func set(with presenter: VerificationPresenterProtocol)
}
