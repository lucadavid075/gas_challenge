// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasChallenge {
    uint256[10] private numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    // Function to check the sum of the array
    // No changes required in this function
    function getSumOfArray() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    
    function notOptimizedFunction() public {
        for (uint256 i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }
    
    // Implement the remaining gas optimization techniques here
    // Technique 1: Fixed-Size Array Technique
    // The numbers array has been changed from a dynamic array to a fixed-size array to optimize gas usage
    
    // Technique 2: Caching of State Variables
    // The length of the numbers array is cached in the local variable length to minimize storage reads
    
    // Technique 3: Unchecked Block
    // The unchecked block is used to skip the check for overflow during the loop execution
    
    // Technique 4: Different For Loop Increment Syntax
    // The ++i increment syntax is used instead of i++ in the for loop
    
    // Sum of elements in the numbers array should equal 0
    function optimizedFunction() public {
        uint256 length = numbers.length;  // Caching state variable
        unchecked {
            for (uint256 i = 0; i < length; ++i) {  // Different for loop increment syntax
                numbers[i] = 0;
            }
        }
    }
}
