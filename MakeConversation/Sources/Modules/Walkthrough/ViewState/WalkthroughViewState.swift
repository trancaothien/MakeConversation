//
//  WalkthroughViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import SwiftUI

final class WalkthroughViewState: ObservableObject, WalkthroughViewStateProtocol {
    private let id = UUID()
    private var presenter: WalkthroughPresenterProtocol?
    
    func set(with presener: WalkthroughPresenterProtocol) {
        self.presenter = presener
    }
    
}

// MARK: Function
extension WalkthroughViewState {
    
    func privacyAndServiceDidTap() {
        // TODO: Handle when user taped on the term and service button
    }
    
    func startMessagingDidTap() {
        self.presenter?.startMessagingDidTap()
    }
}
