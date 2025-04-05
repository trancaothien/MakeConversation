//
//  File.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 5/4/25.
//

import Foundation

struct ConversationData: Codable {
    var id: UUID = UUID()
    let avatarUrl: String?
    let userName: String
    let latestMessage: String
    let time: String
    let isOnline: Bool
    let unreadCount: Int
}
