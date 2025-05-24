//
//  APIRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case signIn(data: SignInRequest)
    case signUp(data: SignUpRequest)
    
    var baseURL: URL {
        return URL(string: "https://\(Constant.supabaseURL)/functions/v1")!
    }

    var endpoint: String {
        switch self {
        case .signIn: "/sign-in"
        case .signUp: "/sign-up"
        }
    }
    
    var encodableBody: Encodable? {
        switch self {
        case .signIn(let data): return data
        case .signUp(let data): return data
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .signIn, .signUp: .post
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(endpoint)
        var request = try URLRequest(url: url, method: method)
        
        if let body = encodableBody {
            let data = try JSONEncoder().encode(body)
            request.httpBody = data
        }
        
        return request
    }
}
