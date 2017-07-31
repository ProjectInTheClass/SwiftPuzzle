//Solution goes in Sources
class CustomSet<T>: NSObject, Comparable {
    
    init(_ items: [T]) {
        /* write your code here */
    }
    
    var size: Int {
        var result = -1
        /* write your code here */
        return result
    }
    
    var toSortedArray: [T] {
        var result: [T] = []
        /* write your code here */
        return result
    }
    
    func put(item: T) {
        /* write your code here */
    }
    
    func delete(item: T) {
        /* write your code here */
    }
    
    func removeAll() {
        /* write your code here */
    }
    
    func containsMember(item: T) -> Bool {
        var result = false
        /* write your code here */
        return result
    }
    
    func difference(otherSet: CustomSet<T>) -> CustomSet<T> {
        var result = self
        /* write your code here */
        return result
    }
    
    func isDisjoint(otherSet: CustomSet<T>) -> Bool {
        var result = false
        /* write your code here */
        return result
    }
    
    func intersection(otherSet: CustomSet<T>) -> CustomSet<T> {
        var result = self
        /* write your code here */
        return result
    }
    
    func isSupersetOf(otherSet: CustomSet<T>) -> Bool {
        var result = false
        /* write your code here */
        return result
    }
    
    func union(otherSet: CustomSet<T>) -> CustomSet<T> {
        var result = self
        /* write your code here */
        return result
    }
}
