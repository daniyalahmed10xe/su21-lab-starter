.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    add t1, a0, x0  # Used as a counter to compute factorial
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    base: beq a0, x0, return
          addi t1, t1, -1

          cond: bgt t1, x0, else
                j if
          if:
              ret
          else:
              mul a0, a0, t1
              j factorial
    return:
        addi a0, x0, 1
        ret