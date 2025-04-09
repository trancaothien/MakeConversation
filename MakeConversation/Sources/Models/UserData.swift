//
//  UserData.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 9/4/25.
//

import Foundation

class UserData {
    var id: UUID
    var avatarUrl: String?
    var userName: String
    var phoneNumber: String

    init(id: UUID = UUID(), avatarUrl: String? = nil, userName: String, phoneNumber: String) {
        self.id = id
        self.avatarUrl = avatarUrl
        self.userName = userName
        self.phoneNumber = phoneNumber
    }
}
