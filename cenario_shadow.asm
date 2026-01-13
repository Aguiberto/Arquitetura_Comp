.text

main: 	lui $8, 0x1001
	ori $9, 0x5c9df2
	
	addi $10,$0,131068
	
ceu:	beq $10,$0,fimceu
	sw $9,0($8)
	addi $8,$8,4
	addi $10,$10,-1
	j ceu


fimceu: 
	addi $9,$0,0
	addi $10,$0,0
	


				# ARBUSTO
				# DIMENSÕES 40 X 7 PIXELS
				# COMPRIMENTO : 40 PIXELS (CW - EJ)
				# ALTURA: 7 PIXELS (106 - 112)

iArbusto: lui $8,0x1001

	ori $9,0x000000		# cor preta
	ori $10,0x80d010	# cor verde claro
	ori $11,0x00a800	# cor verde escuro

	
	
	# LINHA 1: 106
	# INICIO: CX
	
	sw $9,107924($8)
	sw $10,107928($8)
	sw $10,107932($8)
	sw $10,107936($8)
	sw $10,107940($8)
	sw $10,107944($8)
	sw $10,107948($8)
	sw $10,107952($8)
	sw $10,107956($8)
	sw $10,107960($8)
	sw $10,107964($8)
	sw $10,107968($8)
	sw $10,107972($8)
	sw $10,107976($8)
	sw $10,107980($8)
	sw $10,107984($8)
	sw $10,107988($8)
	sw $10,107992($8)
	sw $10,107996($8)
	sw $10,108000($8)
	sw $10,108004($8)
	sw $10,108008($8)
	sw $10,108012($8)
	sw $10,108016($8)
	sw $10,108020($8)
	sw $10,108024($8)
	sw $10,108028($8)
	sw $10,108032($8)
	sw $10,108036($8)
	sw $10,108040($8)
	sw $10,108044($8)
	sw $10,108048($8)
	sw $10,108052($8)
	sw $10,108056($8)
	sw $10,108060($8)
	sw $10,108064($8)
	sw $10,108068($8)
	sw $10,108072($8)
	sw $9, 108076($8)
	
	
	# LINHA 2: 105
	# INICIO: CW
	
	sw $9,106896($8)
	sw $10,106900($8) 
	sw $10,106904($8)
	sw $10,106908($8)
	sw $10,106912($8)
	sw $10,106916($8)
	sw $10,106920($8)
	sw $10,106924($8)
	sw $10,106928($8)
	sw $10,106932($8)
	sw $10,106936($8)
	sw $10,106940($8)
	sw $10,106944($8)
	sw $10,106948($8)
	sw $10,106952($8)
	sw $10,106956($8)
	sw $10,106960($8)
	sw $10,106964($8)
	sw $10,106968($8)
	sw $10,106972($8)
	sw $10,106976($8)
	sw $10,106980($8)
	sw $10,106988($8)
	sw $10,106992($8)
	sw $10,106996($8)
	sw $10,107000($8)
	sw $10,107004($8)
	sw $10,107008($8)
	sw $10,107012($8)
	sw $10,107016($8)
	sw $10,107020($8)
	sw $10,107024($8)
	sw $10,107028($8)
	sw $10,107032($8)
	sw $10,107036($8)
	sw $10,107040($8)
	sw $10,107044($8)
	sw $10,107048($8)
	sw $10,107052($8)
	sw $9,107056($8)
	
	# LINHA 3 : 104
	# INICIO : CW
	
	sw $9,105872($8)
	sw $10,105876($8)
	sw $10,105880($8)
	sw $10,105884($8)
	sw $10,105888($8)
	sw $10,105892($8)
	sw $10,105896($8)
	sw $10,105900($8)
	sw $10,105904($8)
	sw $10,105908($8)
	sw $10,105912($8)
	sw $10,105916($8)
	sw $10,105920($8)
	sw $10,105924($8)
	sw $10,105928($8)
	sw $10,105932($8)
	sw $10,105936($8)
	sw $10,105940($8)
	sw $10,105944($8)
	sw $10,105948($8)
	sw $10,105952($8)
	sw $10,105956($8)
	sw $10,105960($8)
	sw $10,105964($8)
	sw $10,105968($8)
	sw $10,105972($8)
	sw $10,105976($8)
	sw $10,105980($8)
	sw $10,105984($8)
	sw $10,105988($8)
	sw $10,105992($8)
	sw $10,105996($8)
	sw $10,106000($8)
	sw $10,106004($8)
	sw $10,106008($8)
	sw $10,106012($8)
	sw $10,106016($8)
	sw $10,106020($8)
	sw $10,106024($8)
	sw $10,106028($8)
	sw $9,106032($8)
	
	# LINHA 4: 103
	# INICIO : CX
	
	sw $9,104852($8)
	sw $9,104856($8)
	sw $10,104860($8)
	sw $10,104864($8)
	sw $10,104868($8)
	sw $10,104872($8)
	sw $11,104876($8)
	sw $10,104880($8)
	sw $10,104884($8)
	sw $10,104888($8)
	sw $10,104892($8)
	sw $10,104896($8)
	sw $10,104900($8)
	sw $10,104904($8)
	sw $10,104908($8)
	sw $10,104912($8)
	sw $10,104916($8)
	sw $10,104920($8)
	sw $10,104924($8)
	sw $10,104928($8)
	sw $10,104932($8)
	sw $10,104936($8)
	sw $10,104940($8)
	sw $10,104944($8)
	sw $10,104948($8)
	sw $10,104952($8)
	sw $10,104956($8)
	sw $10,104960($8)
	sw $10,104964($8)
	sw $10,104968($8)
	sw $10,104972($8)
	sw $10,104976($8)
	sw $10,104980($8)
	sw $10,104984($8)
	sw $10,104988($8)
	sw $10,104992($8)
	sw $10,104996($8)
	sw $9,105000($8)
	sw $10,105004($8)
	sw $9,105008($8)
	
	# LINHA 5: 102
	# INICIO: DA
	
	sw $9,103840($8)
	sw $10,103844($8)
	sw $11,103848($8)
	sw $10,103852($8)
	sw $10,103856($8)
	sw $10,103860($8)
	sw $10,103864($8)
	sw $10,103868($8)
	sw $10,103872($8)
	sw $10,103876($8)
	sw $10,103880($8)
	sw $10,103884($8)
	sw $10,103888($8)
	sw $10,103892($8)
	sw $10,103896($8)
	sw $10,103900($8)
	sw $10,103904($8)
	sw $10,103908($8)
	sw $10,103912($8)
	sw $10,103916($8)
	sw $10,103920($8)
	sw $10,103924($8)
	sw $10,103928($8)
	sw $10,103932($8)
	sw $10,103936($8)
	sw $10,103940($8)
	sw $10,103944($8)
	sw $10,103948($8)
	sw $10,103952($8)
	sw $10,103956($8)
	sw $9,103960($8)
	sw $10,103964($8)
	sw $10,103968($8)
	sw $9,103972($8)
	#VAZIO
	sw $9,103980($8)	
	
	# LINHA 6 : 101
	# INICIO: DA
	
	sw $9,102816($8)
	sw $10,102820($8)
	sw $10,102824($8)
	sw $10,102828($8)
	sw $10,102832($8)
	sw $10,102836($8)
	sw $10,102840($8)
	sw $10,102844($8)
	sw $10,102848($8)
	sw $10,102852($8)
	sw $10,102856($8)
	sw $10,102860($8)
	sw $10,102864($8)
	sw $10,102868($8)
	sw $10,102872($8)
	sw $10,102876($8)
	sw $10,102880($8)
	sw $10,102884($8)
	sw $10,102888($8)
	sw $10,102892($8)
	sw $10,102896($8)
	sw $10,102900($8)
	sw $10,102904($8)
	sw $10,102908($8)
	sw $10,102912($8)
	sw $10,102916($8)
	sw $10,102920($8)
	sw $10,102924($8)
	sw $10,102928($8)
	sw $9,102932($8)
	#sw $10,102816($8)
	sw $9,102940($8)
	sw $10,102944($8)
	sw $9,102948($8)
	
	# LINHA 7 : 100
	# INICIO : DB
	
	sw $9, 101796($8)
	sw $9, 101800($8)
	sw $10, 101804($8)
	sw $9, 101808($8)
	#sw $10, 101804($8)
	sw $9, 101816($8)
	sw $10, 101820($8)
	sw $11, 101824($8)
	sw $10, 101828($8)
	sw $10, 101832($8)
	sw $10, 101836($8)
	sw $10, 101840($8)
	sw $10, 101844($8)
	sw $10, 101848($8)
	sw $11, 101852($8)
	sw $10, 101856($8)
	sw $10, 101860($8)
	sw $10, 101864($8)
	sw $10, 101868($8)
	sw $10, 101872($8)
	sw $10, 101876($8)
	sw $10, 101880($8)
	sw $10, 101884($8)
	sw $10, 101888($8)
	sw $10, 101892($8)
	sw $10, 101896($8)
	sw $10, 101900($8)
	sw $10, 101904($8)
	sw $9, 101908($8)
	#sw $10, 101912($8)
	#sw $10, 101916($8)
	sw $9, 101920($8)
	
	# LINHA 8: 99
	# INICIO: DD
	
	sw $9,100780($8)
	#
	#
	#
	sw $9,100796($8)
	sw $10,100800($8)
	sw $11,100804($8)
	sw $11,100808($8)
	sw $10,100812($8)
	sw $10,100816($8)
	sw $10,100820($8)
	sw $11,100824($8)
	sw $10,100828($8)
	sw $10,100832($8)
	sw $9,100836($8)
	sw $10,100840($8)
	sw $11,100844($8)
	sw $10,100848($8)
	sw $10,100852($8)
	sw $10,100856($8)
	sw $10,100860($8)
	sw $10,100864($8)
	sw $11,100868($8)
	sw $10,100872($8)
	sw $10,100876($8)
	sw $9,100880($8)
	
	# LINHA 9: 98
	# INICIO: DH
	
	sw $9,99772($8)
	sw $10,99776($8)
	sw $10,99780($8)
	sw $10,99784($8)
	sw $10,99788($8)
	sw $10,99792($8)
	sw $10,99796($8)
	sw $10,99800($8)
	sw $10,99804($8)
	sw $9,99808($8)
	#sw $10,99772($8)
	sw $9,99816($8)
	sw $10,99820($8)
	sw $11,99824($8)
	sw $11,99828($8)
	sw $10,99832($8)
	sw $10,99836($8)
	sw $11,99840($8)
	sw $10,99844($8)
	sw $10,99848($8)
	sw $10,99852($8)
	sw $9,99856($8)
	
	# LINHA 10: 97
	# INICIO : DI
	
	sw $9,98752($8)
	sw $9,98756($8)
	sw $10,98760($8)
	sw $10,98764($8)
	sw $10,98768($8)
	sw $10,98772($8)
	sw $10,98776($8)
	sw $10,98780($8)
	sw $9,98784($8)
	#sw $10,98752($8)
	sw $9,98792($8)
	sw $10,98796($8)
	sw $10,98800($8)
	sw $10,98804($8)
	sw $10,98808($8)
	sw $10,98812($8)
	sw $10,98816($8)
	sw $9,98820($8)
	sw $10,98824($8)
	sw $9,98828($8)
	
	
	# LINHA 11: 96
	# INICIO: DK
	
	sw $9,97736($8)
	sw $10,97740($8)
	sw $10,97744($8)
	sw $9,97748($8)
	sw $10,97752($8)
	sw $9,97756($8)
	#sw $10,97736($8)
	#sw $10,97736($8)
	#sw $10,97736($8)
	sw $9,97772($8)
	sw $9,97776($8)
	sw $10,97780($8)
	sw $10,97784($8)
	sw $10,97788($8)
	sw $9,97792($8)
	#sw $10,97736($8)
	sw $9,97800($8)
	
	
	# LINHA 12: 95
	# INICIO: DL
	
	sw $9,96716($8)
	sw $9,96720($8)
	#
	sw $9,96728($8)
	#
	#
	#
	#
	#
	#
	sw $9,96756($8)
	sw $9,96760($8)
	sw $9,96764($8)
	
