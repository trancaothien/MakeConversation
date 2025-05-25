//
//  Error.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Foundation
import Alamofire

enum APIError: Error {
    case networkError(AFError)
    case decodingError(Error)
    case serverError(statusCode: Int, message: String?)
    case unknown(Error)
}

extension APIError {
    var message: String {
        switch self {
        case .networkError(let error):
            return "Network error: \(error.localizedDescription)"
        case .decodingError(let error):
            return "Decoding error: \(error.localizedDescription)"
        case .serverError(_, let message):
            return message ?? "Server returned an unknown error"
        case .unknown(let error):
            return "Unknown error: \(error.localizedDescription)"
        }
    }
}
