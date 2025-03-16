//
//  SplashAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//


import SwiftUI

final class SplashAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = SplashRouter(navigation: navigation)

        // Interactor
        let interacter = SplashInteracter()

        //ViewState
        let viewState =  SplashViewState()

        // Presenter
        let presenter = SplashPresenter(router: router, interacter: interacter, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = SplashView(viewState: viewState)
        return view
    }
}
