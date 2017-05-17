//Solution goes in Sources
class BinarySearch {
    
    var searchArray: [Int]
    
    var middle: Int {
        get {
            /* write your code here */
        }
    }
    
    init(_ array:[Int]) throws {
        
        /* write your code here */
        
        self.searchArray = array
    }
    
    func searchFor(_ target:Int) -> Int {
        /* write your code here */
    }
}

enum BinarySearchError: Error {
    case unsorted
}
