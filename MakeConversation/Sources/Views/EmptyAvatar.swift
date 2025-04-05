//
//  EmptyAvatar.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 5/4/25.
//

import SwiftUI

struct EmptyAvatar: View {
    var userName: String
    var size: CGFloat = 48
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.avatar)

            Text(getInitials(from: userName))
                .applyBody1Style(color: .white)
        }
        .frame(width: size, height: size)
        .cornerRadius(16)
    }
    
    func getInitials(from name: String) -> String {
        let components = name.split(separator: " ")
        
        // If there's more than one component (i.e., full name), take the first letter of the first and last names.
        if components.count > 1 {
            let firstNameInitial = components.first?.prefix(1).uppercased() ?? ""
            let lastNameInitial = components.last?.prefix(1).uppercased() ?? ""
            return firstNameInitial + lastNameInitial
        } else {
            // If there's only one name, just take the first letter of that name
            return components.first?.prefix(1).uppercased() ?? ""
        }
    }
}

#Preview {
    EmptyAvatar(userName: "cao thien")
}
