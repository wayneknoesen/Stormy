//
//  Current.swift
//  Stormy
//
//  Created by Wayne Knoesen on 25/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

import Foundation
import UIKit


struct Current {
    
    var currentTime: String?
    var temperature: Int
    var humidity: Double
    var precipProbability: Double
    var summary: String
    var myLocation: String
    var icon: UIImage?
    
    init(weatherDictionary: NSDictionary) {
        let locationDict : NSDictionary = weatherDictionary as NSDictionary
        let currentWeatherDictionary: NSDictionary = weatherDictionary["currently"] as NSDictionary
        
        
        temperature = currentWeatherDictionary["temperature"] as Int
        humidity = currentWeatherDictionary["humidity"] as Double
        precipProbability = currentWeatherDictionary["precipProbability"] as Double
        summary = currentWeatherDictionary["summary"] as String
        myLocation = locationDict["timezone"] as String
        let currentTimeIntValue = currentWeatherDictionary["time"] as Int
        currentTime = dateStringFromUnixtime(currentTimeIntValue)
        
        let iconString = currentWeatherDictionary["icon"] as String
        icon = weatherIconFromString(iconString)
        
    }
    
    func dateStringFromUnixtime(unixTime: Int) -> String {
        let timeinSeconds = NSTimeInterval(unixTime)
        let weatherDate = NSDate(timeIntervalSince1970: timeinSeconds)
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = .ShortStyle
        
        return dateFormatter.stringFromDate(weatherDate)
        
    }
    
    func weatherIconFromString(stringIcon: String) ->UIImage {
        var imageName: String
        
        switch stringIcon {
            case "clear-day":
                imageName = "clear-day"
            case "clear-night":
                imageName = "clear-night"
            case "rain":
                imageName = "rain"
            case "snow":
                imageName = "snow"
            case "sleet":
                imageName = "sleet"
            case "wind":
                imageName = "wind"
            case "fog":
                imageName = "fog"
            case "cloudy":
                imageName = "cloudy"
            case "partly-cloudy-day":
                imageName = "partly-cloudy"
            case "partly-cloudy-night":
                imageName = "cloudy-night"
            default:
                imageName = "default"
        }
        
        var iconImage = UIImage(named: imageName)
        return iconImage
        
    }
    



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}






