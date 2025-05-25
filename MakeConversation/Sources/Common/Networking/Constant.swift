//
//  Environment.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 1/5/25.
//

import Foundation

public enum Constant {
    enum Keys {
        static let supabaseURL = "SUPABASE_URL"
        static let supabaseKEY = "SUPABASE_KEY"
    }
    
    ///Getting plist
    private static let infoDictionary : [String:Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist file not found !")
        }
        return dict
    } ()
    
    ///Get SupabaseURL and SupabaseKey
    static let supabaseURL: String = {
        guard let url = Constant.infoDictionary[Keys.supabaseURL] as? String else {
            fatalError("Supbase URL not found !")
        }
        
        return url
    } ()
    
    static let supabaseKEY: String = {
        guard let key = Constant.infoDictionary[Keys.supabaseKEY] as? String else {
            fatalError("Supbase Key not found !")
        }
        
        return key
    } ()
}
