//
//  SettingPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class SettingPresenter: SettingPresenterProtocol {
    
    private let router: SettingRouterProtocol
    private weak var viewState: SettingViewStateProtocol?
    private let interactor: SettingInteractorProtocol
    
    init(router: SettingRouterProtocol,
         interactor: SettingInteractorProtocol,
         viewState: SettingViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}
