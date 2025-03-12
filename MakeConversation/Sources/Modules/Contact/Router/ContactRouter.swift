//
//  ContactRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import Foundation

final class ContactRouter: ContactRouterProtocol {
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
       
}
