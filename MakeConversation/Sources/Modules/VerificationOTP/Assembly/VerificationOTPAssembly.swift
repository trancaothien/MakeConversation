//
//  VerificationOTPAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//


import SwiftUI

final class VerificationOTPAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = VerificationOTPRouter(navigation: navigation)

        // Interactor
        let interactor = VerificationOTPInteractor()

        //ViewState
        let viewState =  VerificationOTPViewState()
        

        // Presenter
        let presenter = VerificationOTPPresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = VerificationOTPView(viewState: viewState)
        return view
    }
}
