        .text
        .align  1
        .globl  bubblesort
        .type   bubblesort, @function
bubblesort:
        li t0,0         # t0 -> i
        addi t2,a1,-1     # t2 = n-1

.Louter:
        bge t0,t2,.L2   # i >= n-1, exit
        sub t4,t2,t0    # t4 = n-1-i
        li t1,0         # t1 -> j

.Linner:
        bge t1,t4,.Loutnxt  # j >= n-1-i, exit
        slli t5,t1,2        # t5 = j*4 (word size)
        add t5,a0,t5        # t5 = &arr[j]
        lw t6,0(t5)         # t6 = arr[j]
        lw a2,4(t5)         # a2 = arr[j+1]

        ble t6,a2,.Linnxt   # if arr[j] <= arr[j+1], skip swap
        sw a2,0(t5)         # arr[j] = arr[j+1]
        sw t6,4(t5)         # arr[j+1] = arr[j

.Linnxt:
        addi t1,t1,1        # j++
        j .Linner

.Loutnxt:
        addi t0,t0,1        # i++
        j .Louter


.L2:
        li      a0,0
        ret
        .size   bubblesort, .-bubblesort
