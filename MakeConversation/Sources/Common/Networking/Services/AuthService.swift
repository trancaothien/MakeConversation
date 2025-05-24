//
//  AuthService.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Foundation

// MARK: - Protocol

protocol AuthServiceProtocol {
    var isAuthenticated: Bool { get }
    func signIn(
        email: String,
        password: String,
        success: @escaping () -> Void,
        error: @escaping (String) -> Void
    )
    func signUp(
        email: String,
        password: String,
        firstname: String,
        lastname: String,
        success: @escaping () -> Void,
        error: @escaping (String) -> Void
    )
}

// MARK: - Service Implementation

final class AuthService {
    static let shared = AuthService()

    private let network = NetworkManager.shared
    private let sharePref = UserDefaultsManager.shared
}

// MARK: - AuthServiceProtocol Implementation

extension AuthService: AuthServiceProtocol {

    var isAuthenticated: Bool {
        return self.sharePref.getAccessToken() != nil
    }

    func signIn(
        email: String,
        password: String,
        success: @escaping () -> Void,
        error: @escaping (String) -> Void
    ) {
        let apiRouter = APIRouter.signIn(data: SignInRequest(email: email, password: password))
        network.request(apiRouter) { (result: APIResult<SignInResponse>) in
            switch result {
            case .success(let response):
                self.sharePref.saveAccessToken(token: response.accessToken)
                self.sharePref.saveRefreshToken(token: response.refreshToken)
                success()
            case .failure(let e):
                error(e.message)
            }
        }
    }

    func signUp(
        email: String,
        password: String,
        firstname: String,
        lastname: String,
        success: @escaping () -> Void,
        error: @escaping (String) -> Void
    ) {
        let apiRouter = APIRouter.signUp(
            data: SignUpRequest(email: email, password: password, firstname: firstname, lastname: lastname)
        )
        network.request(apiRouter) { (result: APIResult<SignUpResponse>) in
            switch result {
            case .success:
                success()
            case .failure(let e):
                error(e.message)
            }
        }
    }
}
