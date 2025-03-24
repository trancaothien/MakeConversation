//
//  WalkthroughAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import SwiftUI

final class WalkthroughAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = WalkthroughRouter(navigation: navigation)

        // Interactor
        let interacter = WalkthroughInteractor()

        //ViewState
        let viewState =  WalkthroughViewState()

        // Presenter
        let presenter = WalkthroughPresenter(router: router, interactor: interacter, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = WalkthroughView(viewState: viewState)
        return view
    }
}
