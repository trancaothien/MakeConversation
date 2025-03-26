//
//  VerificationAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//


import SwiftUI

final class VerificationAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = VerificationRouter(navigation: navigation)

        // Interactor
        let interactor = VerificationInteractor()

        //ViewState
        let viewState =  VerificationViewState()

        // Presenter
        let presenter = VerificationPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = VerificationView(viewState: viewState)
        return view
    }
}
