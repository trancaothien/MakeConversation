//
//  VerificationPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI

final class VerificationPresenter: VerificationPresenterProtocol {
    
    private let router: VerificationRouterProtocol
    private weak var viewState: VerificationViewStateProtocol?
    private let interactor: VerificationInteractorProtocol
    
    init(router: VerificationRouterProtocol,
         interactor: VerificationInteractorProtocol,
         viewState: VerificationViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}

// MARK: For Router
extension VerificationPresenter {
    
    func backButtonDidTap() {
        self.router.backToPreviousScreen()
    }
    
    func continueButtonDidTap() {
        // TODO: Handle when tap on the Continue button
        self.router.continueButtonDidTap()
    }
}