fimArbusto:
	addi $9,$0,0
	addi $10,$0,0
	addi $11,$0,0
	

#----------------------- NUVEM ------------------------------------
		# DIMENSOES : 21 x 16 pixels
		
		# COMPRIMENTO  21 pixels 
		#	colunas: AV - BQ
		# ALTURA : 16 pixels 
		#	 linhas 10 - 26

		# COMECANDO PELO MEIO - LINHA 19
		
iNumvem:
	lui $8, 0x1001

	ori $9, 0x000000	# preto
	ori $10,0xffffff	# branco
	ori $11,0x3cbcfc	# azul claro
	
	# LINHA 1: 11
	# INICIO: BD
	sw $9,10460($8)
	sw $9,10464($8)
	sw $9,10468($8)
	
	# LINHA 2: 12
	# INICIO: BC
	sw $9,11480($8)
	sw $9,11484($8)
	sw $10,11488($8)
	sw $10,11492($8)
	sw $9,11496($8)
	
	# LINHA 3: 13
	# INICIO: BB
	sw $9,12500($8)
	sw $10,12504($8)
	sw $10,12508($8)
	sw $10,12512($8)
	sw $10,12516($8)
	sw $10,12520($8)
	sw $9,12524($8)
	
	# LINHA 4 : 14
	# INICIO: BB
	sw $9, 13524($8)
	sw $10, 13528($8)
	sw $10, 13532($8)
	sw $11, 13536($8)
	sw $11, 13540($8)
	sw $10, 13544($8)
	sw $9, 13548($8)
	#
	sw $9, 13556($8)
	
	
	# LINHA 5: 15
	# INICIO: BA
	sw $9,14544($8)
	sw $10,14548($8)
	sw $10,14552($8)
	sw $11,14556($8)
	sw $10,14560($8)
	sw $10,14564($8)
	sw $11,14568($8)
	sw $10,14572($8)
	sw $9,14576($8)
	sw $10,14580($8)
	sw $9,14584($8)
	
	# LINHA 6: 16
	# INICIO: AY
	sw $9,15560($8)
	sw $9,15564($8)
	sw $10,15568($8)
	sw $10,15572($8)
	sw $10,15576($8)
	sw $10,15580($8)
	sw $10,15584($8)
	sw $10,15588($8)
	sw $10,15592($8)
	sw $11,15596($8)
	sw $10,15600($8)
	sw $10,15604($8)
	sw $10,15608($8)
	sw $9,15612($8)
	#
	#
	sw $9,15620($8)
	
	# LINHA 7: 17
	#INICIO: AX 
	sw $9,16580($8)
	sw $10,16584($8)
	sw $10,16588($8)
	sw $10,16592($8)
	sw $10,16596($8)
	sw $10,16600($8)
	sw $10,16604($8)
	sw $10,16608($8)
	sw $10,16612($8)
	sw $10,16616($8)
	sw $10,16620($8)
	sw $10,16624($8)
	sw $10,16628($8)
	sw $9,16632($8)
	#sw $9,16636($8)
	#sw $10,16636($8)
	sw $9,16640($8)
	sw $10,16644($8)
	sw $9,16648($8)
	
	# LINHA 8: 18
	# INICIO AW
	sw $9,17600($8)
	sw $10,17604($8)
	sw $10,17608($8)
	sw $10,17612($8)
	sw $10,17616($8)
	sw $10,17620($8)
	sw $10,17624($8)
	sw $10,17628($8)
	sw $10,17632($8)
	sw $10,17636($8)
	sw $10,17640($8)
	sw $10,17644($8)
	sw $10,17648($8)
	sw $10,17652($8)
	sw $10,17656($8)
	sw $9,17660($8)
	sw $10,17664($8)
	sw $10,17668($8)
	sw $9,17672($8)
	
	
	# LINHA 9: 19
	# INICIO: AW
	sw $10,18624($8)
	sw $10,18628($8)
	sw $10,18632($8)
	sw $10,18636($8)
	sw $10,18640($8)
	sw $10,18644($8)
	sw $10,18648($8)
	sw $10,18652($8)
	sw $10,18656($8)
	sw $10,18660($8)
	sw $10,18664($8)
	sw $10,18668($8)
	sw $10,18672($8)
	sw $10,18676($8)
	sw $10,18680($8)
	sw $10,18684($8)
	sw $10,18688($8)
	sw $10,18692($8)
	sw $9,18696($8)
	
	# LINHA 10: 20
	# INICIO: AV
	
	sw $9,19644($8)
	sw $9,19648($8)
	sw $10,19652($8)
	sw $10,19656($8)
	sw $10,19660($8)
	sw $10,19664($8)
	sw $10,19668($8)
	sw $10,19672($8)
	sw $10,19676($8)
	sw $10,19680($8)
	sw $10,19684($8)
	sw $10,19688($8)
	sw $10,19692($8)
	sw $10,19696($8)
	sw $10,19700($8)
	sw $10,19704($8)
	sw $10,19708($8)
	sw $10,19712($8)
	sw $10,19716($8)
	sw $10,19720($8)
	sw $9,19724($8)
	
	#LINHA 11: 21
	# INICIO: AV
	
	sw $9,20668($8)
	sw $10,20672($8)
	sw $10,20676($8)
	sw $10,20680($8)
	sw $10,20684($8)
	sw $10,20688($8)
	sw $10,20692($8)
	sw $10,20696($8)
	sw $10,20700($8)
	sw $10,20704($8)
	sw $10,20708($8)
	sw $10,20712($8)
	sw $10,20716($8)
	sw $10,20720($8)
	sw $10,20724($8)
	sw $10,20728($8)
	sw $10,20732($8)
	sw $10,20736($8)
	sw $10,20740($8)
	sw $10,20744($8)
	sw $9,20748($8)
	
	# LINHA 12 : 22
	# INICIO: AW
	
	sw $9,21696($8)
	sw $10,21700($8)
	sw $11,21704($8)
	sw $10,21708($8)
	sw $10,21712($8)
	sw $11,21716($8)
	sw $10,21720($8)
	sw $11,21724($8)
	sw $10,21728($8)
	sw $10,21732($8)
	sw $11,21736($8)
	sw $10,21740($8)
	sw $10,21744($8)
	sw $11,21748($8)
	sw $11,21752($8)
	sw $10,21756($8)
	sw $10,21760($8)
	sw $10,21764($8)
	sw $9,21768($8)
	
	# LINHA 13; 23
	# INICIO: AX
	
	sw $9,22724($8)
	sw $10,22728($8)
	sw $11,22732($8)
	sw $11,22736($8)
	sw $11,22740($8)
	sw $11,22744($8)
	sw $10,22748($8)
	sw $11,22752($8)
	sw $11,22756($8)
	sw $11,22760($8)
	sw $11,22764($8)
	sw $11,22768($8)
	sw $11,22772($8)
	sw $10,22776($8)
	sw $10,22780($8)
	sw $10,22784($8)
	sw $9,22788($8)
	
	# LINHA 14: 24
	# INICIO: AX
	sw $9, 23748($8)
	sw $10, 23752($8)
	sw $10, 23756($8)
	sw $10, 23760($8)
	sw $10, 23764($8)
	sw $10, 23768($8)
	sw $9, 23772($8)
	sw $10, 23776($8)
	sw $10, 23780($8)
	sw $10, 23784($8)
	sw $10, 23788($8)
	sw $10, 23792($8)
	sw $10, 23796($8)
	sw $9, 23800($8)
	sw $10, 23804($8)
	sw $10, 23808($8)
	sw $9, 23812($8)
	
	# LINHA 15: 25
	# INICIO : AY
	
	sw $9,24776($8)
	sw $9,24780($8)
	sw $10,24784($8)
	sw $10,24788($8)
	sw $9,24792($8)
	#sw $10,24796($8) 	vazio
	sw $9,24800($8)
	sw $9,24804($8)
	sw $10,24808($8)
	sw $10,24812($8)
	#sw $10,24816($8)	vazio
	sw $9,24820($8)
	sw $9,24824($8)
	sw $9,24828($8)
	sw $9,24832($8)
	
	# LINHA 16 : 26
	# INICIO : ba
	
	sw $9,25808($8)
	sw $9,25812($8)
	
	#
	#
	#
	#
	sw $9,25832($8)
	sw $9,25836($8)
	sw $9,25840($8)
	
