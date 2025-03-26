//
//  VerificationOTPViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import SwiftUI

final class VerificationOTPViewState: ObservableObject, VerificationOTPViewStateProtocol {
    private let id = UUID()
    private var presenter: VerificationOTPPresenterProtocol?

    
    func set(with presener: VerificationOTPPresenterProtocol) {
        self.presenter = presener
    }
    
    
}

// MARK: Function
extension VerificationOTPViewState {
    
//    func backButtonDidTap() {
//        self.presenter?.continueButtonDidTap()
//    }
//    
//    func continueButtonDidTap() {
//        // TODO: Handle when tap on the Continue button
//        self.presenter?.continueButtonDidTap()
//    }
}
