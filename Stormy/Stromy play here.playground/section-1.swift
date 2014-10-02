// Playground - noun: a place where people can play

import UIKit



var languages = ["iOS" : "Swift", "Android" : "Java"]
var iosLanguage = ["iOS"]



var str = "Hello, playground"


let courseID = 25
let treehouseBaseURL = NSURL (string: "https://api.teamtreehouse.com/course/")
let courseURL = NSURL (string: "\(courseID)", relativeToURL: treehouseBaseURL)

let apiKey = "7c505f66e89315ea30ef5096d540f444"

let baseURL = NSURL (string: "https://api.forecast.io/forecast/\(apiKey)/")
let forcastURL = NSURL (string: "37.8267,-122.423", relativeToURL: baseURL)
