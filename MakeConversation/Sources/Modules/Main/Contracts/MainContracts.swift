//
//  MainContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI


// Router
protocol MainRouterProtocol: RouterProtocol {

}

// Presenter
protocol MainPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol MainInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol MainViewStateProtocol: ViewStateProtocol {
    func set(with presenter: MainPresenterProtocol)
}
