//
//  VerificationOTPPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 27/3/25
//
//

import SwiftUI

final class VerificationProfilePresenter: VerificationProfilePresenterProtocol {
    
    
    private let router: VerificationProfileRouterProtocol
    private weak var viewState: VerificationProfileViewStateProtocol?
    private let interactor: VerificationProfileInteractorProtocol
    
    init(router: VerificationProfileRouterProtocol,
         interactor: VerificationProfileInteractorProtocol,
         viewState: VerificationProfileViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
}

// MARK: Function
extension VerificationProfilePresenter {
    func backButtonDidTap() {
        self.router.back()
    }
    
    func saveButtonDidTap() {
        self.router.goHome()
    }
    
}
