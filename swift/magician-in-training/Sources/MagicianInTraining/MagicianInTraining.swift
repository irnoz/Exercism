func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newStack = stack
    
    guard index >= 0 && stack.count > index else { return newStack }
    
    newStack[index] = newCard
    
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    
    newStack.append(newCard)
    
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newStack: [Int] = []
    
    for i in 0...stack.count-1 {
        if (i != index) {
            newStack.append(stack[i])
        }
    }
    
    return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    
    guard newStack.count != 0 else { return newStack }
    
    newStack.removeLast()
    
    return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newStack = [newCard]
    
    newStack.append(contentsOf: stack)
    
    return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var newStack: [Int] = []
    
    for i in 1...stack.count-1 {
        newStack.append(stack[i])
    }
    
    return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    var numberOfEvenCards: Int = 0
    
    for card in stack {
        if card % 2 == 0 {
            numberOfEvenCards += 1
        }
    }
    
    return numberOfEvenCards
}
