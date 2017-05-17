//Solution goes in Sources
class Bowling {
    
    var turnCount = 0
    var currentScore = 0
    
    func roll(pins: Int) throws {
        /* write your code here */
    }
    
    func score() throws -> Int {
        /* write your code here */
    }
}

enum BowlingError: Error {
    case invalidNumberOfPins
    case tooManyPinsInFrame
    case gameInProgress
    case gameIsOver
}
