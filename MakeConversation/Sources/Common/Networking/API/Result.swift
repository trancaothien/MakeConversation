//
//  Result.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Foundation

enum APIResult<T> {
    case success(T)
    case failure(APIError)
}
