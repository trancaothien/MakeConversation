//
//  MainPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ChatRoomPresenter: ChatRoomPresenterProtocol {

    private let router: ChatRoomRouterProtocol
    private weak var viewState: ChatRoomViewStateProtocol?
    private let interactor: ChatRoomInteractorProtocol
        
    init(router: ChatRoomRouterProtocol,
         interactor: ChatRoomInteractorProtocol,
         viewState: ChatRoomViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    func backButtonDidTap() {
        self.router.pop()
    }
}
