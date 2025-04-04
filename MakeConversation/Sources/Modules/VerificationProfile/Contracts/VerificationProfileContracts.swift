//
//  VerificationOTPContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import SwiftUI


// Router
protocol VerificationProfileRouterProtocol: RouterProtocol {
    func back()
    func goHome()
}

// Presenter
protocol VerificationProfilePresenterProtocol: PresenterProtocol {
    func backButtonDidTap()
    func saveButtonDidTap()
}

// Interactor
protocol VerificationProfileInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol VerificationProfileViewStateProtocol: ViewStateProtocol {
    func set(with presenter: VerificationProfilePresenterProtocol)
}
