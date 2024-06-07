import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
    line.isEmpty ? "_" : line.first!
}

func capitalize(_ phrase: String) -> String {
    phrase.capitalized
//    var capitalizedPhrase: String = ""
//    let parsedPhrase = phrase.components(separatedBy: " ")
//    for word in parsedPhrase {
//        for (index, letter) in word.enumerated() {
//            if index == 0 {
//                capitalizedPhrase += letter.uppercased()
//            } else {
//                capitalizedPhrase += letter.lowercased()
//            }
//        }
//        capitalizedPhrase += " "
//    }
//    capitalizedPhrase.removeLast()
//    return capitalizedPhrase
}

func trimFromEnd(_ line: String) -> String {
    var trimmedLine: String = line
    while !trimmedLine.isEmpty && trimmedLine.last!.isWhitespace {
        trimmedLine.removeLast()
    }
    return trimmedLine
}

func lastLetter(_ line: String) -> Character {
    line.isEmpty ? "_" : line.last!
}

func backDoorPassword(_ phrase: String) -> String {
    phrase.capitalized + ", please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    line.count > i ? Array(line)[i] : " "
}

func secretRoomPassword(_ phrase: String) -> String {
    phrase.uppercased() + "!"
//    var shoutedPhrase: String = ""
//    for letter in phrase {
//        shoutedPhrase += Character(String(letter)).uppercased()
//    }
//    return shoutedPhrase + "!"
}
