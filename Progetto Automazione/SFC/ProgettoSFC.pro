CoDeSys+I   �                   @        @   2.3.9.59    @/    @                             ӆAd +    @      �d                   ��b        �8   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    o   C:\TwinCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS    ��              L_TMR                    TON    ��              D_TMR                    TON    ��              P_TRIG                 R_TRIG    ��              SD_TMR                    TON    ��              SD_FF                 RS    ��              DS_FF                 RS    ��              DS_TMR                    TON    ��              SL_FF                 RS    ��              SL_TMR                    TON    ��           
      N            ��              R0            ��              S0            ��              L            ��              D            ��              P            ��              SD            ��	              DS            ��
              SL            ��              T           ��                 Q            ��                       TX5  �    ����    R    @                                                                                          MAIN     x      pezzo_magazzino                   IX                    %    9   sensore che segnala la presenza di un pezzo nel magazzino   pistone_avanti                   IX                   %    *   sensore che segnala se il pistone � avanti   pistone_indietro                   IX                   %    ,   sensore che segnala se il pistone � indietro   N_pezzi_spinti              	       E   variabile che incrementa di 1 quando viene spinto un pezzo sul nastro
   pistone_on                   QX                   %       attuatore del pistone   fine_corsa_nastro                   IX                   %    :   sensore che segnala il passaggio di un pezzo a fine nastro	   nastro_on                   QX                    %       attuatore del nastro   Giostra   	                      POSTO                        array di 8 posti   i                     V   indice che incrementa ad ogni movimento della giostra e usato per lavorare con l'array   giostra_busy                   IX                  %    .   sensore che segnala il movimento della giostra   movimento_giostra                   QX                  %    )   attuatore giostra che la muove di 1 posto	   T_giostra                    TON                timer giostra di 2s   mytimegiostra                            timer_giostra                             reset_timer_giostra                             T_p1                    TON      !          timer buffer 1   mytimep1              "              timer_p1               #              reset_timer_p1               $              sensore_colore               &    IX                  %    +   sensore che segnala i pezzi di colore rosso   trapano_basso               (    IX                  %    )   sensore che segnala se il trapano � basso   trapano_alto               )    IX                  %    '   ensore che segnala se il trapano � alto
   trapano_on               *    QX                  %    3   attuatore per l'attivazione della punta del trapano   trapano_down               +    QX                   %    /   attuatore per fare scendere o salire il trapano	   T_trapano                    TON      ,          timer trapano di 2s   mytimetrapano              -              timer_trapano               .              reset_timer_trapano               /              tastatore_basso               1    IX                  %    +   sensore che segnala se il tastatore � basso   tastatore_alto               2    IX                  %    *   sensore che segnala se il tastatore � alto   tastatore_down               3    QX                  %       attuatore tastatore   T_tastatore                    TON      5          timer tastatore di 2s   mytimetastatore              6              timer_tastatore               7              reset_timer_tastatore               8              pennarello_alto               :    IX                  %    +   sensore che segnala se il pennarello � alto   pennarello_basso               ;    IX                  %    ,   sensore che segnala se il pennarello � basso   pennarello_down               <    QX                  %       attuatore pennarello   T_pennarello                    TON      =          timer pennarello di 2s   mytimepennarello              >              timer_pennarello               ?              reset_timer_pennarello               @              pistone_PT5_avanti               B    IX                   %    ,   sensore che segnala se il pistone 5 � avanti   pistone_PT5_indietro               C    IX                  %    .   sensore che segnala se il pistone 5 � indietro   pistone_PT5_on               D    QX                  %       attuatore pistone 5   pistone_PT6_avanti               F    IX                  %    ,   sensore che segnala se il pistone 6 � avanti   pistone_PT6_indietro               G    IX                  %    .   sensore che segnala se il pistone 6 � indietro   pistone_PT6_on               H    QX                  %       attuatore pistone 6
   pezzo_baia               I    IX                  %    6   sensore che segnala la presenza di un pezzo sulla baia	   wait_baia               L              n_mezzi_giri_giostra              M       S   Variabili utilizzate nel for per la verifica di almeno 1 posto con presenza a  true   j              P              condizione_1_posto_true               Q              INIT          (x := TRUE, _x := TRUE)                  SFCStepType                   NASTRO_RIPOSO                            _NASTRO_RIPOSO                            PISTONE_RIPOSO                            _PISTONE_RIPOSO                            GIOSTRA_RIPOSO                            _GIOSTRA_RIPOSO                         	   P1_RIPOSO                         
   _P1_RIPOSO                            P1_OCCUPATO                            _P1_OCCUPATO                            P1_FINE                            _P1_FINE                            COLORE_RIPOSO                            _COLORE_RIPOSO                            PEZZO_SU_SENSORE                            _PEZZO_SU_SENSORE                            COLORE_ROSSO                            _COLORE_ROSSO                            ALTRO_COLORE                            _ALTRO_COLORE                            COLORE_FINE                            _COLORE_FINE                            TRAPANO_RIPOSO                            _TRAPANO_RIPOSO                            TRAPANO_GIU                            _TRAPANO_GIU                            TRAPANO_AVVIO                            _TRAPANO_AVVIO                            TRAPANO_FINE                            _TRAPANO_FINE                            TASTATORE_RIPOSO                            _TASTATORE_RIPOSO                            TASTATORE_GIU                            _TASTATORE_GIU                            TASTATORE_FINE                            _TASTATORE_FINE                            PENNARELLO_RIPOSO                            _PENNARELLO_RIPOSO                            PENNARELLO_GIU                            _PENNARELLO_GIU                            PENNARELLO_FINE                            _PENNARELLO_FINE                         
   PT5_RIPOSO                            _PT5_RIPOSO                         
   PT5_AVANTI                            _PT5_AVANTI                            PT5_FINE                         	   _PT5_FINE                         
   PT6_RIPOSO                            _PT6_RIPOSO                         
   PT6_AVANTI                            _PT6_AVANTI                            PT6_FINE                         	   _PT6_FINE                         
   PT7_RIPOSO                            _PT7_RIPOSO                            GIOSTRA_PRONTA                            _GIOSTRA_PRONTA                         
   GIOSTRA_ON                            _GIOSTRA_ON                            GIOSTRA_IN_MOVIMENTO                            _GIOSTRA_IN_MOVIMENTO                            PISTONEAVANTI                            _PISTONEAVANTI                            NASTRO_AVANTI                            _NASTRO_AVANTI                                             ӆAd  @   ����            
 �   ����   #   $   "   !   H   8   @   2   C   A       ( �9      K   �9     K   �9     K   �9     K   �9                 �9         +     ��localhost  T�&�� obsw           U        L�     �� ��^w   ��d   >��     �k!@�&          �            ���       ��      U���� �� �]sw��@ �]sw          !� 8�    ��@       ��@ ��d�� � �� d�� �d������ ;�     ,   ,                                                        K        @   ��b�;  /*BECKCONFI3*/
        !9� @   @   �   �     3               
   Standard            	[	d       *s��           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 ��             Standard
         MAIN����               ��b                 $����                           ����             Standard ��b	��b                                      	�d                       VAR_CONFIG
END_VAR
                                                                                   '                  �              Global_Variables ��b	�
d                        VAR_GLOBAL
END_VAR
                                                                                               '           	     r g t (            Variable_Configuration ��b	��b	                        VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   $   , � � �P           ALTEZZA [	d	��b                      <   TYPE ALTEZZA: (nienteA,basso, alto);
END_TYPE






             #   , � � �6           COLORE ��d	��b                      .   TYPE COLORE: (nienteC,rosso, altro);
END_TYPE             "   , h h �           PEZZO ��b	��b                      X   TYPE PEZZO :
STRUCT
	Colore : COLORE;
	Altezza : ALTEZZA;
END_STRUCT
END_TYPE


             !   , g 4 ~�           POSTO ��d	��d      ��    ��        S   TYPE POSTO :
STRUCT
	Presenza :BOOL:=FALSE;
	Pezzo :PEZZO;
END_STRUCT
END_TYPE                  ,   Rf           MAIN ӆAd	ӆAd                      Z  PROGRAM MAIN
VAR

(*Variabili Pistone*)
         (*Ingressi*)
	pezzo_magazzino  AT%IX0.0:BOOL; (*sensore che segnala la presenza di un pezzo nel magazzino*)
	pistone_avanti AT%IX0.2:BOOL; (*sensore che segnala se il pistone � avanti*)
	pistone_indietro AT%IX0.4:BOOL; (*sensore che segnala se il pistone � indietro*)
         N_pezzi_spinti: INT:=0; (*variabile che incrementa di 1 quando viene spinto un pezzo sul nastro*)
         (*Uscite*)
	pistone_on  AT%QX0.2:BOOL; (*attuatore del pistone*)



(*Variabili Nastro*)
         (*Ingressi*)
	fine_corsa_nastro  AT%IX0.6:BOOL; (*sensore che segnala il passaggio di un pezzo a fine nastro*)
         (*Uscite*)
	nastro_on  AT%QX0.0:BOOL; (*attuatore del nastro*)


(*Variabili Giostra*)
        Giostra: ARRAY[0..7] OF POSTO;(*array di 8 posti*)
	i: INT :=0; (*indice che incrementa ad ogni movimento della giostra e usato per lavorare con l'array*)
        giostra_busy AT %IX6.1: BOOL; (*sensore che segnala il movimento della giostra*)
        movimento_giostra AT %QX3.4: BOOL; (*attuatore giostra che la muove di 1 posto*)
        T_giostra: TON; (*timer giostra di 2s*)
        mytimegiostra: TIME;
        timer_giostra: BOOL;
        reset_timer_giostra: BOOL;


        T_p1: TON; (*timer buffer 1*)
        mytimep1: TIME;
        timer_p1: BOOL;
        reset_timer_p1: BOOL;

        sensore_colore AT %IX2.1: BOOL; (*sensore che segnala i pezzi di colore rosso*)

        trapano_basso AT %IX2.5: BOOL ; (*sensore che segnala se il trapano � basso*)
        trapano_alto AT %IX2.3: BOOL; (*ensore che segnala se il trapano � alto*)
        trapano_on AT %QX3.7:BOOL; (*attuatore per l'attivazione della punta del trapano*)
        trapano_down AT %QX7.0: BOOL; (*attuatore per fare scendere o salire il trapano*)
        T_trapano: TON; (*timer trapano di 2s*)
        mytimetrapano: TIME;
        timer_trapano: BOOL;
        reset_timer_trapano: BOOL;

        tastatore_basso AT %IX5.3: BOOL; (*sensore che segnala se il tastatore � basso*)
        tastatore_alto AT %IX2.7: BOOL; (*sensore che segnala se il tastatore � alto*)
        tastatore_down AT %QX3.6: BOOL; (*attuatore tastatore*)
	(*tastatore_analogico AT %QX4.0: WORD;*)
        T_tastatore: TON; (*timer tastatore di 2s*)
        mytimetastatore: TIME;
        timer_tastatore: BOOL;
        reset_timer_tastatore: BOOL;

        pennarello_alto AT %IX5.4: BOOL; (*sensore che segnala se il pennarello � alto*)
        pennarello_basso AT %IX5.5: BOOL; (*sensore che segnala se il pennarello � basso*)
        pennarello_down AT %QX3.3: BOOL; (*attuatore pennarello*)
        T_pennarello: TON;(*timer pennarello di 2s*)
        mytimepennarello: TIME;
        timer_pennarello: BOOL;
        reset_timer_pennarello: BOOL;

        pistone_PT5_avanti AT %IX5.0: BOOL; (*sensore che segnala se il pistone 5 � avanti*)
        pistone_PT5_indietro AT %IX5.1: BOOL; (*sensore che segnala se il pistone 5 � indietro*)
        pistone_PT5_on AT %QX3.1:BOOL ; (*attuatore pistone 5*)

        pistone_PT6_avanti AT %IX5.7: BOOL;  (*sensore che segnala se il pistone 6 � avanti*)
        pistone_PT6_indietro AT %IX5.6: BOOL; (*sensore che segnala se il pistone 6 � indietro*)
        pistone_PT6_on AT%QX3.5: BOOL; (*attuatore pistone 6*)
        pezzo_baia AT %IX5.2: BOOL; (*sensore che segnala la presenza di un pezzo sulla baia*)

(*Variabili utilizzate per  eccezioni baia*)
	wait_baia:BOOL;
	n_mezzi_giri_giostra:INT:=0;

(*Variabili utilizzate nel for per la verifica di almeno 1 posto con presenza a  true*)
	j: INT;
	condizione_1_posto_true: BOOL;


END_VAR       Init  3        TRUE           nastro_riposo (      A pnall           Action nastro_riposo ӆAd      �  	nastro_ond                 pistone_riposo )      A pnall           Action pistone_riposo ӆAd      �pistone_avanti 
pistone_ond               giostra_riposo ,     tr(1i)OD           Action giostra_riposo ӆAd      �  movimento_giostrad       (   NOT giostra_busy OR  Giostra[i].Presenza        	   p1_riposo A     tr(1i)OD           Action p1_riposo ӆAd      �T_p1 At#2sTON  mytimep1      timer_p1 reset_timer_p1d    H     tr(1i)OD           Action p1_riposo - Entry ӆAd�   FOR j:=0 TO 7 BY 1  DO
IF(Giostra[j].Presenza) THEN condizione_1_posto_true:=TRUE;
EXIT;
ELSE condizione_1_posto_true:=FALSE;
END_IF;

END_FOR;       NOT fine_corsa_nastro         p1_occupato B     12) D .P           Action p1_occupato ӆAdF   Giostra[(8-i)MOD 8].Presenza:=TRUE;
N_pezzi_spinti:=N_pezzi_spinti-1;       TRUE   Z   condizione_1_posto_true AND(  N_pezzi_spinti <0 OR ( NOT nastro_on AND N_pezzi_spinti =0))         p1_fine              colore_riposo        !   NOT giostra[(9-i) MOD 8].Presenza      giostra[(9-i) MOD 8].Presenza         pezzo_su_sensore           sensore_colore         colore_rosso 8      A pnall           Action colore_rosso ӆAd+   giostra[(9-i) MOD 8].Pezzo.Colore := rosso;    )   Giostra[(9-i) MOD 8].Pezzo.Colore = rosso      NOT sensore_colore         altro_colore @     ) D .Pzo           Action altro_colore ӆAd+   giostra[(9-i) MOD 8].Pezzo.Colore := altro;    )   Giostra[(9-i) MOD 8].Pezzo.Colore = altro         colore_fine              trapano_riposo        r   trapano_alto AND  Giostra[(10-i) MOD 8].Pezzo.Colore=rosso AND Giostra[(10-i) MOD 8].Presenza AND NOT giostra_busy         trapano_giu >     ) D .Pzo           Action trapano_giu ӆAd      �  trapano_downd          trapano_basso         trapano_avvio ?     tr(1i)OD           Action trapano_avvio ӆAd      �  
trapano_on     �	�reset_timer_trapanoE	T_trapano At#2sTON  mytimetrapano      timer_trapano reset_timer_trapanod          timer_trapano AND trapano_down   e   trapano_alto AND ( Giostra[(10-i) MOD 8].Presenza=FALSE OR Giostra[(10-i) MOD 8].Pezzo.Colore=altro )         trapano_fine =                        Action trapano_fine ӆAd      �  trapano_down     �  
trapano_ond               tastatore_riposo        F   tastatore_alto AND Giostra[(11-i) MOD 8].Presenza AND NOT giostra_busy         tastatore_giu 3                        Action tastatore_giu ӆAd      �  tastatore_down     �	�reset_timer_tastatoreET_tastatore At#2sTON  mytimetastatore      timer_tastatore reset_timer_tastatored          tastatore_basso   5   tastatore_alto AND NOT Giostra[(11-i) MOD 8].Presenza         tastatore_fine 4                        Action tastatore_fine ӆAd      �  tastatore_downd               pennarello_riposo        u   pennarello_alto AND  Giostra[(12-i) MOD 8].Pezzo.Colore=altro AND Giostra[(12-i) MOD 8].Presenza AND NOT giostra_busy         pennarello_giu .                        Action pennarello_giu ӆAd      �  pennarello_down     �	�reset_timer_pennarelloET_pennarello At#2sTON  mytimepennarello      timer_pennarello reset_timer_pennarellod       %    pennarello_down AND timer_pennarello   h   pennarello_alto AND ( Giostra[(12-i) MOD 8].Presenza=FALSE OR Giostra[(12-i) MOD 8].Pezzo.Colore=rosso )         pennarello_fine 6                        Action pennarello_fine ӆAd      �  pennarello_downd            
   PT5_riposo        z   pistone_PT5_indietro AND  Giostra[(13-i) MOD 8].Pezzo.Colore=altro AND Giostra[(13-i) MOD 8].Presenza AND NOT giostra_busy      
   PT5_Avanti 0                        Action PT5_Avanti ӆAd      �  pistone_PT5_ond      7                        Action PT5_Avanti - Exit ӆAd(   Giostra[(13-i) MOD 8].Presenza:=FALSE;
   pistone_PT5_avanti   m   pistone_PT5_indietro AND ( Giostra[(13-i) MOD 8].Presenza=FALSE OR Giostra[(13-i) MOD 8].Pezzo.Colore=rosso )         PT5_fine 5                        Action PT5_fine ӆAd      �  pistone_PT5_ond            
   PT6_riposo        �   pistone_PT6_indietro AND Giostra[(14-i) MOD 8].Presenza AND  Giostra[(14-i) MOD 8].Pezzo.Colore=rosso  AND NOT giostra_busy AND NOT pezzo_baia      
   PT6_Avanti 9                        Action PT6_Avanti ӆAd      �  pistone_PT6_ond      <      A pnall           Action PT6_Avanti - Exit ӆAd(   Giostra[(14-i) MOD 8].Presenza:=FALSE;
   pistone_PT6_avanti   �   (pistone_PT6_indietro AND NOT giostra_busy OR ( Giostra[(14-i) MOD 8].Presenza=FALSE OR  Giostra[(14-i) MOD 8].Pezzo.Colore=altro)) OR pezzo_baia         PT6_fine ;                        Action PT6_fine ӆAd      �  pistone_PT6_ond            
   PT7_riposo          r   trapano_alto AND tastatore_alto AND pennarello_alto AND pistone_PT5_indietro AND pistone_PT6_indietro AND timer_p1         giostra_pronta 2                        Action giostra_pronta ӆAd      �	�reset_timer_giostraE	T_giostra At#2sTON  mytimegiostra      reset_timer_giostra timer_giostrad          timer_giostra      
   giostra_on 1                        Action giostra_on ӆAd      �  movimento_giostrad          giostra_BUSY         giostra_in_movimento C                        Action giostra_in_movimento ӆAd*   IF( i=7) THEN i:=0;
ELSE i:=i+1;
END_IF;       NOT giostra_BUSY     giostra_riposo    V   pistone_indietro AND pezzo_magazzino  AND  i<8 AND N_pezzi_spinti =0 AND NOT wait_baia         pistoneAvanti -                        Action pistoneAvanti ӆAd      �  
pistone_ond      *                        Action pistoneAvanti - Exit ӆAd!   N_pezzi_spinti:=N_pezzi_spinti+1;   pistone_avanti     pistone_riposo    7   N_pezzi_spinti>0 AND NOT giostra_busy AND NOT wait_baia         nastro_avanti +                        Action nastro_avanti ӆAd      �  	nastro_ond       �   giostra_busy OR (Giostra[0].Presenza AND Giostra[1].Presenza AND Giostra[2].Presenza AND Giostra[3].Presenza AND Giostra[4].Presenza AND Giostra[5].Presenza AND Giostra[6].Presenza AND Giostra[7].Presenza) OR wait_baia     nastro_riposod                    ����, � � '            STANDARD.LIB @f�w5!   Iecsfc.lib 12.5.98 13:03:00 @d,X5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @                                             2                ����������������  
             ����                  ����  X���hÀ�                      POUs               MAIN      ����           
   Data types                 ALTEZZA  $                  COLORE  #                   PEZZO  "                   POSTO  !   ����              Visualizations  ����              Global Variables                 Global_Variables                     Variable_Configuration  	   ����                                                              ��b                         	   localhost            P      	   localhost            P      	   localhost            P            �]