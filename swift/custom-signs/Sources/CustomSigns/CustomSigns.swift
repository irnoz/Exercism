// TODO: define the 'birthday' String constant

// TODO: define the 'valentine' String constant

// TODO: define the 'anniversary' String constant

// TODO: define the 'space' Character constant

// TODO: define the 'exclamation' Character constant

let birthday: String = "Birthday"
let valentine: String = "Valentine's Day"
let anniversary: String = "Anniversary"
let space: Character = " "
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    let spaceString = String(space)
    let exclamationString = String(exclamation)
    return "Happy" + spaceString + occasion + spaceString + name + exclamationString
  }

func graduationFor(name: String, year: Int) -> String {
    return "Congratulations\(space)\(name)\(exclamation)\nClass of \(year)"
  }

func costOf(sign: String) -> Int {
    return 20 + sign.count * 2
  }
