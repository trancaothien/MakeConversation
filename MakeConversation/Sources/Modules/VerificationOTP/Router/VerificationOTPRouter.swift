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
    
    func backToPreviousScreen() {
        self.navigation.push(.verification)
    }
}
