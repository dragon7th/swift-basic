To pick a card, return the card at index position from the given stack.
Implement the function that takes two arguments: 
at which is the position of the card in the stack, and from which is the stack of cards.
The function should return the card at position index from the given stack.

func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

let index = 2
let card = getCard(at: index, from: [1, 2, 4, 1])
print(card) // Output: 4

Perform some sleight of hand and exchange the card at index position with the 
replacement card provided.
Implement the function setCard(at:in:to) that takes three arguments: 
at which is the position of the card in the stack, in which is the stack of cards, 
and to which is the new card to replace the card at position index. 
The function should return a copy of the stack with the card at position 
index replaced with the new card. If the given index is not a valid index in the stack,
the original stack should be returned, unchanged.

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newStack = stack // Create a mutable copy of the stack
    
    if index >= 0 && index < stack.count {
        newStack[index] = newCard // Replace the card at the specified index
    }
    
    return newStack // Return the modified stack (or the original if the index was invalid)
}

let index = 2
let newCard = 6
let result = setCard(at: index, in: [1, 2, 4, 1], to: newCard)
print(result) // Output: [1, 2, 6, 1]

Function Signature:
func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int]
Defines a function named setCard that takes three arguments:
index: The index (position) of the card to be replaced (an integer).
stack: The array (stack) of cards (an array of integers).
newCard: The new card value to replace the existing card at the given index (an integer).
The function returns a new array of integers ([Int]) representing the modified stack. 
It's important that the function doesn't modify the original stack array directly (immutability is a good practice).

Create a Mutable Copy:
var newStack = stack
Creates a mutable copy of the input stack array and assigns it to the variable newStack. The var keyword is used here to make it mutable,
so you can change the elements in the array. If you used let, you would be creating an immutable copy that can't be modified.

