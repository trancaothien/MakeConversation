//
//  WalkthroughContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import SwiftUI


// Router
protocol WalkthroughRouterProtocol: RouterProtocol {
    func navigateToVerification()
    func navigateToTermAndService()
}

// Presenter
protocol WalkthroughPresenterProtocol: PresenterProtocol {
    func startMessagingDidTap()
    func termAndServiceDidTap()
}

// Interactor
protocol WalkthroughInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol WalkthroughViewStateProtocol: ViewStateProtocol {
    func set(with presenter: WalkthroughPresenterProtocol)
}
