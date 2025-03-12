//
//  SettingAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//


import SwiftUI

final class SettingAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = SettingRouter(navigation: navigation)

        // Interactor
        let interactor = SettingInteractor()

        //ViewState
        let viewState =  SettingViewState()

        // Presenter
        let presenter = SettingPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = SettingView(viewState: viewState)
        return view
    }
}
