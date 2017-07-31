//Solution goes in Sources
class Clock: CustomStringConvertable, Comparable {
    
    var hours: Int
    var minutes: Int
    
    var description: String {
        get {
            var result: String = ""
            /* write your code here */
            return result
        }
    }
    
    init(hours: Int) {
        self.hours = hours
        self.minutes = 0
    }
    
    init(hours: Int, minutes: Int) {
        self.hours = hours
        self.minutes = minutes
    }
    
    func add(minutes: Int) -> Clock {
        /* write your code here */
        return self
    }
    
    func subtract(minutes: Int) -> Clock {
        /* write your code here */
        return self
    }
}

func ==(lhs: Clock, rhs: Clock) -> Bool {
    var result: Bool = false
    /* write your code here */
    return result
}

func <(lhs: Clock, rhs: Clock) -> Bool {
    var result: Bool = false
    /* write your code here */
    return result
}
