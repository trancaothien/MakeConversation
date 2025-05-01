//
//  SettingViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

class SettingViewState: ObservableObject, SettingViewStateProtocol {
    private let id = UUID()
    private var presenter: SettingPresenterProtocol?
    
    
    //for test
    var userData = UserData(
        id: UUID(),
        avatarUrl: "https://avatar.iran.liara.run/public",
        userName: "Cao Thang",
        phoneNumber: "+84 347 016 318"
    )
    
    
    @Published var conversations: ConversationData = ConversationData(
        avatarUrl: "https://gravatar.com/avatar/20de6398e807f31bb3c5fbc3e7d84d2b?s=400&d=robohash&r=x",
        userName: "Athalia Putri",
        latestMessage: "Good morning, did you sleep well?",
        lastActiveTime: "2025-04-05T10:44:00+0000",
        time: "2025-04-05T10:44:00+0000",
        isOnline: true,
        unreadCount: 0
    )
    
    func set(with presener: SettingPresenterProtocol) {
        self.presenter = presener
    }
    
    var accountSettingDidTap: () -> Void = {

    }

    var chatSettingDidTap: () -> Void = {

    }

    var appreeanceSettingDidTap: () -> Void = {

    }

    var notificationSettingDidTap: () -> Void = {

    }

    var privacySettingDidTap: () -> Void = {

    }

    var datausageSettingDidTap: () -> Void = {

    }

    var helpSettingDidTap: () -> Void = {

    }

    var inviteSettingDidTap: () -> Void = {

    }
}
