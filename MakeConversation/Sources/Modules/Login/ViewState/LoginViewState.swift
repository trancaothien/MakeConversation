//
//  VerificationViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI
import Combine

final class LoginViewState: ObservableObject, LoginViewStateProtocol {
    
    private let id = UUID()
    private var presenter: LoginPresenterProtocol?
    private var cancellables = Set<AnyCancellable>()
    
    @Published var password: String = ""
    @Published var email: String = ""
    
    @Published var backButtonDidTap: Bool = false
    @Published var nextButtonDidTap: Bool = false
    @Published var createAccountButtonDidTap: Bool = false
    @Published var enableContinueButton: Bool = false
    
    func set(with presener: LoginPresenterProtocol) {
        self.presenter = presener
    }
    
    init () {
        observeBackButtonTap()
        observeNextButtonTap()
        observeCreateAccountButtonTap()
    }
}

// MARK: Function
extension LoginViewState {
    
    private func observeCreateAccountButtonTap() {
        $createAccountButtonDidTap.sink(receiveValue: { value in
            if value {
                print("createAccountButtonDidTap Value: \(self.createAccountButtonDidTap)")
                self.presenter?.createAccountButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.backButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeNextButtonTap() {
        $nextButtonDidTap.sink(receiveValue: { value in
            if !value { return }
            self.presenter?.nextButtonDidTap(email: self.email, password: self.password, success: {
                
            }, error: { message in
                print(message)
            })
        })
        .store(in: &cancellables)
    }
}
