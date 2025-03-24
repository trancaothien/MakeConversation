//
//  WalkthroughContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import SwiftUI


// Router
protocol WalkthroughRouterProtocol: RouterProtocol {

}

// Presenter
protocol WalkthroughPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol WalkthroughInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol WalkthroughViewStateProtocol: ViewStateProtocol {
    func set(with presenter: WalkthroughPresenterProtocol)
}
