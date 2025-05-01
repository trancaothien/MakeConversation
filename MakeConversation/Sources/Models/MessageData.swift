//
//  MessageData.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 13/4/25.
//

import Foundation

struct MessageData: Codable, Hashable {
    let roomId: String
    let roomTitle: String
    let roomAvatar: String
    let sender: String
    let content: String
    let mediaUrl: String?
    let type: String
    let clients: [String]
    let reactions: [String:String]
    let createdAt: String
    let updatedAt: String
    let deletedAt: String
}
