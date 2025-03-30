//
//  VerificationOTPViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import SwiftUI
import Combine

final class VerificationOTPViewState: ObservableObject, VerificationOTPViewStateProtocol {
    private let id = UUID()
    private var presenter: VerificationOTPPresenterProtocol?
    private var cancellables = Set<AnyCancellable>()
    

    // MARK: State
    @Published var backButtonDidTap: Bool = false
    @Published var resendButtonDidTap: Bool = false
    @Published var otp: [String] = ["", "", "", ""]
    
    func set(with presener: VerificationOTPPresenterProtocol) {
        self.presenter = presener
    }
    
    init() {
        observeBackButtonTap()
        observeResendButtonTap()
        observeOtpDidChange()
        
    }
}

// MARK: Function
extension VerificationOTPViewState {
    
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.backButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeResendButtonTap() {
        $resendButtonDidTap.sink(receiveValue: { value in
            if value {
                self.presenter?.resendButtonDidTap()
            }
        })
        .store(in: &cancellables)
    }
    
    private func observeOtpDidChange() {
        $otp.sink(receiveValue: { otp in
            print("OTP code changed: \(otp)")
        })
        .store(in: &cancellables)
    }
    
    
}
