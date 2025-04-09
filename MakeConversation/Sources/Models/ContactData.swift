//
//  ContactData.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 8/4/25.
//

import Foundation

struct ContactData: Codable {
    var id: UUID = UUID()
    let avatarUrl: String?
    let userName: String
    let lastActiveTime: String
    let isOnline: Bool
}
