//
//  VerificationViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI
import Combine

final class VerificationViewState: ObservableObject, VerificationViewStateProtocol {    
    private let id = UUID()
    private var presenter: VerificationPresenterProtocol?
    private var cancellables = Set<AnyCancellable>()
    
    @Published var isShowing: Bool = false
    @Published var changeColorUI: Color = .green
    
    @Published var countryCode: String = (countryCodes["VietName"] ?? "+84")
    @Published var phoneNumber: String = ""
    @Published var backButtonDidTap: Bool = false
    @Published var continueButtonDidTap: Bool = false
    @Published var enableContinueButton: Bool = false
    
    func set(with presener: VerificationPresenterProtocol) {
        self.presenter = presener
    }
    
    init () {
        observeBackButtonTap()
        observeContinueButtonTap()
        observePhoneNumberChanged()
    }
}

// MARK: Function
extension VerificationViewState {
    
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.backButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeContinueButtonTap() {
        $continueButtonDidTap.sink(receiveValue: { value in
            if value {
                let fullPhoneNumber = self.countryCode + self.phoneNumber
                self.presenter?.continueButtonDidTap(fullPhoneNumber)
            }
        })
        .store(in: &cancellables)
    }
    
    private func observePhoneNumberChanged() {
        $phoneNumber.sink(receiveValue: { value in
            if value.count == 9 {
                self.enableContinueButton = true
            } else {
                self.enableContinueButton = false
            }
        })
        .store(in: &cancellables)
    }
}