fimNuvem:
	addi $9,$0,0
	addi $10,$0,0
	addi $11,$0,0
	

# ---------------- NUVEM2 ------------------------------

		# DIMENSÕES : 21 x 16 pixels
		
		# COMPRIMENTO  21 pixels 
		#	colunas: AV - BQ
		# ALTURA : 16 pixels 
		#	 linhas 10 - 26

		# COMEÇANDO PELO MEIO - LINHA 19
		
iNuvem1:	
	
	lui $8, 0x1001

	addi $8,$8,6800

	ori $9, 0x000000	# preto
	ori $10,0xffffff	# branco
	ori $11,0x3cbcfc	# azul claro
	
	# LINHA 1: 11
	# INICIO: BD
	sw $9,10460($8)
	sw $9,10464($8)
	sw $9,10468($8)
	
	# LINHA 2: 12
	# INICIO: BC
	sw $9,11480($8)
	sw $9,11484($8)
	sw $10,11488($8)
	sw $10,11492($8)
	sw $9,11496($8)
	
	# LINHA 3: 13
	# INICIO: BB
	sw $9,12500($8)
	sw $10,12504($8)
	sw $10,12508($8)
	sw $10,12512($8)
	sw $10,12516($8)
	sw $10,12520($8)
	sw $9,12524($8)
	
	# LINHA 4 : 14
	# INICIO: BB
	sw $9, 13524($8)
	sw $10, 13528($8)
	sw $10, 13532($8)
	sw $11, 13536($8)
	sw $11, 13540($8)
	sw $10, 13544($8)
	sw $9, 13548($8)
	#
	sw $9, 13556($8)
	
	
	# LINHA 5: 15
	# INICIO: BA
	sw $9,14544($8)
	sw $10,14548($8)
	sw $10,14552($8)
	sw $11,14556($8)
	sw $10,14560($8)
	sw $10,14564($8)
	sw $11,14568($8)
	sw $10,14572($8)
	sw $9,14576($8)
	sw $10,14580($8)
	sw $9,14584($8)
	
	# LINHA 6: 16
	# INICIO: AY
	sw $9,15560($8)
	sw $9,15564($8)
	sw $10,15568($8)
	sw $10,15572($8)
	sw $10,15576($8)
	sw $10,15580($8)
	sw $10,15584($8)
	sw $10,15588($8)
	sw $10,15592($8)
	sw $11,15596($8)
	sw $10,15600($8)
	sw $10,15604($8)
	sw $10,15608($8)
	sw $9,15612($8)
	#
	#
	sw $9,15620($8)
	
	# LINHA 7: 17
	#INICIO: AX 
	sw $9,16580($8)
	sw $10,16584($8)
	sw $10,16588($8)
	sw $10,16592($8)
	sw $10,16596($8)
	sw $10,16600($8)
	sw $10,16604($8)
	sw $10,16608($8)
	sw $10,16612($8)
	sw $10,16616($8)
	sw $10,16620($8)
	sw $10,16624($8)
	sw $10,16628($8)
	sw $9,16632($8)
	#sw $9,16636($8)
	#sw $10,16636($8)
	sw $9,16640($8)
	sw $10,16644($8)
	sw $9,16648($8)
	
	# LINHA 8: 18
	# INICIO AW
	sw $9,17600($8)
	sw $10,17604($8)
	sw $10,17608($8)
	sw $10,17612($8)
	sw $10,17616($8)
	sw $10,17620($8)
	sw $10,17624($8)
	sw $10,17628($8)
	sw $10,17632($8)
	sw $10,17636($8)
	sw $10,17640($8)
	sw $10,17644($8)
	sw $10,17648($8)
	sw $10,17652($8)
	sw $10,17656($8)
	sw $9,17660($8)
	sw $10,17664($8)
	sw $10,17668($8)
	sw $9,17672($8)
	
	
	# LINHA 9: 19
	# INICIO: AW
	sw $10,18624($8)
	sw $10,18628($8)
	sw $10,18632($8)
	sw $10,18636($8)
	sw $10,18640($8)
	sw $10,18644($8)
	sw $10,18648($8)
	sw $10,18652($8)
	sw $10,18656($8)
	sw $10,18660($8)
	sw $10,18664($8)
	sw $10,18668($8)
	sw $10,18672($8)
	sw $10,18676($8)
	sw $10,18680($8)
	sw $10,18684($8)
	sw $10,18688($8)
	sw $10,18692($8)
	sw $9,18696($8)
	
	# LINHA 10: 20
	# INICIO: AV
	
	sw $9,19644($8)
	sw $9,19648($8)
	sw $10,19652($8)
	sw $10,19656($8)
	sw $10,19660($8)
	sw $10,19664($8)
	sw $10,19668($8)
	sw $10,19672($8)
	sw $10,19676($8)
	sw $10,19680($8)
	sw $10,19684($8)
	sw $10,19688($8)
	sw $10,19692($8)
	sw $10,19696($8)
	sw $10,19700($8)
	sw $10,19704($8)
	sw $10,19708($8)
	sw $10,19712($8)
	sw $10,19716($8)
	sw $10,19720($8)
	sw $9,19724($8)
	
	#LINHA 11: 21
	# INICIO: AV
	
	sw $9,20668($8)
	sw $10,20672($8)
	sw $10,20676($8)
	sw $10,20680($8)
	sw $10,20684($8)
	sw $10,20688($8)
	sw $10,20692($8)
	sw $10,20696($8)
	sw $10,20700($8)
	sw $10,20704($8)
	sw $10,20708($8)
	sw $10,20712($8)
	sw $10,20716($8)
	sw $10,20720($8)
	sw $10,20724($8)
	sw $10,20728($8)
	sw $10,20732($8)
	sw $10,20736($8)
	sw $10,20740($8)
	sw $10,20744($8)
	sw $9,20748($8)
	
	# LINHA 12 : 22
	# INICIO: AW
	
	sw $9,21696($8)
	sw $10,21700($8)
	sw $11,21704($8)
	sw $10,21708($8)
	sw $10,21712($8)
	sw $11,21716($8)
	sw $10,21720($8)
	sw $11,21724($8)
	sw $10,21728($8)
	sw $10,21732($8)
	sw $11,21736($8)
	sw $10,21740($8)
	sw $10,21744($8)
	sw $11,21748($8)
	sw $11,21752($8)
	sw $10,21756($8)
	sw $10,21760($8)
	sw $10,21764($8)
	sw $9,21768($8)
	
	# LINHA 13; 23
	# INICIO: AX
	
	sw $9,22724($8)
	sw $10,22728($8)
	sw $11,22732($8)
	sw $11,22736($8)
	sw $11,22740($8)
	sw $11,22744($8)
	sw $10,22748($8)
	sw $11,22752($8)
	sw $11,22756($8)
	sw $11,22760($8)
	sw $11,22764($8)
	sw $11,22768($8)
	sw $11,22772($8)
	sw $10,22776($8)
	sw $10,22780($8)
	sw $10,22784($8)
	sw $9,22788($8)
	
	# LINHA 14: 24
	# INICIO: AX
	sw $9, 23748($8)
	sw $10, 23752($8)
	sw $10, 23756($8)
	sw $10, 23760($8)
	sw $10, 23764($8)
	sw $10, 23768($8)
	sw $9, 23772($8)
	sw $10, 23776($8)
	sw $10, 23780($8)
	sw $10, 23784($8)
	sw $10, 23788($8)
	sw $10, 23792($8)
	sw $10, 23796($8)
	sw $9, 23800($8)
	sw $10, 23804($8)
	sw $10, 23808($8)
	sw $9, 23812($8)
	
	# LINHA 15: 25
	# INICIO : AY
	
	sw $9,24776($8)
	sw $9,24780($8)
	sw $10,24784($8)
	sw $10,24788($8)
	sw $9,24792($8)
	#sw $10,24796($8) 	vazio
	sw $9,24800($8)
	sw $9,24804($8)
	sw $10,24808($8)
	sw $10,24812($8)
	#sw $10,24816($8)	vazio
	sw $9,24820($8)
	sw $9,24824($8)
	sw $9,24828($8)
	sw $9,24832($8)
	
	# LINHA 16 : 26
	# INICIO : ba
	
	sw $9,25808($8)
	sw $9,25812($8)
	
	#
	#
	#
	#
	sw $9,25832($8)
	sw $9,25836($8)
	sw $9,25840($8)
	
