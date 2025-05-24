//
//  LoginAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//
//


import SwiftUI

final class LoginAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = LoginRouter(navigation: navigation)

        // Interactor
        let interactor = LoginInteractor()

        //ViewState
        let viewState =  LoginViewState()

        // Presenter
        let presenter = LoginPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = LoginView(viewState: viewState)
        
        return view
    }
}
