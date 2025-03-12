//
//  ConversationAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//


import SwiftUI

final class ConversationAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = ConversationRouter(navigation: navigation)

        // Interactor
        let interactor = ConversationInteractor()

        //ViewState
        let viewState =  ConversationViewState()

        // Presenter
        let presenter = ConversationPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = ConversationView(viewState: viewState)
        return view
    }
}