fimNuvem2:
	addi $9,$0,0
	addi $10,$0,0
	addi $11,$0,0
	
# ---------------- PISO -----------------------------
	
iPiso: 	lui $8, 0x1001

	ori  $1, 108544    # deslocamento
    	add $8, $8, $1     # Soma: $8 = 0x10010000 + 108544
    	
	ori $9,0xbf3e0f #marrom
	ori $10,0xfcbcb0 #rosa
	ori $11,0x000000 #preto
	
	addi $15,$0,45
	
piso:	beq $15,$0,fimpiso
	beq $15, 23, ajeitarPonteiro 

    # --- PRIMEIRA LINHA ---
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    
    # Fim da linha 1. Ajuste para a pr�xima linha:
    # 1024 (pulo total) - 48 (j� percorridos na linha) = 976
    addi $8,  $8, 976 

    # --- SEGUNDA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 2.
    addi $8,  $8, 976 

    # --- TERCEIRA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4

    # Fim da linha 3.
    addi $8,  $8, 976

    # --- QUARTA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 4.
    addi $8,  $8, 976

    # --- QUINTA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 5.
    addi $8,  $8, 976

    # --- SEXTA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 6.
    addi $8,  $8, 976

    # --- S�TIMA LINHA ---
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 7.
    addi $8,  $8, 976

    # --- OITAVA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 8.
    addi $8,  $8, 976

    # --- NONA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 9.
    addi $8,  $8, 976

    # --- D�CIMA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4

    # Fim da linha 10.
    addi $8,  $8, 976

    # --- D�CIMA PRIMEIRA LINHA ---
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    
	subi $8,$8,10240
	addi $15,$15,-1
	
	j piso
	
