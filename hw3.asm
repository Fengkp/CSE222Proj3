##############################################################
# Homework #3
# name: MY_NAME
# sbuid: MY_SBU_ID
##############################################################
.text

##############################
# PART 1 FUNCTIONS
##############################

smiley:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    la $t2, 0xffff0001
    jal makeSmiley  
    lw $ra, 0($sp)
    addi $sp, $sp, 4
	jr $ra

	blackBG:
		addi $t4, $t4, 1
		bgt $t4, 100, makeSmiley
		li $t3, 15
    	sb $t3, 0($t2)
    	addi $t2, $t2, 2
    	j blackBG
    	
    makeSmiley:
    	# Eyes
    	li $t3, 'b'
    	li $t4, 183
    	#(2, 3)
    	la $t1, 0xffff002e
    	la $t2, 0xffff002f
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(3, 3)
    	la $t1, 0xffff0042
    	la $t2, 0xffff0043
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(2, 6)
    	la $t1, 0xffff0034
    	la $t2, 0xffff0035
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(3, 6)
    	la $t1, 0xffff0048
    	la $t2, 0xffff0049
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	
    	# Smile
    	li $t3, 'e'
    	li $t4, 31
    	#(6, 2)
    	la $t1, 0xffff007c
    	la $t2, 0xffff007d
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(7,3)
    	la $t1, 0xffff0092
    	la $t2, 0xffff0093
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(8, 4)
    	la $t1, 0xffff00a8
    	la $t2, 0xffff00a9
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(8, 5)
    	la $t1, 0xffff00aa
    	la $t2, 0xffff00ab
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(7, 6)
    	la $t1, 0xffff0098
    	la $t2, 0xffff0099
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	#(6, 7)
    	la $t1, 0xffff0086
    	la $t2, 0xffff0087
    	sb $t3, 0($t1)
    	sb $t4, 0($t2)
    	
    	jr $ra
    	
    exit:
    	jr $ra

##############################
# PART 2 FUNCTIONS
##############################

open_file:
    #Define your code here
    ############################################
    # DELETE THIS CODE. Only here to allow main program to run without fully implementing the function
    li $v0, -200
    ###########################################
    jr $ra

close_file:
    #Define your code here
    ############################################
    # DELETE THIS CODE. Only here to allow main program to run without fully implementing the function
    li $v0, -200
    ###########################################
    jr $ra

load_map:
    #Define your code here
    ############################################
    # DELETE THIS CODE. Only here to allow main program to run without fully implementing the function
    li $v0, -200
    ###########################################
    jr $ra

##############################
# PART 3 FUNCTIONS
##############################

init_display:
    #Define your code here
    jr $ra

set_cell:
    #Define your code here
    ############################################
    # DELETE THIS CODE. Only here to allow main program to run without fully implementing the function
    li $v0, -200
    ###########################################
    jr $ra

reveal_map:
    #Define your code here
    jr $ra


##############################
# PART 4 FUNCTIONS
##############################

perform_action:
    #Define your code here
    ############################################
    # DELETE THIS CODE. Only here to allow main program to run without fully implementing the function
    li $v0, -200
    ##########################################
    jr $ra

game_status:
    #Define your code here
    ############################################
    # DELETE THIS CODE. Only here to allow main program to run without fully implementing the function
    li $v0, -200
    ##########################################
    jr $ra

##############################
# PART 5 FUNCTIONS
##############################

search_cells:
    #Define your code here
    jr $ra


#################################################################
# Student defined data section
#################################################################
.data
.align 2  # Align next items to word boundary
cursor_row: .word -1
cursor_col: .word -1

#place any additional data declarations here

