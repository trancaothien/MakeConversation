//
//  MainRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import Foundation

final class ChatRoomRouter: ChatRoomRouterProtocol {
    
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
    
    func pop() {
        self.navigation.pop()
    }
}
