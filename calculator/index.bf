, # Input to (0)
> ++++++
[	# reduce 48
	< --------
	> -
]
, # Input to (1)
> ++++++
[	# reduce 48
	< --------
	> -
]
, # Input to (2)
- > +++++ # reduce 41
[	
	< --------
	> -
]
< [ # Copy to (3)
	> + > + << -
] >> [
	<<+>>-
] <
# 1 = *
# 2 = plus
# 4 = minus
# 6 = /

-	# Reduce 1 to see if the value was not 1
>[-]+ 	# Set 1 into (4)
>[-]	# Set 0 into (5)
<< [	# Back to (3)
	>>>[-]+	# Set 1 into (6)
	>[-]	# Set 0 into (7)
	<<<< -	# Reduce 1 more from (3) to see if the value in (2) was not 2
	[ # Go here only if (2) != 2
		>>>-<<< 	# Set 0 into (6)
		[>>>>+ <<<<-] # Move (3) into (7)
	]
	>>>>[<<<<+ >>>>-]<<<< # Move back from (7) to (3)
	>>> [ # Go here if (2) = 2 In (6)
		<<<<< [
			<+ >-
		]
		>>>>>
		-
	]
	<<<
	
 	>-< 	# Set 0 into (4)
 	[>>+<<-]	# Move x into (5)
]

>>[<<+>>-]<< # Move x back from (5) to (3)

# Working multiplication
> [ # In (4) Go here only if (2) = 1
	# Set (0) * (1) into (0)
	[-] 	# Set 0 into (4)
	>[-]	# Set 0 into (5)
	<<<<< [ >>>>>+ <<<<<- ] # Move (0) into (5)
	>>>>> [ 
		<<<< [ <+ >>>>+ <<<-]
		>>> [ <<<+ >>>- ]
		>-
	]
	<
	[-] # Set 0 into 4 
]

<<<< # Go to 0
>>>>> ++++++
[	# Add 48
	<<<<< ++++++++
	>>>>> -
]
<<<<<

.	# Go to 0 and print it
