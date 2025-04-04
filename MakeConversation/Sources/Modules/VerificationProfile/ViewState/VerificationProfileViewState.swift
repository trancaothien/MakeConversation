//
//  VerificationOTPViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 27/3/25
//
//

import SwiftUI
import Combine

final class VerificationProfileViewState: ObservableObject, VerificationProfileViewStateProtocol {
    private let id = UUID()
    private var presenter: VerificationProfilePresenterProtocol?
    private var cancellables = Set<AnyCancellable>()

    // MARK: State
    @Published var backButtonDidTap: Bool = false
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var saveButtonDidTap: Bool = false
    @Published var avatarImage: UIImage? = nil
    
    func set(with presener: VerificationProfilePresenterProtocol) {
        self.presenter = presener
    }
    
    init() {
        observeBackButtonTap()
        observeSaveButtonTap()
    }
}

// MARK: Function
extension VerificationProfileViewState {
    
    private func observeBackButtonTap() {
        $backButtonDidTap.sink(receiveValue: { value in
            if value { self.presenter?.backButtonDidTap() }
        })
        .store(in: &cancellables)
    }
    
    private func observeSaveButtonTap() {
        $saveButtonDidTap.sink(receiveValue: { value in
            if value {
                let fullName = self.firstName + self.lastName
                self.presenter?.saveButtonDidTap()
            }
        })
        .store(in: &cancellables)
    }
//    private func observeContinueButtonTap() {
//        $continueButtonDidTap.sink(receiveValue: { value in
//            if value {
//                let fullName = self.firstName + self.lastName
////                self.presenter?.continueButtonDidTap(fullName)
//            }
//        })
//        .store(in: &cancellables)
//    }
}
    


