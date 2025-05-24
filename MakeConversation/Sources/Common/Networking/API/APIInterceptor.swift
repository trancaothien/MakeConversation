//
//  APIInterceptor.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Alamofire
import Foundation

final class APIInterceptor: RequestInterceptor {
    
    // Optional: Add auth token or other headers
    private var authToken: String? {
        if AuthService.shared.isAuthenticated {
            let accessToken = UserDefaultsManager.shared.getAccessToken()
            return "Bearer \(String(describing: accessToken))"
        }
        return nil
    }

    // MARK: - Adapt: Add headers (e.g., Authorization)
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var request = urlRequest

        if let token = authToken {
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue(token, forHTTPHeaderField: "Authorization")
        }

        completion(.success(request))
    }

    // MARK: - Retry: Handle token expiration, retry logic
    func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
        // Simple example: Don't retry
        completion(.doNotRetry)
        
        // You can handle 401 token refresh here if needed
    }
}
