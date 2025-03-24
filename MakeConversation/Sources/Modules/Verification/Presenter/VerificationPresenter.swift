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
    
    func backButtonDidTap() {
        self.router.backToPreviousScreen()
    }
    
}
