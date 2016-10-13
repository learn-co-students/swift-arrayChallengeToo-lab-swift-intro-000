//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var phrase = ""
    
    func addNameToLine(name: String) -> String {
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            phrase = "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            phrase = "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            phrase = "Welcome \(name), you're number \(line) in line" // need to find the position of this persons line and interpolate it in line.
        }
        print("\(line)")
        print(phrase)
        return phrase
    }
    
    //=================================================
    func nowServing() -> String {
        var shouts = ""
        var onLine = ""
        if !line.isEmpty {
            onLine = line.first!
            print("Now serving \(onLine)")
            shouts = "Now serving \(onLine)"
            line.removeFirst()
        } else {
            shouts = "There is no one to be served"
        }
        print(line)
        return shouts
    }
    
    //=================================================
    func lineDescription() -> String {
        var currentLineStatus = ""
        if !line.isEmpty {
            for (index, person) in line.enumerated() {
                print("\(index + 1). \(person)\n")
            }
        } else {
            currentLineStatus = "The line is currently empty."
        }
        
        return currentLineStatus
    }
    
}

/* TODO:
    - for in loop for the line description
    - need to also pull that position out for the addNameToLine func
*/

/*
 var line: [String] = []
 var phrase = ""
 
 func addNameToLine(name: String) -> String {
 switch name {
 case "Billy Crystal":
 line.insert(name, at: 0)
 phrase = "Welcome Billy Crystal! You can sit wherever you like."
 case "Meg Ryan":
 line.insert(name, at: 0)
 phrase = "Welcome Meg Ryan! You can sit wherever you like."
 default:
 line.append(name)
 phrase = "Welcome \(name), you're number \(line) in line" // need to find the position of this persons line and interpolate it in line.
 }
 print("\(line)")
 print(phrase)
 return phrase
 }
 
 addNameToLine(name: "James")
 addNameToLine(name: "John")
 addNameToLine(name: "Meg Ryan")
 addNameToLine(name: "Billy Crystal")
 addNameToLine(name: "Meg")
 
 //=================================================
 
 func nowServing() -> String {
 var shouts = ""
 var onLine = ""
 if !line.isEmpty {
 onLine = line.first!
 print("Now serving \(onLine)!")
 shouts = "Now serving \(onLine)!"
 line.removeFirst()
 } else {
 shouts = "There is no one to be served"
 }
 print(line)
 return shouts
 }
 
 nowServing()
 nowServing()
 
 //=================================================
 func lineDescription() -> String {
 var currentLineStatus = ""
 if !line.isEmpty {
 for (index, person) in line.enumerated() {
 print("\(index + 1). \(person)\n")
 }
 } else {
 currentLineStatus = "The line is currently empty."
 }
 
 return currentLineStatus
 }
 
 lineDescription()
 lineDescription()
 
 /*
 TODO:
 - "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom" needs to be added.
 - "Welcome Name, you're number # in line" the number of place needs to be added, right now it's an array.
 -
 */
 */
