/*
 Last-in first-out stack (LIFO)
 Push and pop are O(1) operations.
 */
public struct Stack<T> {
  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public mutating func push(_ element: T) {
    array.append(element)
  }
  
  public mutating func pop() -> T? {
    return array.popLast()
  }
  
  public var top: T? {
    return array.last
  }

  /// Returns a copy of the stack as an array.
  public func asArray() -> [T] {
    return array
  }
}

extension Stack: Sendable where T: Sendable {}
extension Stack: Equatable where T: Equatable {}
extension Stack: Hashable where T: Hashable {}
extension Stack: Codable where T: Codable {}

extension Stack: Sequence {
  public func makeIterator() -> AnyIterator<T> {
    var curr = self
    return AnyIterator {
      return curr.pop()
    }
  }
}

extension Stack: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: T...) {
    self.init(array: elements)
  }
}
