//
//  ButtonStyle.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//

import SwiftUI

struct TextButtonStyle: ButtonStyle {
    
    var width: CGFloat
    var height: CGFloat = 44 // Standard height
    var color: Color = .text
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.mulish(size: 16, weight: .semibold))
            .padding()
            .foregroundColor(color)
    }
}

struct OutlinedButtonStyle: ButtonStyle {
    
    var cornerRadius: CGFloat = 30
    var borderColor: Color = .branch
    var backgroundColor: Color = .white
    var width: CGFloat
    var height: CGFloat = 44
    var lineWidth: CGFloat = 1
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.mulish(size: 16, weight: .semibold))
            .frame(width: width, height: height)
            .padding()
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor, lineWidth: lineWidth)
            )
            .cornerRadius(cornerRadius)
            .foregroundColor(borderColor)
            .opacity(configuration.isPressed ? 0.7 : 1.0) // Press effect
    }
}

struct FilledButtonStyle: ButtonStyle {
    
    var cornerRadius: CGFloat = 30
    var fillColor: Color = .branch
    var width: CGFloat
    var height: CGFloat = 44
    var active: Bool = true
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.mulish(size: 16, weight: .semibold))
            .frame(maxWidth: width)
            .padding()
            .background(active ? fillColor : .disable)
            .foregroundColor(.white)
            .cornerRadius(cornerRadius)
            .opacity(configuration.isPressed ? 0.7 : 1.0) // Press effect
    }
}
