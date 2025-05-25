//
//  RegisterViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//
//

import SwiftUI
import Combine

final class RegisterViewState: ObservableObject, RegisterViewStateProtocol {
    private let id = UUID()
    private var presenter: RegisterPresenterProtocol?
    private var cancellables = Set<AnyCancellable>()
    
    @Published var password: String = ""
    @Published var email: String = ""
    @Published var firstname: String = ""
    @Published var lastname: String = ""
    @Published var requirementOne: Bool = false
    @Published var requirementTwo: Bool = false
    @Published var backButtonDidTap: Bool = false
    @Published var submitButtonDidTap: Bool = false
    
    func set(with presener: RegisterPresenterProtocol) {
        self.presenter = presener
    }
    
    init () {
        observeBackButtonTap()
        observeSubmitButtonTap()
        observePasswordChange()
    }
}

// MARK: Function
extension RegisterViewState {
    
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.backButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeSubmitButtonTap() {
        $submitButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.submitButtonDidTap(email: self.email, password: self.password, firstname: self.firstname, lastname: self.lastname, success: {
                
            }, error: { message in
                
            })}
        })
        .store(in: &cancellables)
    }
    
    private func observePasswordChange() {
            $password
                .sink {password in
                    // require 1
                    self.requirementOne = password.count >= 8
                    
                    // require 2
                    let specialCharacterRegex = ".*[^A-Za-z0-9].*"
                    self.requirementTwo = password.range(of: specialCharacterRegex, options: .regularExpression) != nil
                }
                .store(in: &cancellables)
        }
}
