//
//  ContactContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI


// Router
protocol ContactRouterProtocol: RouterProtocol {

}

// Presenter
protocol ContactPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol ContactInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol ContactViewStateProtocol: ViewStateProtocol {
    func set(with presenter: ContactPresenterProtocol)
}