ajeitarPonteiro:
	lui $8, 0x1001
	ori  $1, 119808    # deslocamento
    	add $8, $8, $1     # Soma: $8 = 0x10010000 + 119808
    	addi $15, $15, -1
    	j piso
    	
fimpiso:
	addi $9,$0,0
	addi $10,$0,0
	addi $11,$0,0
	addi $15,$0,0

# ----------- MONTANHA MAIOR -------------------------

iMontanhaMaior: 

	lui $8, 0x1001
	ori $1, 86028
	add $8,$8,$1
	
	ori $11, 0x000000
	ori $12, 0x00A800
	
# --- Primeira Linha ---
# Endere�o inicial: ...86028
# Desenha 5 pretos
    sw   $11, 0($8)     # pixel 1
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 2
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 3
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 4
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 5
    addi $8,  $8, 4

    # Corre��o de salto para a pr�xima linha (87040)
    # J� andamos 20 bytes. Faltam 992 para chegar em 87040.
    addi $8, $8, 992 

# --- Segunda Linha ---
# Endere�o inicial: ...87040
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a pr�xima linha (88064)
    # Andamos 44 bytes. Faltam 980.
    addi $8, $8, 980

# --- Terceira Linha ---
# Endere�o inicial: ...88064
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a pr�xima linha (89088)
    # Andamos 52 bytes. Faltam 972.
    addi $8, $8, 972

