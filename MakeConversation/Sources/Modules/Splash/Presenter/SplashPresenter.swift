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
    private let interactor: SplashInteractorProtocol
    
    init(router: SplashRouterProtocol,
         interactor: SplashInteractorProtocol,
         viewState: SplashViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}
