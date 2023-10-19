# Define constants
.data
array:  .byte 5, 2, 9, 1, 0  # Example byte array with 0 as the end marker

# Program to sort the byte array using Bubble Sort
.text
.globl main
main:
    # Load the address of the array into a register
    la a0, array

loop:
    # Load the first element into a register
    lb a1, 0(a0)

    # If the element is 0 (end marker), exit the loop
    beqz a1, done

    # Load the next element
    lb a2, 1(a0)

    # Compare a1 and a2
    blt a1, a2, skip_swap

    # Swap the elements
    sb a2, 0(a0)
    sb a1, 1(a0)

skip_swap:
    # Move to the next pair of elements
    addi a0, a0, 1

    # Repeat the loop
    j loop

done:
    # Exit the program
    j exit

exit:
    # Halt the program (you may need to implement this part based on your environment)