# --- Quarta Linha ---
# Endere�o inicial: ...89088
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4     # verde
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a pr�xima linha (90112)
    # Andamos 56 bytes. Faltam 968.
    addi $8, $8, 968

# --- LOOP PARA GERAR AS PR�XIMAS LINHAS (ESCADA) ---
    # $8 j� est� apontando para o in�cio da linha 5 (90112)
    
    addi $13, $0, 14          # $13 = Quantidade de verdes (come�a com 14)
    addi $14, $0, 18          # $14 = Total de linhas a desenhar

loop_linhas:
    beq  $14, $0, detalhesDaMontanha  # Se desenhou todas as linhas, termina
    
    # Desenha os Verdes
    add $15, $0, $13         # Contador de verdes para esta linha
    add $16, $0, $8         # $16 � o ponteiro que vai andar na linha
loop_verde:
    beq  $15, $0, fim_verde
    sw   $12, 0($16)      # Desenha verde
    addi $16, $16, 4      # Pr�ximo pixel
    addi $15, $15, -1     # Decrementa contador
    j    loop_verde

fim_verde:
    # Desenha o Preto no final
    sw   $11, 0($16)      # Desenha preto

    # Prepara para a pr�xima linha
    addi $8, $8, 1024   # Pula para a pr�xima linha (base + 1024)
    addi $13, $13, 1      # Aumenta um verde para a pr�xima linha
    addi $14, $14, -1     # Uma linha a menos para fazer
    j    loop_linhas

detalhesDaMontanha:
    lui $8, 0x1001
    
    #Detalhe maior 
    sw $11, 90148($8)
    sw $11, 90152($8)
    sw $11, 90156($8)
    sw $11, 91172($8)
    sw $11, 91176($8)
    sw $11, 91180($8)
    sw $11, 92196($8)
    sw $11, 92200($8)
    sw $11, 92204($8)
    sw $11, 93224($8)
    
    #Detalhe menor
    sw $11, 92184($8)    
    sw $11, 92188($8)
    sw $11, 93208($8)
    sw $11, 93212($8)
    sw $11, 94232($8)
    sw $11, 94236($8)
    
    #Detalhe maior 
    sw $11, 97348($8)
    sw $11, 98368($8)
    sw $11, 98372($8)
    sw $11, 98376($8)
    sw $11, 99392($8)
    sw $11, 99396($8)
    sw $11, 99400($8)
    sw $11, 100416($8)
    sw $11, 100420($8)
    sw $11, 100424($8)
    sw $11, 101444($8)

    #Detalhe menor
    sw $11, 100404($8)    
    sw $11, 100408($8)
    sw $11, 101428($8)
    sw $11, 101432($8)
    sw $11, 102452($8)
    sw $11, 102456($8)
	
