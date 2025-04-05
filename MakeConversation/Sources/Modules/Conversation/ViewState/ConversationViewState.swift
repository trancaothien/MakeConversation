//
//  ConversationViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ConversationViewState: ObservableObject, ConversationViewStateProtocol {    
    private let id = UUID()
    private var presenter: ConversationPresenterProtocol?
    
    //Data state
    @Published var searchText: String = ""
    @Published var conversations: [ConversationData] = []
    
    func set(with presener: ConversationPresenterProtocol) {
        self.presenter = presener
    }
    
    /// Handle when conversation view did load:
    /// - Request to presentor to load data from api/firebase/etc
    /// - After that, received data (success or not)
    /// - After that, process data and show on conversation view
    func viewDidLoad() {
        // Mock data
        let mock = [
            ConversationData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: true,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: "https://i.pinimg.com/736x/97/bb/06/97bb067e30ff6b89f4fbb7b9141025ca.jpg",
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-04T10:44:00+0000",
                isOnline: true,
                unreadCount: 3
            ),
            ConversationData(
                avatarUrl: "https://gravatar.com/avatar/20de6398e807f31bb3c5fbc3e7d84d2b?s=400&d=robohash&r=x",
                userName: "Raki Devon",
                latestMessage: "How is it going?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: false,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: true,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: "https://gravatar.com/avatar/64f6c6355377ea4fb77fe5db3847f532?s=400&d=robohash&r=x",
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-04T10:44:00+0000",
                isOnline: true,
                unreadCount: 3
            ),
            ConversationData(
                avatarUrl: nil,
                userName: "Raki Devon",
                latestMessage: "How is it going?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: false,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: true,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: "https://avatar.iran.liara.run/public/girl",
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-04T10:44:00+0000",
                isOnline: true,
                unreadCount: 3
            ),
            ConversationData(
                avatarUrl: "https://avatar.iran.liara.run/public",
                userName: "Raki Devon",
                latestMessage: "How is it going?\nit okay?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: false,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: nil,
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: true,
                unreadCount: 0
            ),
            ConversationData(
                avatarUrl: "https://gravatar.com/avatar/20de6398e807f31bb3c5fbc3e7d84d2b?s=400&d=robohash&r=x",
                userName: "Athalia Putri",
                latestMessage: "Good morning, did you sleep well?",
                time: "2025-04-04T10:44:00+0000",
                isOnline: true,
                unreadCount: 3
            ),
            ConversationData(
                avatarUrl: nil,
                userName: "Raki Devon",
                latestMessage: "How is it going?",
                time: "2025-04-05T10:44:00+0000",
                isOnline: false,
                unreadCount: 0
            )
        ]
        
        conversations = mock
    }
}
