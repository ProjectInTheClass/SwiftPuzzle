//Solution goes in Sources
class BinarySearch {
    
    var searchArray: [Int]
    
    var middle: Int {
        get {
            var result: Int = 0
            /* write your code here */
            return result
        }
    }
    
    init(_ array:[Int]) throws {
        /* write your code here */
        
        self.searchArray = array
    }
    
    func searchFor(_ target:Int) -> Int {
        var result: Int = -1
        /* write your code here */
        return result
    }
}

enum BinarySearchError: Error {
    case unsorted
}
