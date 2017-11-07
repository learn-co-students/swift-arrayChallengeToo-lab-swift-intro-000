//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        var res : String = "";
        
        switch name {
        case "Billy Crystal":
            res = "Welcome Billy Crystal! You can sit wherever you like."
            line.insert(name, at: 0)
        case "Meg Ryan":
            res = "Welcome Meg Ryan! You can sit wherever you like."
            line.insert(name, at: 0)
        default:
            res = (line.isEmpty) ? "Welcome \(name), you're first in line!" : "Welcome \(name), you're number \(line.count+1) in line."
            line.append(name)
        }
        return res
    }
    
    
    // 2
    func nowServing() -> String {
        var str : String = "";
        if !line.isEmpty{
            str = "Now serving \(line.first!)!"
            line.removeFirst()
        }
        else {
            str = "There is no one to be served."
        }
        return str
    }
    
    
    // 3
    func lineDescription() -> String {
        var res : String;
        if line.isEmpty {
            res = "The line is currently empty."
        } else {
            var queue = ""
            for (num, lineitem) in line.enumerated() {
                queue += "\(num+1). \(lineitem)\n"
            }
            res = "The line is:\n\(queue.trimmingCharacters(in:.whitespacesAndNewlines))"
        }
       return res
        
    }
    
}
