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
    func navigateToMain()
}

// Presenter
protocol SplashPresenterProtocol: PresenterProtocol {
    func initApplication()
}

// Interactor
protocol SplashInteracterProtocol: InteractorProtocol {
    func fetchData()
}

// ViewState
protocol SplashViewStateProtocol: ViewStateProtocol {
    func set(with presenter: SplashPresenterProtocol)
    func viewDidLoad()
}
