//
//  PasswordRequirementView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 5/5/25.
//

import SwiftUI

struct PasswordRequirementView: View {
    
    @Binding var requireOne: Bool
    @Binding var requireTwo: Bool
    
    
    var body: some View {
        VStack {
            RequirementView(require: requireOne, contentOfRequirement: "Must be at list 8 character")
                .padding(.bottom, 12)
            RequirementView(require: requireTwo, contentOfRequirement: "Must contain one special character")
            
        }
        .padding(.horizontal, 8)
        .padding(.bottom, 24)
    }
}

struct RequirementView: View {
    
    var require: Bool = false
    var contentOfRequirement: String?
    
    var body: some View {
        HStack() {
            if require {
                Image(systemName: "checkmark.circle.fill")
                    .padding(.trailing, 3.25)
            } else {
                Image(systemName: "checkmark.circle")
                    .padding(.trailing, 3.25)
            }
            
            Text(contentOfRequirement!)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

