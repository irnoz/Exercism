import Foundation
let allLetters = Set("qwertyuioplkjhgfdsazxcvbnm")
func isPangram(_ text: String) -> Bool {
    return allLetters.isSubset(of: text.lowercased())
    
}
