//
//  VerificationOTPAssembly.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 27/3/25
//
//


import SwiftUI

final class VerificationProfileAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = VerificationProfileRouter(navigation: navigation)

        // Interactor
        let interactor = VerificationProfileInteractor()

        //ViewState
        let viewState =  VerificationProfileViewState()
        

        // Presenter
        let presenter = VerificationProfilePresenter(router: router, interactor: interactor, viewState: viewState)
        
        viewState.set(with: presenter)
        
        // View
        let view = VerificationProfileView(viewState: viewState)
        return view
    }
}
