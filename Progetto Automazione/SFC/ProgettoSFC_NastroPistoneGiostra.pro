CoDeSys+A                      @        @   2.3.9.59    @/    @                             ~эd +    @      Јd                   хb        о-   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         фљ66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             фљ66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             фљ66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             фљ66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         фљ66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     фљ66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         фљ66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         фљ66     џџџџ           LEN               STR               §џ                 LEN                                     фљ66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         фљ66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         фљ66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         фљ66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       фљ66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       фљ66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       фљ66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             фљ66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             фљ66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             фљ66     џџџџ    o   C:\TwinCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS    §џ              L_TMR                    TON    §џ              D_TMR                    TON    §џ              P_TRIG                 R_TRIG    §џ              SD_TMR                    TON    §џ              SD_FF                 RS    §џ              DS_FF                 RS    §џ              DS_TMR                    TON    §џ              SL_FF                 RS    §џ              SL_TMR                    TON    §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       TX5      џџџџ    R    @                                                                                          MAIN     Y      pezzo_magazzino                   IX                    %           pistone_avanti                   IX                   %           pistone_indietro                   IX                   %           N_pezzi_spinti              	          Uscite
   pistone_on                   QX                   %       TimerPistone	   T_pistone                    TON                    mytimepistone                            timer_pistone                             reset_timer                         Variabili Nastro   fine_corsa_nastro                   IX                   %       Uscite	   nastro_on                   QX                    %       Variabili Giostra   Giostra   	                      POSTO                            i                            j                        Ingressi   giostra_BUSY                   IX                  %           sensore_colore                    IX                  %           trapano_basso               "    IX                  %           trapano_alto               #    IX                  %           tastatore_basso               %    IX                  %           tastatore_alto               &    IX                  %           pennarello_alto               (    IX                  %           pennarello_basso               )    IX                  %           pistone_PT5_avanti               +    IX                   %           pistone_PT5_indietro               ,    IX                  %           pistone_PT6_avanti               .    IX                  %           pistone_PT6_indietro               /    IX                  %        
   pezzo_baia               1    IX                  %       Uscite   movimento_giostra               4    QX                  %        
   trapano_on               6    QX                  %           trapano_down               7    QX                   %           tastatore_down               9    QX                  %           pennarello_down               ;    QX                  %           pistone_PT5_on               =    QX                  %           pistone_PT6_on               >    QX                  %        	   T_giostra                    TON      @              mytimegiostra              A              timer_giostra               B           	   T_trapano                    TON      D              mytimetrapano              E              timer_trapano               F              T_p1                    TON      H              mytimep1              I              timer_p1               J              reset_timer_trapano               M              reset_timer_giostra               N              reset_timer_p1               O              T_pennarello                    TON      P              reset_timer_pennarello               Q              timer_pennarello               R              mytimepennarello              S              INIT          (x := TRUE, _x := TRUE)                  SFCStepType                   NASTRO_RIPOSO                            _NASTRO_RIPOSO                            PISTONE_RIPOSO                            _PISTONE_RIPOSO                            GIOSTRA_RIPOSO                            _GIOSTRA_RIPOSO                            P1_VUOTO                         	   _P1_VUOTO                            P1_OCCUPATO                            _P1_OCCUPATO                            COLORE_NULL                            _COLORE_NULL                            TEST_COLORE                            _TEST_COLORE                            TRAPANO_RIPOSO                            _TRAPANO_RIPOSO                            TRAPANO_GIU                            _TRAPANO_GIU                            TRAPANO_AVVIO                            _TRAPANO_AVVIO                         
   TRAPANO_SU                            _TRAPANO_SU                            PENNARELLO_RIPOSO                            _PENNARELLO_RIPOSO                            PENNARELLO_GIU                            _PENNARELLO_GIU                            PENNARELLO_SU                            _PENNARELLO_SU                            GIOSTRA_PRONTA                            _GIOSTRA_PRONTA                         
   GIOSTRA_ON                            _GIOSTRA_ON                            PISTONEAVANTI                            _PISTONEAVANTI                            PISTONE_DIETRO                            _PISTONE_DIETRO                            NASTRO_AVANTI                            _NASTRO_AVANTI                                             iьd  @    џџџџ            
 З  	 §џџџ   #   $   "   !   6   .       ( с.      K   я.     K   §.     K   /     K    /                 -/         +     КЛlocalhost  TР&ие obsw           U        Lе     №ж РЬ^w   аd   >Ё     Иk!@Р&                      Ф       ќ      Uј№ж ќе Ю]swи№@ Ю]sw          ! 8ж    и№@       и№@ d№ и №ж d№ №dџџџџќж ;№     ,   ,                                                        K        @   ХЮb1  /*BECKCONFI3*/
        !9О @   @           3               
   Standard            	cдd       *sЃ           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 мЗ             Standard
         MAINџџџџ               ХЮb                 $ћџџџ                           џџњ             Standard хb	хb                                      	ыd                       VAR_CONFIG
