# SwiftStack

SwiftStack is a simple stack implementation in Swift. This package includes a `Stack` struct which is a last-in, first-out (LIFO) data structure.

## Usage

```swift
import SwiftStack
let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
print(stack.pop()) // 3
print(stack.pop()) // 2
print(stack.pop()) // 1
```

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "
```
## Licensing
This stack implementation was originally released in the Swift Algorithm Club repository. It was originally released under the MIT license. See the original repo, [kodecocodes/swift-algorithm-club](https://github.com/kodecocodes/swift-algorithm-club/tree/master?tab=MIT-1-ov-file) for more information. You can find the original license in the `swift-algorithm-club LICENSE.txt` file. 

I have made some modifications to the original code in order to make it a Swift package, and update to modern Swift. This repo is also released under the MIT license which you can find in the `LICENSE.txt` file in this repo. 
