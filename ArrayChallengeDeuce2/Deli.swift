
class Deli {
    var line: [String] = []

    func addNameToLine(name: String) -> String {
        switch name {
        case "Meg Ryan", "Billy Crystal":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }

    func nowServing() -> String {
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let first = line.remove(at: 0)
            return "Now serving \(first)!"
        }
    }

    func lineDescription() -> String {
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var response = "The line is:"
            for (i, person) in line.enumerated() {
                response += "\n\(i+1). \(person)"
            }
            return response
        }
    }
}
