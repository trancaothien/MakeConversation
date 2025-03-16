//
//  SplashPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class SplashPresenter: SplashPresenterProtocol {
    
    private let router: SplashRouterProtocol
    private weak var viewState: SplashViewStateProtocol?
    private let interacter: SplashInteracterProtocol
    
    init(router: SplashRouterProtocol,
         interacter: SplashInteracterProtocol,
         viewState: SplashViewStateProtocol) {
        self.router = router
        self.interacter = interacter
        self.viewState = viewState
    }
}

// MARK: Input
extension SplashPresenter {
    func initApplication() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.router.navigateToMain()
        }
    }
}

// MARK: Output
extension SplashPresenter {
    
}
