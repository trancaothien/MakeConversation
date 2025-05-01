//
//  ConversationContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI


// Router
protocol ConversationRouterProtocol: RouterProtocol {
    func navigateToRoom(by roomId: Int, conversationData: ConversationData)
}

// Presenter
protocol ConversationPresenterProtocol: PresenterProtocol {
    func conversationDidTap(for roomId: Int, conversationData: ConversationData)
}

// Interactor
protocol ConversationInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol ConversationViewStateProtocol: ViewStateProtocol {
    func set(with presenter: ConversationPresenterProtocol)
}