Check for Valid Index:
if index >= 0 && index < stack.count { ... }
This if statement checks if the provided index is a valid index within the bounds of the stack array.
index >= 0: Checks if the index is non-negative (arrays start at index 0).
index < stack.count: Checks if the index is less than the number of elements in the array (ensuring it's not out of bounds).

Replace the Card:
newStack[index] = newCard
If the index is valid (the if condition is true), this line replaces the card at the specified index in the newStack array with the newCard value.

Return the Modified Stack:
return newStack
Finally, the function returns the newStack array. If the index was valid, this will be the modified stack with the card replaced. 
If the index was invalid, this will be a copy of the original stack, unchanged.
Make a card appear by inserting a new card at the top of the stack.

Implement the function insert(_:atTopOf:) that takes two arguments: the new card to be inserted,
and the stack of cards. The function should returns a copy of the stack with the new card 
provided added to the top of the stack.
Make a card appear by inserting a new card at the top of the stack.

Implement the function insert(_:atTopOf:) that takes two arguments: 
the new card to be inserted, and the stack of cards. The function
should returns a copy of the stack with the new card provided added 
to the top of the stack.

let newCard = 8
insert(newCard, atTopOf: [5, 9, 7, 1])
// returns [5, 9, 7, 1, 8]

import Foundation

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

let newCard = 8
let originalStack = [5, 9, 7, 1]
let updatedStack = insert(newCard, atTopOf: originalStack)
print(updatedStack)

import Foundation
import Foundation: This line imports the Foundation framework. Foundation provides basic Objective-C data types, collections, and operating system services to Swift. While not strictly required for this particular function (since we're only using basic Int arrays), it's a common practice to include it in Swift files as it provides a wide range of utility functions.

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int]: This line defines a function named insert. Let's dissect it further:
func insert(...): This declares a function named insert.
_ newCard: Int: This defines the first parameter of the function.
_: The underscore _ means that this parameter does not need to be named when the function is called. For example, we call the function as insert(8, atTopOf: myStack) and not insert(newCard: 8, atTopOf: myStack). This is often used for the first parameter to make the function call read more naturally.
newCard: Int: This specifies that the parameter is named newCard (internally within the function) and that it expects an integer (Int) value. This represents the new card we want to add to the top of the stack.
atTopOf stack: [Int]: This defines the second parameter of the function.
atTopOf: This is the external parameter name. It's what you use when you call the function.
stack: [Int]: This specifies that the parameter is named stack (internally) and that it expects an array of integers ([Int]). This represents the existing stack of cards.
-> [Int]: This indicates that the function will return a value, and that the value will be an array of integers ([Int]). This will be the new stack with the card inserted.

var newStack = stack
var newStack = stack: This line creates a mutable copy of the stack array.
var newStack: This declares a new variable named newStack. The var keyword indicates that the value of this variable can be changed (i.e., it's mutable).
= stack: This assigns the value of the stack parameter to the newStack variable. Crucially, this creates a copy of the array. In Swift, arrays are value types (structs), so assigning one array to another creates a new, independent copy. This is important because we don't want to modify the original stack array that was passed into the function.

newStack.append(newCard)
newStack.append(newCard): This line adds the newCard to the end of the newStack array, which, in this analogy, adds it to the top of the stack.
newStack.append(...): This calls the append method on the newStack array. The append method adds a new element to the end of the array.
(newCard): This provides the value to be appended, which is the newCard integer that was passed into the function.

return newStack
return newStack: This line returns the modified newStack array, which now contains the original elements of the stack with the new card added to the "top" (end) of the array.

let newCard = 8
let originalStack = [5, 9, 7, 1]
let updatedStack = insert(newCard, atTopOf: originalStack)
print(updatedStack)
These lines set up the example and print the output. They are not part of the core function definition but demonstrate how to use it.
In summary, the insert function takes a new card and a stack of cards, creates a copy of the stack, adds the new card to the end of the copied stack (simulating inserting at the top), and returns the modified copy. The original stack remains unchanged.
Make a card disappear by removing the card at the given position from the stack.

Implement the function removeCard(at:from:) that takes two arguments: 
at which is the position of the card in the stack, and from which is the stack of cards. 
The function should return a copy of the stack with the card at position index removed. 
If the given index is not a valid index in the stack, the original stack should 
be returned, unchanged.

let index = 2
removeCard(at: index, from: [3, 2, 6, 4, 8])
// returns [3, 2, 4, 8]

import Foundation

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    guard index >= 0, index < stack.count else {
        return stack // Return original stack if index is out of bounds
    }

    var newStack = stack
    newStack.remove(at: index)
    return newStack
}

let index = 2
let originalStack = [3, 2, 6, 4, 8]
let updatedStack = removeCard(at: index, from: originalStack)
print(updatedStack)

Function Definition:

func removeCard(at index: Int, from stack: [Int]) -> [Int] defines a function named removeCard that takes two arguments:
at index: Int: The index of the card to remove (an integer).
from stack: [Int]: The stack of cards (an array of integers).
-> [Int]: The function returns a new array of integers, representing the stack with the card removed.
Index Validation:

guard index >= 0, index < stack.count else { return stack } This is a guard statement that checks if the provided index is valid for the given stack.
index >= 0: Checks if the index is non-negative (0 or greater).
index < stack.count: Checks if the index is less than the number of elements in the stack.
If either of these conditions is false (meaning the index is out of bounds), the else block is executed. In this case, the else block simply return stack, which returns the original, unmodified stack. This handles the case where an invalid index is provided.
Creating a Copy:

var newStack = stack This line creates a mutable copy of the stack array, similar to the previous example. We do this to avoid modifying the original stack that was passed into the function.
Removing the Card:

newStack.remove(at: index): This line removes the element at the specified index from the newStack array. The remove(at:) method modifies the array in place.
Returning the Modified Stack:

return newStack: This line returns the newStack array, which now contains the original elements of the stack except for the card that was removed at the specified index.
                                                                                                                                    
Make a card appear by inserting a new card at the given position in the stack.

Implement the function insert(_:at:from:) that takes three arguments: the new card to be inserted, 
the position at which the new card should be inserted, and the stack of cards. 
The function should return a copy of the stack with the new card provided added at the given position. 
If the given index is not a valid index in the stack, the original stack should be returned, unchanged.

let newCard = 8
insert(newCard, at: 2, from: [5, 9, 7, 1])
// returns [5, 9, 8, 7, 1]

Function Definition:


func insert(_ newCard: Int, at position: Int, from stack: [Int]) -> [Int] {
    // Function body goes here
}
func insert(...) -> [Int]: This line defines a function named insert.
It takes three input parameters:
newCard: An Int representing the card to be inserted.
position: An Int representing the index at which the card should be inserted.
stack: An array of Int representing the original stack of cards.
The -> [Int] part specifies that the function will return a new array of Int representing the modified stack.
2. Creating a Copy:


var newStack = stack
var newStack = stack: This line creates a copy of the original stack array and assigns it to a new variable called newStack. It's crucial to create a copy. Without it, you'd be modifying the original array directly, which might not be what you want (especially if the original array is used elsewhere). By using var, we are creating a mutable copy.
3. Input Validation:


if position >= 0 && position <= stack.count {
    // Insertion logic goes here
}
if position >= 0 && position <= stack.count: This if statement checks whether the provided position is a valid index for inserting an element into the array.
position >= 0: Ensures that the position is not negative (array indices start at 0).
position <= stack.count: Ensures that the position is not greater than the number of elements in the array. It's important to use <= here, rather than <. The .insert(_:at:) function allows insertion before the end of the array, at stack.count.
4. Inserting the New Card:


newStack.insert(newCard, at: position)
newStack.insert(newCard, at: position): This line performs the actual insertion. It uses the insert(_:at:) method of the newStack array to insert newCard at the specified position. This shifts all the elements from that position onwards to the right, making space for the new card.
5. Returning the Modified Stack:


return newStack
return newStack: If the position was valid (i.e., the if condition was true), this line returns the newStack array, which now contains the inserted card.
6. Returning the Original Stack (if invalid):

The if statement in step 3 only executes the insertion logic if the position is valid. If the position is not valid, the code inside the if block is skipped, and the function proceeds directly to the return newStack statement after the if block. In this case, newStack is the unmodified copy of the original stack, which is then returned, so the function returns the original stack.

Example Usage:


let newCard = 8
let result = insert(newCard, at: 2, from: [5, 9, 7, 1])
print(result) // Output: [5, 9, 8, 7, 1]

let invalidIndexResult = insert(newCard, at: 5, from: [5, 9, 7, 1])
print(invalidIndexResult) // Output: [5, 9, 7, 1]
The first example inserts the card 8 at index 2 of the array [5, 9, 7, 1], resulting in [5, 9, 8, 7, 1].
The second example tries to insert the card 8 at index 5 which is out of bounds (the valid indices are 0 to 4). The function returns the original array, unchanged.
In summary, the code defines a function that inserts a new card into a stack at a specified position, taking care to validate the position and create a copy of the stack to avoid modifying the original. If the index is invalid, the function returns the original, unchanged stack.                                                                                                                                     
                                                                                                                                     
Check whether the size of the stack is equal to stackSize or not.

Implement the function checkSizeOfStack(_:_:) 
that takes two arguments: stack which is the stack of cards, 
and stackSize which is the size of the stack. The function should return true if 
the size of the stack is equal to stackSize and false otherwise.

let stackSize = 4
checkSizeOfStack([3, 2, 6, 4, 8], stackSize)
// returns false

func checkSizeOfStack(_ stack: [Int], _ stackSize: Int) -> Bool {
    return stack.count == stackSize
}

let stackSize = 4
let result = checkSizeOfStack([3, 2, 6, 4, 8], stackSize)
print(result) // Output: false

func checkSizeOfStack(_ stack: [Int], _ stackSize: Int) -> Bool {
    return stack.count == stackSize
}
Let's break down this Swift code:

Function Definition:


func checkSizeOfStack(_ stack: [Int], _ stackSize: Int) -> Bool {
    // Function body
}
func checkSizeOfStack(...) -> Bool: This defines a function named checkSizeOfStack.
It takes two input parameters:
stack: An array of Int representing the stack of cards.
stackSize: An Int representing the expected size of the stack.
The -> Bool part specifies that the function will return a Bool value (either true or false).
Checking the Size:


return stack.count == stackSize
stack.count: This accesses the count property of the stack array. The count property returns the number of elements in the array.
==: This is the equality operator. It compares the value on the left side (stack.count) to the value on the right side (stackSize).
return: The function returns the result of the equality comparison (either true if the stack's size is equal to stackSize, or false if they are not equal).
In essence, the function is a concise way to determine if the actual number of elements in an array matches a given expected size.

Example Usage:


let stackSize = 4
let result = checkSizeOfStack([3, 2, 6, 4, 8], stackSize)
print(result) // Output: false
let stackSize = 4: This defines a constant stackSize and assigns it the value 4.
let result = checkSizeOfStack([3, 2, 6, 4, 8], stackSize): This calls the checkSizeOfStack function with the array [3, 2, 6, 4, 8] and the value 4. The function returns false because the array has 5 elements, not 4.
print(result): This prints the returned value (false) to the console.                                                                                                                                    
