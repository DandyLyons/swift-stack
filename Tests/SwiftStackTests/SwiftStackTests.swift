import Foundation
import Testing
@testable import SwiftStack

@Suite("Stack")
struct StackTests {
    
    @Test func pushAndPop() async throws {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        #expect(stack.count == 3)
        #expect(stack.pop() == 3)
        #expect(stack.pop() == 2)
        #expect(stack.pop() == 1)
        #expect(stack.pop() == nil)
    }

    @Test func asArray() async throws {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        #expect(stack.asArray() == [1, 2, 3])
    }

    @Test func sequence() async throws {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        var result = [Int]()
        for element in stack {
            result.append(element)
        }
        #expect(result == [3, 2, 1])
    }

    @Test func equatable() async throws {
        let stack1: Stack = [1, 2, 3]
        let stack2: Stack = [1, 2, 3]
        let stack3: Stack = [3, 2, 1]
        #expect(stack1 == stack2)
        #expect(stack1 != stack3)
    }

    @Test func hashable() async throws {
        let stack1: Stack = [1, 2, 3]
        let stack2: Stack = [1, 2, 3]
        let stack3: Stack = [3, 2, 1]
        #expect(stack1.hashValue == stack2.hashValue)
        #expect(stack1.hashValue != stack3.hashValue)
    }

    @Test func codable() async throws {
        let stack1: Stack = [1, 2, 3]
        let encoder = JSONEncoder()
        let data = try encoder.encode(stack1)
        let decoder = JSONDecoder()
        let stack2 = try decoder.decode(Stack<Int>.self, from: data)
        #expect(stack1 == stack2)
    }

    @Test func expressibleByArrayLiteral() async throws {
        let stack: Stack = [1, 2, 3]
        #expect(stack.asArray() == [1, 2, 3])
    }


}
