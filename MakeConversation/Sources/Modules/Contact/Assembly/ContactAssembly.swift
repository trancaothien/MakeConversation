//
//  ContactAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//


import SwiftUI

final class ContactAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = ContactRouter(navigation: navigation)

        // Interactor
        let interactor = ContactInteractor()

        //ViewState
        let viewState =  ContactViewState()

        // Presenter
        let presenter = ContactPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = ContactView(viewState: viewState)
        return view
    }
}
