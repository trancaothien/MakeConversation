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
    @Published var isShowing: Bool = false
    @Published var changeColorUI: Color = .green
    
    @Published var countryCode: String = (countryCodes["VietName"] ?? "+84")
    @Published var phoneNumber: String = ""
    @Published var backButtonDidTap: Bool = false
    @Published var nextButtonDidTap: Bool = false
    @Published var continueButtonDidTap: Bool = false
    @Published var enableContinueButton: Bool = false
    
    func set(with presener: LoginPresenterProtocol) {
        self.presenter = presener
    }
    
    init () {
        observeBackButtonTap()
        observePhoneNumberChanged()
        observeNextButtonTap()
    }
}

// MARK: Function
extension LoginViewState {
    
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.backButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeNextButtonTap() {
        $nextButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.nextButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    
    private func observePhoneNumberChanged() {
        $phoneNumber.sink(receiveValue: { value in
            if value.contains("@gmail.com") {
                self.enableContinueButton = true
            } else {
                self.enableContinueButton = false
            }
        })
        .store(in: &cancellables)
    }
}
