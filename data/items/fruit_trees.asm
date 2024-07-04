FruitTreeItems:
; entries correspond to FRUITTREE_* constants
	table_width 1, FruitTreeItems
	db BERRY        ; ROUTE_29
	db PSNCUREBERRY        ; ROUTE_30_1
	db BITTER_BERRY        ; ROUTE_38
	db BERRY        ; ROUTE_46_1
	db PSNCUREBERRY ; ROUTE_30_2
	db PSNCUREBERRY ; ROUTE_33
	db BITTER_BERRY ; ROUTE_31
	db BITTER_BERRY ; ROUTE_43
	db PRZCUREBERRY ; VIOLET_CITY
	assert_table_length NUM_FRUIT_TREES
