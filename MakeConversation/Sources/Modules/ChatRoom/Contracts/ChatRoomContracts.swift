//
//  MainContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI


// Router
protocol ChatRoomRouterProtocol: RouterProtocol {
    func pop()
}

// Presenter
protocol ChatRoomPresenterProtocol: PresenterProtocol {
    func backButtonDidTap()
}

// Interactor
protocol ChatRoomInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol ChatRoomViewStateProtocol: ViewStateProtocol {
    func set(with presenter: ChatRoomPresenterProtocol)
}