fimMontanhaMaior:
	addi $11,$0,0
	addi $12,$0,0
	
	
# --------------- MONTANHA MENOR --------------

imontanhaMenor: 	

	lui $8, 0x1001
	ori $1, 93828
	add $8,$8,$1
	
	ori $11, 0x000000
	ori $12, 0x00A800
	
# --- Primeira Linha ---
# Endere�o inicial: ...93828
# Desenha 5 pretos
    sw   $11, 0($8)     # pixel 1
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 2
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 3
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 4
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 5
    addi $8,  $8, 4

    # Corre��o de salto para a pr�xima linha (94840)
    # J� andamos 20 bytes. Faltam 992 para chegar em 94840.
    addi $8, $8, 992 

# --- Segunda Linha ---
# Endere�o inicial: ...94840
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a pr�xima linha (95856)
    # Andamos 44 bytes. Faltam 972.
    addi $8, $8, 972

# --- Terceira Linha ---
# Endere�o inicial: ...95856
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a pr�xima linha (89088)
    # Andamos 52 bytes. Faltam 972.
    addi $8, $8, 972

# --- Quarta Linha ---
# Endere�o inicial: ...89088
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

# --- LOOP PARA GERAR AS PR�XIMAS LINHAS (ESCADA) ---
    # --- Configura��o do Endere�o Inicial ($8) ---
    lui  $8, 0x1001
    addi $1, $0, 96876              # Endere�o base
    add  $8, $8, $1        	    # Endere�o inicial atualizadp

    # --- Vari�veis de Controle ---
    addi   $16, $0, 15             # Quantidade de verdes iniciais
    addi   $17, $0, 952            # $17 = Salto inicial ajustado para expandir p/ esquerda
    addi   $18, $0, 12             # Total de linhas a desenhar

loop_linha:
    beq  $18, $0, detalhesDaMontanha2     # Se acabaram as linhas, sai.

    # Primeiro preto (borda esquerda)
    sw   $11, 0($8)
    addi $8, $8, 4

    # Loop -> desenhar Verdes
    add $20, $0, $16            # Copia do contador

loop_verde2:
    beq  $20, $0, fim_verde2
    sw   $12, 0($8)         # Desenha verde
    addi $8, $8, 4
    addi $20, $20, -1
    j    loop_verde2

fim_verde2:
    # 3. Ultimo Preto (borda direita)
    sw   $11, 0($8)
    addi $8, $8, 4

    # 4. Pula para a pr�xima linha
    # O valor 952 far� com que caia 4 bytes antes do alinhamento vertical
    add  $8, $8, $17       

    # 5. Atualiza para a pr�xima volta
    addi $16, $16, 2         # Aumenta largura em 2 pixels (1 esq + 1 dir)
    addi $17, $17, -8        # Diminui o salto para compensar a largura maior
    addi $18, $18, -1        # Decrementa contador de linhas
    j    loop_linha
    
detalhesDaMontanha2:
    lui $8, 0x1001
    
    #Detalhe maior 
    sw $11, 96928($8)
    sw $11, 97948($8)
    sw $11, 97952($8)
    sw $11, 97956($8)
    sw $11, 98972($8)
    sw $11, 98976($8)
    sw $11, 98980($8)
    sw $11, 99996($8)
    sw $11, 100000($8)
    sw $11, 100004($8)
    sw $11, 101024($8)
    
    #Detalhe menor
    sw $11, 99984($8)    
    sw $11, 99988($8)
    sw $11, 101008($8)
    sw $11, 101012($8)
    sw $11, 102032($8)
    sw $11, 102036($8)

fimMontanhaMenor:
    
    addi $11,$0,0
    addi $12,$0,0
	
# ---------------------- CANO -----------------------


		# 		CANO
		# DIMENSoES 12 pixels X 13 pixels (Comprimento x Altura)
		# COMPRIMENTO: colunas ik - iv  
		#	"corpo": 9
		#	"Pescoco": 12 
		#	"cabeca": 12
		# ALTURA:  linhas 94 - 106	
		#	"cabeca": 4
		#	"pescoco": 1
		#	"corpo": 7 
	
iCano:	lui $8,0x1001

	ori $1,108508
	add $8,$8,$1
	
	ori $9,0x000000			# PRETO
	ori $10,0x80d010		# VERDE CLARO
	ori $11, 0x00a800		# VERDE ESCURO
	
	
	
	# CORPO
	# LINHA 1 = 106
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 2 = 105
	
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	
	# LINHA 3 = 104
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 4 = 103
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 5 = 102
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4

	# LINHA 6 = 101
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4		# VERDE CLARO
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4

	# LINHA 7 = 100
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# PESCOÇO
	# LINHA 8 = 99
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	
	
	# "CABEÇA"
	# LINHA 9 = 98
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4		
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4

	# LINHA 10 = 97
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 11 = 96
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 12 = 95
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 13 = 94
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4

fimCano:
	 addi $9,$0,0
	 addi $10,$0,0
	 addi $11,$0,0
	 addi $1,$0,0

# ------------------- BLOCOS DE INTERROGACAO -------------------

iInterrogacao: 	
 	lui $8, 0x1001
	ori $1, 58944
	add $24, $8, $1
	ori $1, 59088
	add $25, $8, $1
	
	ori $9, 0x5c94fc  #azul
	ori $10, 0xc84c0c #marrom	
	ori $11, 0xfcbcb0 #rosa
	ori $12, 0xfc9838 #laranja
	ori $13, 0x000000 #preto
	
	# PRIMEIRA LINHA
	sw $9, 0($24)
	sw $9, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $0, 10
	
forMarrom1: beq $20, $0, fimforMarrom1
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forMarrom1

