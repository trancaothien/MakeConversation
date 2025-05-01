//
//  TimeUtil.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 5/4/25.
//

import Foundation

// Function to convert string time to different formats
func convertTimeString(_ timeString: String) -> String {
    // Define the date formatter for input string
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    
    // Convert the string to a Date object
    guard let date = inputFormatter.date(from: timeString) else { return "Invalid Date" }
    
    // Get the current date
    let currentDate = Date()
    
    // Get a calendar instance
    let calendar = Calendar.current
    
    // Check if the date is today or yesterday
    if calendar.isDateInToday(date) {
        
        return String(localized: "today")
    } else if calendar.isDateInYesterday(date) {
        return String(localized: "yesterday")
    } else {
        // Otherwise, format the date in other styles
        let outputFormatter = DateFormatter()
        
        // Check if the date is in the same year as the current year
        if calendar.isDate(date, equalTo: currentDate, toGranularity: .year) {
            // For DD/MM format (same year)
            outputFormatter.dateFormat = "dd/MM"
        } else {
            // For DD/MM/yyyy format (different year)
            outputFormatter.dateFormat = "dd/MM/yyyy"
        }
        
        // Return the formatted date
        return outputFormatter.string(from: date)
    }
}

func convertTimeToString() -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    formatter.timeZone = TimeZone.current
    return formatter.string(from: date)
}

func convertToHourMinute(from timeString: String) -> String? {
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    inputFormatter.timeZone = TimeZone.current

    if let date = inputFormatter.date(from: timeString) {
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "HH:mm"
        outputFormatter.timeZone = TimeZone.current
        return outputFormatter.string(from: date)
    } else {
        return nil
    }
}

