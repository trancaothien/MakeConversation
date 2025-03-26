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

// MARK: Function
extension VerificationOTPPresenter {
    func backButtonDidTap() {
        self.router.back()
    }
    
    func resendButtonDidTap() {
        // TODO: Call to interactor to process to resend OTP
    }
    
    func codeVerifyDidSend() {
        // TODO: Handle to call api / firebase to verify otp code
        self.router.goRegister()
    }
}
