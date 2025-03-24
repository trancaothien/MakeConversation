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
    
    func set(with presener: VerificationPresenterProtocol) {
        self.presenter = presener
    }
    
    func backButtonDidTap() {
        self.presenter?.backButtonDidTap()
    }
}
