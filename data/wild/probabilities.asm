MACRO mon_prob
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 10,  0 ; All mons have 10% appear chance
	mon_prob 20,  1
	mon_prob 30,  2
	mon_prob 40,  3
	mon_prob 50,  4
	mon_prob 60,  5
	mon_prob 70,  6
	mon_prob 80,  7
	mon_prob 90,  8
	mon_prob 100, 9
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
	assert_table_length NUM_WATERMON
