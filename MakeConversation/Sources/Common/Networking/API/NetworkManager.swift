//
//  NetworkManager.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 11/5/25.
//

import Foundation
import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    
    let interceptor = APIInterceptor()
    
    private init() {
    
    }
    
    func request<T: Decodable>(
        _ convertible: URLRequestConvertible,
        completion: @escaping (APIResult<T>) -> Void
    ) {
        AF.request(convertible, interceptor: interceptor)
            .validate()
            .responseString { response in
                print("Response: ") // Just for debuging
                print(response) // Just for debuging
            }
            .cURLDescription { curl in
                print("cURL: ") // Just for debuging
                print(curl) // Just for debuging
            }
            .responseData { response in
                completion(self.handleResponse(response, of: T.self))
            }
    }
    
    func testEscaping(completion: @escaping () -> Void) -> Void {
        completion()
    }
    
    func upload<T: Decodable>(
        _ url: String,
        multipartFormData: @escaping (MultipartFormData) -> Void,
        headers: HTTPHeaders? = nil,
        completion: @escaping (APIResult<T>) -> Void
    ) {
        AF.upload(multipartFormData: multipartFormData, to: url, headers: headers, interceptor: interceptor)
            .validate()
            .responseData { response in
                completion(self.handleResponse(response, of: T.self))
            }
    }
    
    
    private func handleResponse<T: Decodable>(_ response: AFDataResponse<Data>, of type: T.Type) -> APIResult<T> {
        switch response.result {
        case .success(let data):
            do {
                let decoded = try JSONDecoder().decode(T.self, from: data)
                print("Decoded: \(decoded)")
                return .success(decoded)
            } catch {
                return .failure(.decodingError(error))
            }

        case .failure(let afError):
            if let statusCode = response.response?.statusCode {
                if let data = response.data,
                   let apiError = try? JSONDecoder().decode(ErrorResponse.self, from: data) {
                    return .failure(.serverError(statusCode: statusCode, message: apiError.error))
                } else {
                    let message = String(data: response.data ?? Data(), encoding: .utf8) ?? "Unknown error"
                    return .failure(.serverError(statusCode: statusCode, message: message))
                }
            } else {
                return .failure(.networkError(afError))
            }
        }
    }
}
