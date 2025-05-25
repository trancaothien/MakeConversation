//
//  SignInResponse.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

struct SignInResponse: Decodable {
    let accessToken: String
    let refreshToken: String
    
    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }

}
