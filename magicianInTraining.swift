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