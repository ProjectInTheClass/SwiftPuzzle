//Solution goes in Sources
class Allergies {
    
    var score: UInt
    
    init(_ score: UInt) {
        self.score = score
    }
    
    func hasAllergy(_ element: AllergyElement) -> Bool {
        var result = false
        /* write your code here */
        return result
    }
}

enum AllergyElement: Int {
    case eggs = 1
    case peanuts = 2
    case shellfish = 4
    case strawberries = 8
    case tomatoes = 16
    case chocolate = 32
    case pollen = 64
    case cats = 128
}
