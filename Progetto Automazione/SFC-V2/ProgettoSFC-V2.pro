CoDeSys+S   �                   @        @   2.3.9.59    @/    @                             1
Ud +    @      �d                   ��b        �?   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
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
              SL            ��              T           ��                 Q            ��                       TX5  �    ����    R    @                                                                                          MAIN     �      pezzo_magazzino                   IX                    %    9   sensore che segnala la presenza di un pezzo nel magazzino   pistone_avanti                   IX                   %    *   sensore che segnala se il pistone � avanti   pistone_indietro                   IX                   %    ,   sensore che segnala se il pistone � indietro   N_pezzi_spinti                     E   variabile che incrementa di 1 quando viene spinto un pezzo sul nastro
   pistone_on                   QX                   %       attuatore del pistone	   T_pistone                    TON                timer pistone di 1.5 s   mytimepistone                            timer_pistone                             reset_timer_pistone                         Variabili Nastro   fine_corsa_nastro                   IX                   %    :   sensore che segnala il passaggio di un pezzo a fine nastro	   nastro_on                   QX                    %       attuatore del nastro   T_nastro                    TON                timer nastro di 1s   mytimenastro                            timer_nastro                              reset_timer_nastro               !          Variabili Giostra   Giostra   	                      POSTO              $          array di 8 posti   i              %       V   indice che incrementa ad ogni movimento della giostra e usato per lavorare con l'array   giostra_busy               &    IX                  %    .   sensore che segnala il movimento della giostra   movimento_giostra               '    QX                  %    )   attuatore giostra che la muove di 1 posto	   T_giostra                    TON      )          timer giostra di 1s   mytimegiostra              *              timer_giostra               +              reset_timer_giostra               ,              sensore_colore               .    IX                  %    +   sensore che segnala i pezzi di colore rosso   trapano_basso               0    IX                  %    )   sensore che segnala se il trapano � basso   trapano_alto               1    IX                  %    '   ensore che segnala se il trapano � alto
   trapano_on               2    QX                  %    3   attuatore per l'attivazione della punta del trapano   trapano_down               3    QX                   %    /   attuatore per fare scendere o salire il trapano	   T_trapano                    TON      5          timer trapano di 1s   mytimetrapano              6              timer_trapano               7              reset_timer_trapano               8              tastatore_basso               :    IX                  %    +   sensore che segnala se il tastatore � basso   tastatore_alto               ;    IX                  %    *   sensore che segnala se il tastatore � alto   tastatore_down               <    QX                  %       attuatore tastatore   tastatore_lettura             =       *   fornisce la lettura dell'altezza dei pezzi   T_tastatore                    TON      ?          timer tastatore di 1s   mytimetastatore              @              timer_tastatore               A              reset_timer_tastatore               B              pennarello_alto               D    IX                  %    +   sensore che segnala se il pennarello � alto   pennarello_basso               E    IX                  %    ,   sensore che segnala se il pennarello � basso   pennarello_down               F    QX                  %       attuatore pennarello   T_pennarello                    TON      H          timer pennarello di 1s   mytimepennarello              I              timer_pennarello               J              reset_timer_pennarello               K              pistone_PT5_avanti               M    IX                   %    ,   sensore che segnala se il pistone 5 � avanti   pistone_PT5_indietro               N    IX                  %    .   sensore che segnala se il pistone 5 � indietro   pistone_PT5_on               O    QX                  %       attuatore pistone 5   pistone_PT6_avanti               Q    IX                  %    ,   sensore che segnala se il pistone 6 � avanti   pistone_PT6_indietro               R    IX                  %    .   sensore che segnala se il pistone 6 � indietro   pistone_PT6_on               S    QX                  %       attuatore pistone 6
   pezzo_baia               T    IX                  %    6   sensore che segnala la presenza di un pezzo sulla baia   j              Y          Indice  FOR 1_posto_true
   posto_true               Z       0   Condizione di ALMENO 1 posto con presenza a TRUE   k              \          Indice  FOR solo_pezzi_rossi   solo_pezzi_rossi               ]       ,   Condizione SOLO pezzi rossi e  baia occupata   h              _          Indice FOR giostra_piena   giostra_piena               `       *   Condizione TUTTI i pezzi con presenza TRUE   p              b          Indice FOR giostra_vuota   giostra_vuota               c       1   Condizione se ho TUTTI i pezzi con presenza FALSE   blocco_giostra               e       X   Condizione per bloccare la giostra se ho un pezzo rosso in PT6 e la  baia � gi� occupata   INIT          (x := TRUE, _x := TRUE)                  SFCStepType                   NASTRO_RIPOSO                            _NASTRO_RIPOSO                            PISTONE_RIPOSO                            _PISTONE_RIPOSO                            GIOSTRA_RIPOSO                            _GIOSTRA_RIPOSO                         	   P1_RIPOSO                         
   _P1_RIPOSO                            P1_OCCUPATO                            _P1_OCCUPATO                            P1_FINE                            _P1_FINE                            COLORE_RIPOSO                            _COLORE_RIPOSO                            PEZZO_SU_SENSORE                            _PEZZO_SU_SENSORE                            COLORE_ROSSO                            _COLORE_ROSSO                            ALTRO_COLORE                            _ALTRO_COLORE                            COLORE_FINE                            _COLORE_FINE                            TRAPANO_RIPOSO                            _TRAPANO_RIPOSO                            TRAPANO_GIU                            _TRAPANO_GIU                            TRAPANO_AVVIO                            _TRAPANO_AVVIO                         
   TRAPANO_SU                            _TRAPANO_SU                            TRAPANO_FINE                            _TRAPANO_FINE                            TASTATORE_RIPOSO                            _TASTATORE_RIPOSO                            TASTATORE_GIU                            _TASTATORE_GIU                            TASTATORE_SU                            _TASTATORE_SU                            TASTATORE_FINE                            _TASTATORE_FINE                            PENNARELLO_RIPOSO                            _PENNARELLO_RIPOSO                            PENNARELLO_GIU                            _PENNARELLO_GIU                            PENNARELLO_SU                            _PENNARELLO_SU                            PENNARELLO_FINE                            _PENNARELLO_FINE                         
   PT5_RIPOSO                            _PT5_RIPOSO                         
   PT5_AVANTI                            _PT5_AVANTI                            PT5_INDIETRO                            _PT5_INDIETRO                            PT5_FINE                         	   _PT5_FINE                         
   PT6_RIPOSO                            _PT6_RIPOSO                            PEZZO_PRESENTE                            _PEZZO_PRESENTE                         
   PT6_AVANTI                            _PT6_AVANTI                            PT6_INDIETRO                            _PT6_INDIETRO                            PT6_FINE                         	   _PT6_FINE                         
   PT7_RIPOSO                            _PT7_RIPOSO                            GIOSTRA_PRONTA                            _GIOSTRA_PRONTA                         
   GIOSTRA_ON                            _GIOSTRA_ON                            CONTROLLO_GIOSTRA                            _CONTROLLO_GIOSTRA                            BAIA2_ATTESA                            _BAIA2_ATTESA                            BAIA2_LIBERA                            _BAIA2_LIBERA                            PISTONEAVANTI                            _PISTONEAVANTI                            PISTONEDIETRO                            _PISTONEDIETRO                            TIMERPISTONE                            _TIMERPISTONE                            NASTRO_AVANTI                            _NASTRO_AVANTI                            TIMERNASTRO                            _TIMERNASTRO                                             1
Ud  @   ����            
 �   ����   #   $   "   !   	   5   8   A   ;   (   R   2   1   C   +   <   B   ?   :   4       ( �@      K   �@     K   �@     K   �@     K   	A                 A         +     ��localhost  T�&�� obsw           U        L�     �� ��^w   ��d   >��     �k!@�&          �            ���       ��      U���� �� �]sw��@ �]sw          !� 8�    ��@       ��@ ��d�� � �� d�� �d������ ;�     ,   ,                                                        K        @   ��b�B  /*BECKCONFI3*/
        !9� @   @   �   �     3               
   Standard            	�VRd       *s��           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 ��             Standard
         MAIN����               �VRd                 $����                           ����             Standard ��b	��b                                      	�VRd                       VAR_CONFIG
END_VAR
                                                                                   '                  �              Global_Variables ��b	�
d                        VAR_GLOBAL
END_VAR
                                                                                               '           ,                        TwinCAT_Configuration f�Kd	�VRd,     �?��           K   (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
END_VAR                                                                                               '           	   , h h D]           Variable_Configuration O�Kd	O�Kd	                        VAR_CONFIG

END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   $   , � � �P           ALTEZZA [	d	��b                      <   TYPE ALTEZZA: (nienteA,basso, alto);
END_TYPE






             #   , � � �6           COLORE ��d	��b                      .   TYPE COLORE: (nienteC,rosso, altro);
END_TYPE             "   , h h �           PEZZO �ERd	�ERd                      �   TYPE PEZZO :
STRUCT
	Colore : COLORE;
	Altezza : ALTEZZA;
	Trapanato:BOOL:=FALSE;
	Tastato:BOOL:=FALSE;
END_STRUCT
END_TYPE


             !   , g 4 ~�           POSTO ��d	��d      ��    ��        S   TYPE POSTO :
STRUCT
	Presenza :BOOL:=FALSE;
	Pezzo :PEZZO;
END_STRUCT
END_TYPE                  ,   Rf           MAIN 1
Ud	1
Ud                      �  PROGRAM MAIN
VAR






(*Variabili Pistone*)
         (*Ingressi*)
	pezzo_magazzino  AT%IX0.0:BOOL; (*sensore che segnala la presenza di un pezzo nel magazzino*)
	pistone_avanti AT%IX0.2:BOOL; (*sensore che segnala se il pistone � avanti*)
	pistone_indietro AT%IX0.4:BOOL; (*sensore che segnala se il pistone � indietro*)
         N_pezzi_spinti: INT:=0; (*variabile che incrementa di 1 quando viene spinto un pezzo sul nastro*)
         (*Uscite*)
	pistone_on  AT%QX0.2:BOOL; (*attuatore del pistone*)

	T_pistone: TON; (*timer pistone di 1.5 s*)
	mytimepistone: TIME;
	timer_pistone: BOOL;
	reset_timer_pistone: BOOL;

(*Variabili Nastro*)
         (*Ingressi*)
	fine_corsa_nastro  AT%IX0.6:BOOL; (*sensore che segnala il passaggio di un pezzo a fine nastro*)
         (*Uscite*)
	nastro_on  AT%QX0.0:BOOL; (*attuatore del nastro*)


	T_nastro: TON; (*timer nastro di 1s*)
	mytimenastro: TIME;
	timer_nastro: BOOL;
	reset_timer_nastro: BOOL;

(*Variabili Giostra*)
        Giostra: ARRAY[0..7] OF POSTO;(*array di 8 posti*)
	i: INT :=0; (*indice che incrementa ad ogni movimento della giostra e usato per lavorare con l'array*)
        giostra_busy AT %IX6.1: BOOL; (*sensore che segnala il movimento della giostra*)
        movimento_giostra AT %QX3.4: BOOL; (*attuatore giostra che la muove di 1 posto*)

        T_giostra: TON; (*timer giostra di 1s*)
        mytimegiostra: TIME;
        timer_giostra: BOOL;
        reset_timer_giostra: BOOL;

        sensore_colore AT %IX2.1: BOOL; (*sensore che segnala i pezzi di colore rosso*)

        trapano_basso AT %IX2.5: BOOL ; (*sensore che segnala se il trapano � basso*)
        trapano_alto AT %IX2.3: BOOL; (*ensore che segnala se il trapano � alto*)
        trapano_on AT %QX3.7:BOOL; (*attuatore per l'attivazione della punta del trapano*)
        trapano_down AT %QX7.0: BOOL; (*attuatore per fare scendere o salire il trapano*)

	T_trapano: TON; (*timer trapano di 1s*)
        mytimetrapano: TIME;
        timer_trapano: BOOL;
        reset_timer_trapano: BOOL;

        tastatore_basso AT %IX5.3: BOOL; (*sensore che segnala se il tastatore � basso*)
        tastatore_alto AT %IX2.7: BOOL; (*sensore che segnala se il tastatore � alto*)
        tastatore_down AT %QX3.6: BOOL; (*attuatore tastatore*)
        tastatore_lettura AT%I*:UINT; (*fornisce la lettura dell'altezza dei pezzi*)

        T_tastatore: TON; (*timer tastatore di 1s*)
        mytimetastatore: TIME;
        timer_tastatore: BOOL;
        reset_timer_tastatore: BOOL;

        pennarello_alto AT %IX5.4: BOOL; (*sensore che segnala se il pennarello � alto*)
        pennarello_basso AT %IX5.5: BOOL; (*sensore che segnala se il pennarello � basso*)
        pennarello_down AT %QX3.3: BOOL; (*attuatore pennarello*)

	T_pennarello: TON;(*timer pennarello di 1s*)
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


(*Variabili utilizzate nel FOR per la verificare alcune condizioni *)

	j: INT; (*Indice  FOR 1_posto_true*)
	posto_true: BOOL; (*Condizione di ALMENO 1 posto con presenza a TRUE*)

	k: INT; (*Indice  FOR solo_pezzi_rossi*)
	solo_pezzi_rossi: BOOL; (*Condizione SOLO pezzi rossi e  baia occupata*)

	h: INT; (*Indice FOR giostra_piena*)
	giostra_piena: BOOL; (*Condizione TUTTI i pezzi con presenza TRUE*)

	p: INT; (*Indice FOR giostra_vuota*)
	giostra_vuota: BOOL; (*Condizione se ho TUTTI i pezzi con presenza FALSE*) (*forse ridondante*)

	blocco_giostra: BOOL; (*Condizione per bloccare la giostra se ho un pezzo rosso in PT6 e la  baia � gi� occupata*)

END_VAR	       Init  3        TRUE           nastro_riposo (     tr(1i)OD           Action nastro_riposo �Ud      �  	nastro_ond       	          pistone_riposo              giostra_riposo      1   NOT giostra_busy OR  Giostra[(8-i)MOD 8].Presenza        	   p1_riposo ;     tr(1i)OD           Action p1_riposo �Ud�   (*controlla se ho solo almeno un pezzo con presenza true, se � vera la giostra pu� passare il ramo dl posto1 *)

FOR j:=0 TO 7 BY 1  DO
IF(Giostra[j].Presenza) THEN posto_true:=TRUE;
EXIT;
ELSE posto_true:=FALSE;
END_IF;


END_FOR;

         NOT fine_corsa_nastro         p1_occupato B     i)OD].es           Action p1_occupato �UdF   Giostra[(8-i)MOD 8].Presenza:=TRUE;
N_pezzi_spinti:=N_pezzi_spinti-1;       Giostra[(8-i)MOD 8].Presenza   5   posto_true AND(  N_pezzi_spinti <0 OR NOT nastro_on )         p1_fine              colore_riposo        !   NOT giostra[(9-i) MOD 8].Presenza      giostra[(9-i) MOD 8].Presenza         pezzo_su_sensore           sensore_colore         colore_rosso 8     i)OD].es           Action colore_rosso �Ud+   Giostra[(9-i) MOD 8].Pezzo.Colore := rosso;    )   Giostra[(9-i) MOD 8].Pezzo.Colore = rosso      NOT sensore_colore         altro_colore @     a[4- M 8           Action altro_colore �Ud+   Giostra[(9-i) MOD 8].Pezzo.Colore := altro;    )   Giostra[(9-i) MOD 8].Pezzo.Colore = altro         colore_fine              trapano_riposo        �   trapano_alto AND  Giostra[(10-i) MOD 8].Pezzo.Colore=rosso AND Giostra[(10-i) MOD 8].Presenza AND NOT giostra_busy  AND  NOT Giostra [(10-i) MOD 8].Pezzo.Trapanato         trapano_giu >     tr(1i)OD           Action trapano_giu �Ud      �  trapano_downd          trapano_basso         trapano_avvio ?     a[4- M 8           Action trapano_avvio �Ud      �  
trapano_on     �	�reset_timer_trapanoE	T_trapano At#1sTON  mytimetrapano      timer_trapano reset_timer_trapanod          timer_trapano AND trapano_down      
   trapano_su F     a[4- M 8           Action trapano_su �Ud      �  trapano_down     �  
trapano_ond      6     tr(1i)OD           Action trapano_su - Exit �Ud,   Giostra[(10-i) MOD 8].Pezzo.Trapanato:=TRUE;   trapano_alto   e   trapano_alto AND ( Giostra[(10-i) MOD 8].Presenza=FALSE OR Giostra[(10-i) MOD 8].Pezzo.Colore=altro )   ;   Giostra[(10-i) MOD 8].Pezzo.Trapanato=TRUE AND trapano_alto         trapano_fine              tastatore_riposo        r   tastatore_alto AND Giostra[(11-i) MOD 8].Presenza AND NOT giostra_busy AND NOT Giostra[(11-i) MOD 8].Pezzo.Tastato         tastatore_giu 3     tr(1i)OD           Action tastatore_giu �Ud      �  tastatore_down     �	�reset_timer_tastatoreET_tastatore At#1sTON  mytimetastatore      timer_tastatore reset_timer_tastatored          tastatore_basso         tastatore_su =                        Action tastatore_su �Ud      �  tastatore_downd      L                        Action tastatore_su - Exit �Ud*   Giostra[(11-i) MOD 8].Pezzo.Tastato:=TRUE;   tastatore_alto   a   tastatore_alto AND NOT Giostra[(11-i) MOD 8].Presenza AND NOT Giostra[(11-i) MOD 8].Pezzo.Tastato   ;   Giostra[(11-i) MOD 8].Pezzo.Tastato=TRUE AND tastatore_alto         tastatore_fine              pennarello_riposo N                        Action pennarello_riposo �Udb   IF(Giostra[(12-i) MOD 8].Pezzo.Trapanato) THEN Giostra[(12-i) MOD 8].Pezzo.Colore:=rosso;
END_IF;      t   pennarello_alto AND Giostra[(12-i) MOD 8].Pezzo.Colore=altro AND Giostra[(12-i) MOD 8].Presenza AND NOT giostra_busy         pennarello_giu .                        Action pennarello_giu �Ud      �  pennarello_down     �	�reset_timer_pennarelloET_pennarello At#1sTON  mytimepennarello      timer_pennarello reset_timer_pennarellod       %    pennarello_down AND timer_pennarello         pennarello_su D                        Action pennarello_su �Ud      �  pennarello_downd           pennarello_alto   �   pennarello_alto AND ( Giostra[(12-i) MOD 8].Presenza=FALSE OR Giostra[(12-i) MOD 8].Pezzo.Colore=rosso OR Giostra[(12-i) MOD 8].Pezzo.Altezza=basso)         pennarello_fine           
   PT5_riposo        z   pistone_PT5_indietro AND  Giostra[(13-i) MOD 8].Pezzo.Colore=altro AND Giostra[(13-i) MOD 8].Presenza AND NOT giostra_busy      
   PT5_Avanti 0                        Action PT5_Avanti �Ud      �  pistone_PT5_ond      7                        Action PT5_Avanti - Exit �Ud�   Giostra[(13-i) MOD 8].Presenza := FALSE;
Giostra[(13-i) MOD 8].Pezzo.Altezza := nienteA;
Giostra[(13-i) MOD 8].Pezzo.Colore := nienteC;
Giostra[(13-i) MOD 8].Pezzo.Tastato := FALSE;
   pistone_PT5_avanti         PT5_Indietro I                        Action PT5_Indietro �Ud      �  pistone_PT5_ond          pistone_PT5_indietro   l   pistone_PT5_indietro AND ( Giostra[(13-i) MOD 8].Presenza=FALSE OR Giostra[(13-i) MOD 8].Pezzo.Colore=rosso)         PT5_fine           
   PT6_riposo            Giostra[(14-i) MOD 8].Presenza         Pezzo_presente        i   pistone_PT6_Indietro AND Giostra[(14-i) MOD 8].Pezzo.Colore=Rosso AND NOT Pezzo_Baia AND NOT Giostra_Busy      
   PT6_Avanti 9     i)OD].es           Action PT6_Avanti �Ud      �  pistone_PT6_ond          pistone_PT6_avanti         PT6_Indietro /     i)OD].es           Action PT6_Indietro �Ud      �  pistone_PT6_ond      E     i)OD].es           Action PT6_Indietro - Exit �Ud�   Giostra[(14-i) MOD 8].Presenza := FALSE;
Giostra[(14-i) MOD 8].Pezzo.Altezza := nienteA;
Giostra[(14-i) MOD 8].Pezzo.Colore := nienteC;
Giostra[(14-i) MOD 8].Pezzo.Trapanato:=FALSE;
Giostra[(14-i) MOD 8].Pezzo.Tastato:=FALSE;   pistone_PT6_Indietro   0   NOT (Giostra[(14-i) MOD 8].Pezzo.Colore = Rosso)   ;   Pezzo_Baia AND (Giostra[(14-i) MOD 8].Pezzo.Colore = Rosso)   #   NOT  Giostra[(14-i) MOD 8].Presenza         PT6_fine           
   PT7_riposo          e   trapano_alto AND tastatore_alto AND pennarello_alto AND pistone_PT5_indietro AND pistone_PT6_indietro         giostra_pronta 2     a[4- M 8           Action giostra_pronta �Ud      �	�reset_timer_giostraE	T_giostra At#1sTON  mytimegiostra      reset_timer_giostra timer_giostrad    A     i)OD].es           Action giostra_pronta - Entry �Ud�   (*controlla se il vettore dei posti � vuoto e se � vera attiva la transizione che  rimanda allo stato giostra riposo*)
FOR p:=0 TO 7 BY 1  DO
IF(NOT Giostra[p].Presenza) THEN giostra_vuota:=TRUE;
ELSE giostra_vuota:=FALSE; EXIT;
END_IF;
END_FOR       timer_giostra      
   giostra_on 1     i)OD].es           Action giostra_on �Ud      �  movimento_giostrad          TRUE         controllo_giostra C     tr(1i)OD           Action controllo_giostra �Ud�  IF( i=7) THEN i:=0;
ELSE i:=i+1;
END_IF;

(*se la baia � occupata controlla s e ho solo pezzi rossi, se � vera la giostra continua a girare senza utilizzare attuatori (rimanda allo stato giostra_pronta) *)
IF(pezzo_baia=TRUE) THEN

FOR k:=0 TO 7 BY 1  DO
IF(Giostra[k].Pezzo.Colore=rosso  ) THEN solo_pezzi_rossi:=TRUE;
ELSE IF  (Giostra[k].Pezzo.Colore=altro) THEN solo_pezzi_rossi:=FALSE ; EXIT; END_IF;
END_IF;
END_FOR;

END_IF;

(*se la baia non � occupata controlla se ho almeno 1 pezzo NON rosso*)
IF(pezzo_baia=FALSE) THEN

FOR k:=0 TO 7 BY 1  DO
IF(Giostra[k].Pezzo.Colore=altro  ) THEN solo_pezzi_rossi:=FALSE; EXIT; END_IF;
END_FOR;

END_IF




 H     a[4- M 8            Action controllo_giostra - Entry �Ud      �  movimento_giostrad       )   NOT giostra_BUSY AND NOT solo_pezzi_rossi   %   NOT giostra_busy AND solo_pezzi_rossi         baia2_attesa R     a[4- M 8           Action baia2_attesa �Ud�   (*controlla se la baia � occupata e ha davanti un pezzo rosso se � vera blocca tutto*)


IF(pezzo_baia AND Giostra[(14-i) MOD 8].Presenza)
THEN blocco_giostra:=TRUE;

ELSE blocco_giostra:=FALSE;

END_IF;
      )   NOT blocco_giostra  AND fine_corsa_nastro   (   blocco_giostra AND NOT fine_corsa_nastro     giostra_riposo       baia2_libera         TRUE      giostra_vuota     giostra_riposo    K   pistone_indietro AND pezzo_magazzino  AND NOT Giostra[(8-i) MOD 8].Presenza         pistoneAvanti -     i)OD].es           Action pistoneAvanti �Ud      �  
pistone_ond      *           �            Action pistoneAvanti - Exit �Ud!   N_pezzi_spinti:=N_pezzi_spinti+1;   pistone_avanti         PistoneDietro :                      Action PistoneDietro �Ud      �  
pistone_ond          pistone_indietro         timerPistone 4                        Action timerPistone �Ud      �	�reset_timer_pistoneE	T_pistone At#1.5sTON  mytimepistone      timer_pistone reset_timer_pistoned       L   pistone_indietro AND timer_pistone AND pezzo_magazzino AND N_pezzi_spinti <3     pistone_riposo    K   N_pezzi_spinti>0 AND NOT giostra_busy AND NOT Giostra[(8-i) MOD 8].Presenza         nastro_avanti +                       Action nastro_avanti �Ud      �  	nastro_ond    <           �            Action nastro_avanti - Entry �Ud�   (*controlla se la giostra � piena o no *)
FOR h:=0 TO 7 BY 1  DO
IF(Giostra[h].Presenza) THEN giostra_piena:=TRUE;
ELSE giostra_piena:=FALSE; EXIT;
END_IF;

END_FOR;     NOT fine_corsa_nastro         timerNastro 5                        Action timerNastro �Ud      �	�reset_timer_nastroET_nastro At#1sTON  mytimenastro      timer_nastro reset_timer_nastrod       -   timer_nastro OR giostra_busy OR giostra_piena     nastro_riposod                    ����, � � '            STANDARD.LIB @f�w5!   Iecsfc.lib 12.5.98 13:03:00 @d,X5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @                                             2                ����������������  
             ����                  ����  X���hÀ�                      POUs               MAIN      ����           
   Data types                 ALTEZZA  $                   COLORE  #                  PEZZO  "                   POSTO  !   ����              Visualizations  ����              Global Variables                 Global_Variables                     TwinCAT_Configuration  ,                   Variable_Configuration  	   ����                                                              ��b                         	   localhost            P      	   localhost            P      	   localhost            P             `