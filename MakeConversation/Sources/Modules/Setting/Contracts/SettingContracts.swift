//
//  SettingContracts.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI


// Router
protocol SettingRouterProtocol: RouterProtocol {

}

// Presenter
protocol SettingPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol SettingInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol SettingViewStateProtocol: ViewStateProtocol {
    func set(with presenter: SettingPresenterProtocol)
}
