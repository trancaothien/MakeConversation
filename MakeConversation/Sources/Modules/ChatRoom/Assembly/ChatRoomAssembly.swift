//
//  MainAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//


import SwiftUI

final class ChatRoomAssembly: Assembly {
    
    func build(conversationData: ConversationData) -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = ChatRoomRouter(navigation: navigation)

        // Interactor
        let interactor = ChatRoomInteractor()

        //ViewState
        let viewState =  ChatRoomViewState()

        // Presenter
        let presenter = ChatRoomPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = ChatRoomView(viewState: viewState, conversationData: conversationData)
        return view
    }
}
