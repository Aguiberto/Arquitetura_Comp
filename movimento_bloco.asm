
main:	lui $8,0x1001
	ori $9,0xffffff
	ori $10,0x0000
	ori $12,0x00ff00
	
	sw $12,0($8)
	sw $12,128($8)