fimforMarrom1:
	sw $9, 0($24)
	sw $9, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	
	# SEGUNDA LINHA
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $0, 10
	
forLaranja1: beq $20, $0, fimforLaranja1
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forLaranja1

fimforLaranja1:
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	
	# TERCEIRA LINHA

	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $0, 5
	
forMarrom2: beq $20, $0, fimforMarrom2
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forMarrom2

fimforMarrom2:
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	
	# QUARTA LINHA
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	
	# QUINTA E SEXTA LINHA
	addi $20, $0, 2

forQuintaESextaLinha:
	beq $20, $0, fimforQuintaESextaLinha
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	addi $20, $20, -1
	j forQuintaESextaLinha

fimforQuintaESextaLinha:
	#Corre��o da cor da sexta linha
	sw $10, -1000($24)
	sw $10, -1000($25)
	
	# SETIMA LINHA
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	
	# OITAVA, NONA E DECIMA LINHA
	addi $20, $20, 3

for8910Linha:
	beq $20, $0, fimfor8910Linha
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $12, 0($24)
	sw $12, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 980
	addi $25, $25, 980
	addi $20, $20, -1
	j for8910Linha

fimfor8910Linha:
	#correcao da decima linha
	sw $13, -996($24)
	sw $13, -996($25)
	#correcao da nona linha
	sw $13, -2012($24)
	sw $13, -2012($25)
	sw $13, -2020($24)
	sw $13, -2020($25)
	sw $13, -2024($24)
	sw $13, -2024($25)
	sw $13, -2028($24)
	sw $13, -2028($25)
	sw $13, -2040($24)
	sw $13, -2040($25)
	
	# DECIMA PRIMEIRA LINHA 
	addi $20, $20, 12
	
ultimaLinha:
	beq $20, $0, fimUltimaLinha
	sw $13, 0($24)
	sw $13, 0($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j ultimaLinha
fimUltimaLinha:
	addi $1,$0,0
	addi $9,$0,0
	addi $10,$0,0
	addi $11,$0,0
	addi $12,$0,0
	addi $13,$0,0
	addi $24,$0,0
	addi $25,$0,0
	
	
# ------------------- BLOCOS DE TIJOLOS -------------------
iTijolos:

 	lui $8, 0x1001
	
	ori $1, 59040
	add $24, $8, $1

	andi $1, $0, 0
	
	ori $1, 59136
	add $25, $8, $1
	
	ori $9, 0x5c94fc  #azul
	ori $10, 0xc84c0c #marrom	
	ori $11, 0xfcbcb0 #rosa
	ori $12, 0x000000 #preto
	
	addi $20, $0, 11
	
	sw $9,140072($8)
		sw $9,140076($8)
			sw $9,140080($8)
	
	# PRIMEIRA LINHA 
forRosaTij:
	beq $20, $0, fimforRosaTij
	sw $11, 0($24)
	sw $11, 0($25)
	
	addi $24, $24, 4
	addi $25, $25, 4
	addi $20, $20, -1
	j forRosaTij
	
fimforRosaTij:
	sw $9, 0($24)
	sw $9, 0($25)	
	addi $24, $24, 980
	addi $25, $25, 980
	#ponteiro movido para a segunda linha
	# SEGUNDA, TERCEIRA, OITAVA E NONA LINHA 
	addi $20, $0, 5
	
forMarromTij1:
	beq $20, $0, fimforMarromTij1
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	sw $10, 6144($24)
	sw $10, 6144($25)
	sw $10, 7168($24)
	sw $10, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
		
	addi $20, $20, -1
	j forMarromTij1
	
fimforMarromTij1:
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	sw $12, 6144($24)
	sw $12, 6144($25)
	sw $12, 7168($24)
	sw $12, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $0, 4

forMarromTij2:
	beq $20, $0, fimforMarromTij2
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	sw $10, 6144($24)
	sw $10, 6144($25)
	sw $10, 7168($24)
	sw $10, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
		
	addi $20, $20, -1
	j forMarromTij2
	
fimforMarromTij2:
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	sw $12, 6144($24)
	sw $12, 6144($25)
	sw $12, 7168($24)
	sw $12, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	sw $10, 6144($24)
	sw $10, 6144($25)
	sw $10, 7168($24)
	sw $10, 7168($25)
	addi $24, $24, 2004
	addi $25, $25, 2004
	#ponteiro movido para a quarta linha

	# QUARTA E SETIMA LINHA 
	addi $20, $0, 11
forPretoTij1:
	beq $20, $0, fimforPretoTij1
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 3072($24)
	sw $12, 3072($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forPretoTij1
	
fimforPretoTij1:
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 3072($24)
	sw $10, 3072($25)
	addi $24, $24, 980
	addi $25, $25, 980
	#ponteiro movido para a quinta linha
	# QUINTA E SEXTA LINHA
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 5076
	addi $25, $25, 5076
	
	#ponteiro movido para a decima linha
	# DECIMA E DECIMA PRIMEIRA LINHA 
	
	addi $20, $0, 12
forPretoTij2:
	beq $20, $0, fimforPretoTij2
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forPretoTij2
	
fimforPretoTij2:
	addi $1,$0,0
	addi $9,$0,0
	addi $10,$0,0
	addi $11,$0,0
	addi $12,$0,0
	addi $13,$0,0
	addi $24,$0,0
	addi $25,$0,0
	
resetDeOutrosRegistradoresEmUso:
	addi $16,$0,0
	addi $17,$0,0
	
# ---------------------------- CENÁRIO SHADOW -------------------------------
	#lui $8,0x1001
	addi $9,$0,32768
	
cenaShadow:
	beq $9,$0,fimShadow
	
	lw $10,0($8)
	sw $10,131072
	
	addi $8,$8,4
	addi $9,$9,-1
	
	j cenaShadow
	
fimShadow: 
	addi $2,$0,10
	syscall
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
