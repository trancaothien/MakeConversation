//
//  RegisterRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import Foundation

final class RegisterRouter: RegisterRouterProtocol {
    
    
    
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
    
    func backToPreviousScreen() {
        self.navigation.pop()
    }
    
    func continueButtonDidTap(_ phoneNumber: String) {
        self.navigation.push(.verificationOTP(phoneNumber))
    }
    
    func submitButtonDidTap() {
        self.navigation.pushReplace(.main)
    }
}
