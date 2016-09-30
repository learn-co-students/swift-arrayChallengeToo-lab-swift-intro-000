//: Playground - noun: a place where people can play

import UIKit

    
    var line: [String] = []
    //var y = 0    // 1
    func addNameToLine(name: String) -> String {
        
        // TODO: Implement this function.
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
        case "Meg Ryan":
            line.insert(name, at: 0)
        default:
            line.append(name)
        }

        if name == "Billy Crystal" || name == "Meg Ryan" {
            
            //y += 1
            return "Welcome \(name)! You may sit wherever you like."
        }
        else if name == line[0] {
            //y += 1
            return "Welcome \(name), you're first in line!"
        }
        else {
            //y += 1
            return "Welcome \(name), you're number \(line.enumerated()) in line."
        }
    }
    
    func nowServing() -> String {
        var toBeServed: [String] = []
        
        if line.isEmpty {
            return "There is no one to be served."
        }
        else {
            toBeServed.append(line[0])
            line.remove(at: 0)
            y -= 1
            return "Now serving \(toBeServed[0])!"
        }
    }

    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        }
        else {
            return "The line is:\n1. \(line[0])\n2. \(line[1])\n3. \(line[2])\n4. \(line[3])"
            
        }
    }

addNameToLine(name: "Jake")
addNameToLine(name: "Tiffany")
addNameToLine(name: "Billy Crystal")
addNameToLine(name: "Meg Ryan")
addNameToLine(name: "Jim")

nowServing()
nowServing()
nowServing()
nowServing()
nowServing()
nowServing()

lineDescription()

addNameToLine(name: "Jake")
addNameToLine(name: "Tiffany")
addNameToLine(name: "Billy Crystal")
addNameToLine(name: "Meg Ryan")
addNameToLine(name: "Jim")

print(lineDescription())









