//
//  VerificationRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import Foundation

final class VerificationRouter: VerificationRouterProtocol {
    
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
    
    func backToPreviousScreen() {
        self.navigation.push(.walkthrough)
    }
    
    func continueButtonDidTap() {
        self.navigation.push(.verificationOTP)
    }
}
