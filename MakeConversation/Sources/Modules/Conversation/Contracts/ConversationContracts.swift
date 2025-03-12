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

}

// Presenter
protocol ConversationPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol ConversationInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol ConversationViewStateProtocol: ViewStateProtocol {
    func set(with presenter: ConversationPresenterProtocol)
}