END_VAR
                                                                                   '                  Н              Global_Variables ХЮb	ђ
d                        VAR_GLOBAL
END_VAR
                                                                                               '           	     r g t (            Variable_Configuration ХЮb	ХЮb	                        VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   $   ,   цP           ALTEZZA @)d	ХЮb                      &   TYPE ALTEZZA: (basso, alto);
END_TYPE             #   ,   Ь6           COLORE K(d	ХЮb                      &   TYPE COLORE: (rosso, altro);
END_TYPE             "   , h h В           PEZZO ХЮb	ХЮb                      R   TYPE PEZZO :
STRUCT
	Colore : COLORE;
	Altezza : ALTEZZA;
END_STRUCT
END_TYPE             !   , g 4 ~ш           POSTO цбd	цбd      иџ            S   TYPE POSTO :
STRUCT
	Presenza :BOOL:=FALSE;
	Pezzo :PEZZO;
END_STRUCT
END_TYPE                  ,   Rf           MAIN xэd	iьd                      R  PROGRAM MAIN
VAR

(*Variabili Pistone*)
         (*Ingressi*)
	pezzo_magazzino  AT%IX0.0:BOOL;
	pistone_avanti AT%IX0.2:BOOL;
	pistone_indietro AT%IX0.4:BOOL;
         N_pezzi_spinti: INT:=0;
         (*Uscite*)
	pistone_on  AT%QX0.2:BOOL;
        (*TimerPistone*)
	T_pistone: TON;
	mytimepistone: TIME;
	timer_pistone: BOOL;
	reset_timer: BOOL;

(*Variabili Nastro*)
         (*Ingressi*)
	fine_corsa_nastro  AT%IX0.6:BOOL;
         (*Uscite*)
	nastro_on  AT%QX0.0:BOOL;


(*Variabili Giostra*)
        Giostra: ARRAY[0..7] OF POSTO;
	i: INT :=0;
	j:INT:=0;
        (*Ingressi*)
        giostra_BUSY AT %IX6.1: BOOL;

        sensore_colore AT %IX2.1: BOOL;

        trapano_basso AT %IX2.5: BOOL ;
        trapano_alto AT %IX2.3: BOOL;

        tastatore_basso AT %IX5.3: BOOL;
        tastatore_alto AT %IX2.7: BOOL;

        pennarello_alto AT %IX5.4: BOOL;
        pennarello_basso AT %IX5.5: BOOL;

        pistone_PT5_avanti AT %IX5.0: BOOL;
        pistone_PT5_indietro AT %IX5.1: BOOL;

        pistone_PT6_avanti AT %IX5.7: BOOL;
        pistone_PT6_indietro AT %IX5.6: BOOL;

        pezzo_baia AT %IX5.2: BOOL;

        (*Uscite*)
        movimento_giostra AT %QX3.4: BOOL;

        trapano_on AT %QX3.7:BOOL;
        trapano_down AT %QX7.0: BOOL;

        tastatore_down AT %QX3.6: BOOL;

        pennarello_down AT %QX3.3: BOOL;

        pistone_PT5_on AT %QX3.1:BOOL ;
        pistone_PT6_on AT%QX3.5: BOOL;

	T_giostra: TON;
         mytimegiostra: TIME;
	timer_giostra: BOOL;

	T_trapano: TON;
	mytimetrapano: TIME;
	timer_trapano: BOOL;

	T_p1: TON;
	mytimep1: TIME;
	timer_p1: BOOL;


	reset_timer_trapano: BOOL;
	reset_timer_giostra: BOOL;
	reset_timer_p1: BOOL;
	T_pennarello: TON;
	reset_timer_pennarello: BOOL;
	timer_pennarello: BOOL;
	mytimepennarello: TIME;
