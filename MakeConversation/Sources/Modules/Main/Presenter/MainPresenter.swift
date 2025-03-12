//
//  MainPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class MainPresenter: MainPresenterProtocol {
    
    private let router: MainRouterProtocol
    private weak var viewState: MainViewStateProtocol?
    private let interactor: MainInteractorProtocol
    
    init(router: MainRouterProtocol,
         interactor: MainInteractorProtocol,
         viewState: MainViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}
