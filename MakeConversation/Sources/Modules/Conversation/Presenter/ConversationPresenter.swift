//
//  ConversationPresenter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ConversationPresenter: ConversationPresenterProtocol {
    
    private let router: ConversationRouterProtocol
    private weak var viewState: ConversationViewStateProtocol?
    private let interactor: ConversationInteractorProtocol
    
    init(router: ConversationRouterProtocol,
         interactor: ConversationInteractorProtocol,
         viewState: ConversationViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    func conversationDidTap(for roomId: Int, conversationData: ConversationData) {
        self.router.navigateToRoom(by: roomId, conversationData: conversationData)
    }
}
