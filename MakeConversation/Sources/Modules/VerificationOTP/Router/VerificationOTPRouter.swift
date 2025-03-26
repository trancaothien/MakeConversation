//
//  VerificationOTPRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import Foundation

final class VerificationOTPRouter: VerificationOTPRouterProtocol {
    
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
}

extension VerificationOTPRouter {
    func back() {
        self.navigation.pop()
    }
    
    func goHome() {
        self.navigation.push(.main)
    }
    
    func goRegister() {
        // TODO: Navigate to register screen
    }
}
