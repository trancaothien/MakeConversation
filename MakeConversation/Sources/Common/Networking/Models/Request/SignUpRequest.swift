//
//  SignUpRequest.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

struct SignUpRequest: Encodable {
    let email: String
    let password: String
    let firstname: String
    let lastname: String
}
