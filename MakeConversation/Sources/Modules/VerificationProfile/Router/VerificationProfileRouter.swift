//
//  VerificationOTPRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 27/3/25
//
//

import Foundation

final class VerificationProfileRouter: VerificationProfileRouterProtocol {
    
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
}

extension VerificationProfileRouter {
    func back() {
        self.navigation.pop()
    }
    
    func goHome() {
        self.navigation.pushReplace(.main)
    }
    
    func goRegister() {
        // TODO: Navigate to register screen
    }
}
