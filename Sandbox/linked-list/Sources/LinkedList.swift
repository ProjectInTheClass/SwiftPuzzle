//Solution goes in Sources
class Deque<T> {
    
    var headNode: Node<T>?
    
    func push(_ value: T) {
        /* write your code here */
    }
    
    func pop() -> T {
        /* write your code here */
    }
    
    func shift(_ value: T) {
        /* write your code here */
    }
    
    func unshift() -> T {
        /* write your code here */
    }
}

struct Node<T> {
    var value: T
    var next: Node<T>?
    var prev: Node<T>?
    
    /* write your code here */
}
