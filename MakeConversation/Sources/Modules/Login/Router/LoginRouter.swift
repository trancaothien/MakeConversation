//
//  LoginRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import Foundation

final class LoginRouter: LoginRouterProtocol {
    
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
    
    func backToPreviousScreen() {
        self.navigation.pop()
    }
    
    func nextButtonDidTap() {
        self.navigation.pushReplace(.main)
    }
}
