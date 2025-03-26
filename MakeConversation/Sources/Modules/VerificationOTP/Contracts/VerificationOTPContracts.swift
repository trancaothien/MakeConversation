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
    func backToPreviousScreen()
}

// Presenter
protocol VerificationOTPPresenterProtocol: PresenterProtocol {
    
}

// Interactor
protocol VerificationOTPInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol VerificationOTPViewStateProtocol: ViewStateProtocol {
    func set(with presenter: VerificationOTPPresenterProtocol)
}
