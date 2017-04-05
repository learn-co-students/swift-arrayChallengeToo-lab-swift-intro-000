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
    
    // TODO: Implement this function.
    var message: String
    
    switch name {
    case "Meg Ryan", "Billy Crystal":
      line.insert(name, at: 0)
      message = "Welcome \(name)! You can sit wherever you like."
    default:
      line.append(name)
      if line.count == 1 {
        message = "Welcome \(name), you're first in line!"
      } else {
        message = "Welcome \(name), you're number \(line.count) in line."
      }
    }
    
    return message
  }
  
  // 2
  func nowServing() -> String {
    
    // TODO: Implement this function.
    let name: String
    
    if line.isEmpty {
      return "There is no one to be served."
    }
    
    name = line[0]
    line.remove(at: 0)
    
    return "Now serving \(name)!"
  }
  
  
  // 3
  func lineDescription() -> String {
    
    // TODO: Implement this function.
    var description: String = "The line is:"
    
    if line.isEmpty {
      return "The line is currently empty."
    }
    
    for (index, name) in line.enumerated() {
      description.append("\n\(index + 1). \(name)")
    }
    
    return description
  }
  
}
