//
//  WalkthroughPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import SwiftUI

final class WalkthroughPresenter: WalkthroughPresenterProtocol {
    
    private let router: WalkthroughRouterProtocol
    private weak var viewState: WalkthroughViewStateProtocol?
    private let interactor: WalkthroughInteractorProtocol
    
    init(router: WalkthroughRouterProtocol,
         interactor: WalkthroughInteractorProtocol,
         viewState: WalkthroughViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}
