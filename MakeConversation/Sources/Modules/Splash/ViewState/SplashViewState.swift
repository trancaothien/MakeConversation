//
//  SplashViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class SplashViewState: ObservableObject, SplashViewStateProtocol {    
    private let id = UUID()
    private var presenter: SplashPresenterProtocol?
    
    func set(with presener: SplashPresenterProtocol) {
        self.presenter = presener
    }
}

// MARK: Input
extension SplashViewState {
    func viewDidLoad() {
        self.presenter?.initApplication()
    }
}
