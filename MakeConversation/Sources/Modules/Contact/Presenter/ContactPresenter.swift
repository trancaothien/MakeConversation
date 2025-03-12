//
//  ContactPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ContactPresenter: ContactPresenterProtocol {
    
    private let router: ContactRouterProtocol
    private weak var viewState: ContactViewStateProtocol?
    private let interactor: ContactInteractorProtocol
    
    init(router: ContactRouterProtocol,
         interactor: ContactInteractorProtocol,
         viewState: ContactViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}
