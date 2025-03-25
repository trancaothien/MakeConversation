//
//  VerificationViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI

final class VerificationViewState: ObservableObject, VerificationViewStateProtocol {    
    private let id = UUID()
    private var presenter: VerificationPresenterProtocol?
    
//    @Binding private var phoneNumber: String
    
    func set(with presener: VerificationPresenterProtocol) {
        self.presenter = presener
    }
    
    
}

// MARK: Function
extension VerificationViewState {
    
    func backButtonDidTap() {
        self.presenter?.continueButtonDidTap()
    }
    
    func continueButtonDidTap() {
        // TODO: Handle when tap on the Continue button
        self.presenter?.continueButtonDidTap()
    }
}
