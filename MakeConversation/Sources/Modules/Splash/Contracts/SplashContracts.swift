//
//  SplashContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI


// Router
protocol SplashRouterProtocol: RouterProtocol {

}

// Presenter
protocol SplashPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol SplashInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol SplashViewStateProtocol: ViewStateProtocol {
    func set(with presenter: SplashPresenterProtocol)
}
