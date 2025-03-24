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
