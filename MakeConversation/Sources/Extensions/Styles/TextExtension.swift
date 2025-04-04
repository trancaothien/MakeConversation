//
//  TextExtension.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//
//
//  TextExtension.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25.
//

import SwiftUI

// MARK: - TextStyle Extension
// This extension provides a set of custom text styles for a consistent typography across the app.

extension Text {
    
    /// Applies a custom font style with specified size, color, and weight.
    /// - Parameters:
    ///   - size: The font size.
    ///   - color: The text color.
    ///   - weight: The font weight.
    /// - Returns: A modified `Text` view with the specified style.
    func applyTextStyle(size: CGFloat, color: Color, weight: Font.Weight) -> Text {
        self.font(Font.mulish(size: size, weight: weight))
            .foregroundColor(color)
    }
    
    /// Applies a predefined Header 1 style (largest bold text).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Header 1 styling.
    func applyHeader1Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 32, color: color, weight: .bold)
    }
    
    /// Applies a predefined Header 2 style (medium bold text).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Header 2 styling.
    func applyHeader2Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 24, color: color, weight: .bold)
    }
    
    /// Applies a predefined Subheader 1 style (medium semibold text).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Subheader 1 styling.
    func applySubHeader1Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 18, color: color, weight: .semibold)
    }
    
    /// Applies a predefined Subheader 2 style (smaller semibold text).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Subheader 2 styling.
    func applySubHeader2Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 16, color: color, weight: .semibold)
    }
    
    /// Applies a Body 1 style (standard body text with semibold weight).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Body 1 styling.
    func applyBody1Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 14, color: color, weight: .semibold)
    }
    
    /// Applies a Body 2 style (standard body text with regular weight).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Body 2 styling.
    func applyBody2Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 14, color: color, weight: .regular)
    }
    
    /// Applies a Metadata 1 style (smallest regular-weight text for metadata).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Metadata 1 styling.
    func applyMetadata1Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 12, color: color, weight: .regular)
    }
    
    /// Applies a Metadata 2 style (extra small regular-weight text).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Metadata 2 styling.
    func applyMetadata2Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 10, color: color, weight: .regular)
    }
    
    /// Applies a Metadata 3 style (extra small semibold-weight text).
    /// - Parameter color: The text color (default is `.text`).
    /// - Returns: A modified `Text` view with Metadata 3 styling.
    func applyMetadata3Style(color: Color = .text) -> Text {
        self.applyTextStyle(size: 10, color: color, weight: .semibold)
    }
}
