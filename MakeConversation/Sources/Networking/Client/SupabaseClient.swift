//
//  SupabaseClient.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 1/5/25.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
    supabaseURL: URL(string: "https://\(Constant.supabaseURL)")!,
    supabaseKey: Constant.supabaseKEY
)

