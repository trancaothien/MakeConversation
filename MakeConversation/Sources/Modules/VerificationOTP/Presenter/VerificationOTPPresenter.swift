//
//  VerificationOTPPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import SwiftUI

final class VerificationOTPPresenter: VerificationOTPPresenterProtocol {
    
    private let router: VerificationOTPRouterProtocol
    private weak var viewState: VerificationOTPViewStateProtocol?
    private let interactor: VerificationOTPInteractorProtocol
    
    init(router: VerificationOTPRouterProtocol,
         interactor: VerificationOTPInteractorProtocol,
         viewState: VerificationOTPViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
    
}

// MARK: For Router
extension VerificationOTPPresenter {
    
    func backButtonDidTap() {
        self.router.backToPreviousScreen()
    }
//    
//    func continueButtonDidTap() {
//        // TODO: Handle when tap on the Continue button
//    }
}
