//
//  convertLastActiveTime.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 8/4/25.
//

import Foundation

func convertLastActiveTime(_ lastActiveTimeString: String) -> String {
    // Define the date formatter for input string
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    
    // Convert the string to a Date object
    guard let lastActiveDate = inputFormatter.date(from: lastActiveTimeString) else { return "Invalid Date" }
    
    // Get the current date
    let currentDate = Date()
    
    // Get a calendar instance
    let calendar = Calendar.current
    
    // Calculate the time difference in seconds
    let timeDifference = currentDate.timeIntervalSince(lastActiveDate)
    
    // If the time difference is less than a minute
    if timeDifference < 60 {
        return "userStatus.justNow".localized
    }
    // If the time difference is less than an hour
    else if timeDifference < 3600 {
        let minutes = Int(timeDifference / 60)
        return "Last seen \(minutes) \(minutes == 1 ? "minute" : "minutes") ago"
    }
    // If the time difference is less than a day
    else if timeDifference < 86400 {
        let hours = Int(timeDifference / 3600)
        return "Last seen \(hours) \(hours == 1 ? "hour" : "hours") ago"
    }
    // If the date is yesterday
    else if calendar.isDateInYesterday(lastActiveDate) {
        return "userStatus.yesterday".localized
    }
    // If the date is within the last week
    else if timeDifference < 604800 { // 7 days in seconds
        let days = Int(timeDifference / 86400)
        return "Last seen \(days) \(days == 1 ? "day" : "days") ago"
    }
    // If the date is in the current year
    else if calendar.isDate(lastActiveDate, equalTo: currentDate, toGranularity: .year) {
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "dd MMMM" // Format as "31 March"
        return "Last seen on".localized + "\(outputFormatter.string(from: lastActiveDate))"
    }
    // If the date is in a different year
    else {
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "dd MMMM yyyy" // Format as "31 March 2024"
        return "Last seen on".localized + "\(outputFormatter.string(from: lastActiveDate))"
    }
}
