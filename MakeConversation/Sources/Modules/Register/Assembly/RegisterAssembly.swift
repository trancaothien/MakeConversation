//
//  RegisterAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//
//


import SwiftUI

final class RegisterAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = RegisterRouter(navigation: navigation)

        // Interactor
        let interactor = RegisterInteractor()

        //ViewState
        let viewState =  RegisterViewState()

        // Presenter
        let presenter = RegisterPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = RegisterView(viewState: viewState)
        
        return view
    }
}