END_VAR       Init  3        TRUE           nastro_riposo (     asto_ao            Action nastro_riposo xэd      џ  	nastro_on     џ   reset_timerd                 pistone_riposo      	        giostra_riposo ,     asto_ao            Action giostra_riposo xэd      џ  movimento_giostrad       2   (j<14 AND NOT giostra_busy) OR Giostra[i].Presenza           p1_vuoto        1   NOT fine_corsa_nastro OR Giostra[i].Presenza=TRUE      j>=7         p1_occupato 3                        Action p1_occupato xэd      џ	reset_timer_p1ET_p1 At#2sTON  mytimep1      reset_timer_p1 timer_p1d    4                        Action p1_occupato - Entry xэd'   Giostra[i].Presenza:=TRUE;
i:=i+1;

          colore_null        .   Giostra[j].Presenza OR NOT Giostra[j].Presenza      j>8         test_colore :     asto_ao            Action test_colore xэdo   IF (sensore_colore=TRUE) THEN
Giostra[j].Pezzo.Colore:=rosso;
ELSE
Giostra[j].Pezzo.Colore:=altro;
END_IF
            trapano_riposo 5                        Action trapano_riposo xэd      џ  
trapano_on     џ  trapano_downd         `   trapano_alto AND  Giostra[j-1].Pezzo.Colore=rosso AND Giostra[j-1].Presenza AND NOT giostra_busy         trapano_giu >                        Action trapano_giu xэd      џ  trapano_downd          trapano_basso         trapano_avvio ?                        Action trapano_avvio xэd      џ  
trapano_on     џ	reset_timer_trapanoE	T_trapano At#2sTON  mytimetrapano      reset_timer_trapano timer_trapanod          timer_trapano AND trapano_down   S   trapano_alto AND ( Giostra[j-1].Presenza=FALSE OR Giostra[j-1].Pezzo.Colore=altro )      
   trapano_su =                        Action trapano_su xэd      џ  trapano_down     џ  
trapano_ond    @                        Action trapano_su - Entry xэd   mytimetrapano:=t#0s;          pennarello_riposo )                        Action pennarello_riposo xэd      џ  
trapano_on     џ  trapano_downd         c   pennarello_alto AND  Giostra[j-4].Pezzo.Colore=altro AND Giostra[j-4].Presenza AND NOT giostra_busy         pennarello_giu .                        Action pennarello_giu xэd      џ  pennarello_down     џ	reset_timer_pennarelloET_pennarello At#1sTON  mytimepennarello      reset_timer_pennarello timer_pennarellod       $   timer_pennarello AND pennarello_down   V   pennarello_alto AND ( Giostra[j-4].Presenza=FALSE OR Giostra[j-4].Pezzo.Colore=rosso )         pennarello_su 6                        Action pennarello_su xэd      џ  pennarello_downd           r   timer_p1 AND trapano_alto AND tastatore_alto AND pennarello_alto AND pistone_PT5_indietro AND pistone_PT6_indietro         giostra_pronta 2                        Action giostra_pronta xэd      џ	reset_timer_giostraE	T_giostra At#0.3sTON  mytimegiostra      reset_timer_giostra timer_giostrad          timer_giostra      
   giostra_on 1                        Action giostra_on xэd      џ  movimento_giostrad    /                        Action giostra_on - Entry xэd%   j:=j+1;
IF( j=14) THEN j:=0;
END_IF     TRUE     giostra_riposo    .   pistone_indietro AND pezzo_magazzino  AND  i<8         pistoneAvanti -                        Action pistoneAvanti xэd      џ  
pistone_ond          pistone_avanti         pistone_dietro 0     asto_ao            Action pistone_dietro xэd      џpistone_avanti 
pistone_on     џ	reset_timerE	T_pistone At#3sTON  mytimepistone      reset_timer timer_pistoned          timer_pistone     pistone_riposo    [   pezzo_magazzino  AND i<8 AND (NOT giostra_busy OR i=8) AND trapano_alto AND pennarello_alto         nastro_avanti +                        Action nastro_avanti xэd      џ  	nastro_ond       6   giostra_busy OR  trapano_on OR pennarello_down OR i>=8     nastro_riposod                    §џџџ,   '            STANDARD.LIB @fаw5!   Iecsfc.lib 12.5.98 12:03:00 @d,X5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @                                             2                џџџџџџџџџџџџџџџџ  
             њџџџ                  јџџџ  XСаСhУУ                      POUs               MAIN      џџџџ           
   Data types                 ALTEZZA  $                   COLORE  #                   PEZZO  "                  POSTO  !   џџџџ              Visualizations  џџџџ              Global Variables                 Global_Variables                     Variable_Configuration  	   џџџџ                                                              хb                         	   localhost            P      	   localhost            P      	   localhost            P          оrd