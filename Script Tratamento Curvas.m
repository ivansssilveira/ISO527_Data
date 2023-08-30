clear all
clc
%%javaaddpath("C:/Octave/xercesImpl-2.12.0.jar");
%%javaaddpath("C:/Octave/xml-apis-1.4.01.jar");
pkg load windows
pkg load io

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Dados %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fechadura=xlsopen('Resumo_Prensados_e_Impressos.xlsx'); %abre excel para formar os vetores
%%%%%%%%%%%%%%%%%%%%%%%%% Impressos %%%%%%%%%%%%%%%%%%%%%%%%%
%%% PLA 45dg %%%
Def_LA_R45_T1L10CP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'D16:D482');
Tens_LA_R45_T1L10CP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'E16:E482');
%
Def_LA_R45_T1L10CP6=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'I16:I437');
Tens_LA_R45_T1L10CP6=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'J16:J437');
%
Def_LA_R45_T1L10CP7=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'N15:N414');
Tens_LA_R45_T1L10CP7=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'O15:O414');
%
%%% PLA 90dg %%%
Def_LA_R90_T1L10CP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AR15:AR432');
Tens_LA_R90_T1L10CP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AS15:AS432');
%
Def_LA_R90_T1L10CP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AW15:AW447');
Tens_LA_R90_T1L10CP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AX15:AX447');
%
Def_LA_R90_T1L10CP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BB13:BB456');
Tens_LA_R90_T1L10CP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BC13:BC456');
%
Def_LA_R90_T1L10CP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BG21:BG454');
Tens_LA_R90_T1L10CP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BH21:BH454');
%
%%% PVDF 45dg %%%
Def_DF_R45_T1L10CP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BL16:BL1501');
Tens_DF_R45_T1L10CP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BM16:BM1501');
%
Def_DF_R45_T1L10CP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BQ15:BQ1501');
Tens_DF_R45_T1L10CP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BR15:BR1501');
%
Def_DF_R45_T1L10CP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BV18:BV1554');
Tens_DF_R45_T1L10CP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'BW18:BW1554');
%
Def_DF_R45_T1L10CP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'CA17:CA1548');
Tens_DF_R45_T1L10CP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'CB17:CB1548');
%
%%% PVDF 90dg %%%
Def_DF_R90_T1L10CP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'S14:S789');
Tens_DF_R90_T1L10CP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'T14:T789');
%
Def_DF_R90_T1L10CP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'X13:X857');
Tens_DF_R90_T1L10CP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'Y13:Y857');
%
Def_DF_R90_T1L10CP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AC13:AC826');
Tens_DF_R90_T1L10CP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AD13:AD826');
%
Def_DF_R90_T1L10CP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AH14:AH882');
Tens_DF_R90_T1L10CP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AI14:AI882');
%
Def_DF_R90_T1L10CP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AM14:AM826');
Tens_DF_R90_T1L10CP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'Impressos', 'AN14:AN826');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Prensados %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PVDF %%%
Def_DF_PrensCP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'E13:E1617');
Tens_DF_PrensCP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'F13:F1617');
%
Def_DF_PrensCP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'K13:K1097');
Tens_DF_PrensCP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'L13:L1097');
%
Def_DF_PrensCP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'Q11:Q1750');
Tens_DF_PrensCP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'R11:R1750');
%
Def_DF_PrensCP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'W14:W2746');
Tens_DF_PrensCP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'X14:X2746');
%
Def_DF_PrensCP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'AC18:AC968');
Tens_DF_PrensCP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PVDF_Prensado', 'AD18:AD968');
%
%%% PLA %%%
Def_LA_PrensCP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'E12:E100');
Tens_LA_PrensCP1=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'F12:F100');
%
Def_LA_PrensCP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'K13:K111');
Tens_LA_PrensCP2=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'L13:L111');
%
Def_LA_PrensCP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'Q13:Q107');
Tens_LA_PrensCP3=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'R13:R107');
%
Def_LA_PrensCP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'W14:W87');
Tens_LA_PrensCP4=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'X14:X87');
%
Def_LA_PrensCP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'AC13:AC94');
Tens_LA_PrensCP5=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'AD13:AD94');
%
Def_LA_PrensCP7=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'AI17:AI192');
Tens_LA_PrensCP7=xlsread('Resumo_Prensados_e_Impressos.xlsx', 'PLA_Prensado', 'AJ17:AJ192');
%
fechadura=xlsclose(fechadura);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ajuste Linear %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Impressos
%%%%PLA 45dg
%CP5
%%X1=[Def_LA_R45_T1L10CP5(9:47,1) ones(39,1)];
%%Y1=Tens_LA_R45_T1L10CP5(9:47,1);
%%c1=(X1'*X1)\(X1'*Y1);
%%Et_PLA45_CP5=c1(1,1); %ang1
%%linear1=c1(2,1);
%%%CP6
%%X2=[Def_LA_R45_T1L10CP6(9:45,1) ones(37,1)];
%%Y2=Tens_LA_R45_T1L10CP6(9:45,1);
%%c2=(X2'*X2)\(X2'*Y2);
%%Et_PLA45_CP6=c2(1,1); %ang2
%%linear2=c1(2,1);
%%%CP7
%%X3=[Def_LA_R45_T1L10CP7(9:46,1) ones(38,1)];
%%Y3=Tens_LA_R45_T1L10CP7(9:46,1);
%%c3=(X3'*X3)\(X3'*Y3);
%%Et_PLA45_CP7=c3(1,1); %ang3
%%linear3=c3(2,1);
%%%
%%Et_PLA45=[Et_PLA45_CP5;Et_PLA45_CP6;Et_PLA45_CP7];
%%%%%%PLA 90dg
%%%CP1
%%X4=[Def_LA_R90_T1L10CP1(8:46,1) ones(39,1)];
%%Y4=Tens_LA_R90_T1L10CP1(8:46,1);
%%c4=(X4'*X4)\(X4'*Y4);
%%Et_PLA90_CP1=c4(1,1);  %ang4
%%linear4=c4(2,1);
%%%CP2
%%X5=[Def_LA_R90_T1L10CP2(9:45,1) ones(37,1)];
%%Y5=Tens_LA_R90_T1L10CP2(9:45,1);
%%c5=(X5'*X5)\(X5'*Y5);
%%Et_PLA90_CP2=c5(1,1);  %ang5
%%linear5=c5(2,1);
%%%CP3
%%X6=[Def_LA_R90_T1L10CP3(8:41,1) ones(34,1)];
%%Y6=Tens_LA_R90_T1L10CP3(8:41,1);
%%c6=(X6'*X6)\(X6'*Y6);
%%Et_PLA90_CP3=c6(1,1);  %ang6
%%linear6=c6(2,1);
%%%CP4
%%X7=[Def_LA_R90_T1L10CP4(9:46,1) ones(38,1)];
%%Y7=Tens_LA_R90_T1L10CP4(9:46,1);
%%c7=(X7'*X7)\(X7'*Y7);
%%Et_PLA90_CP4=c7(1,1);  %ang7
%%linear7=c7(2,1);
%%%
%%Et_PLA90=[Et_PLA90_CP1;Et_PLA90_CP2;Et_PLA90_CP3;Et_PLA90_CP4];
%%%%%%PVDF 45dg
%%%CP1
%%X8=[Def_DF_R45_T1L10CP1(10:48,1) ones(39,1)];
%%Y8=Tens_DF_R45_T1L10CP1(10:48,1);
%%c8=(X8'*X8)\(X8'*Y8);
%%Et_PVDF45_CP1=c8(1,1);  %ang8
%%linear8=c8(2,1);
%%%CP2
%%X9=[Def_DF_R45_T1L10CP2(9:50,1) ones(42,1)];
%%Y9=Tens_DF_R45_T1L10CP2(9:50,1);
%%c9=(X9'*X9)\(X9'*Y9);
%%Et_PVDF45_CP2=c9(1,1);  %ang9
%%linear9=c9(2,1);
%%%CP3
%%X10=[Def_DF_R45_T1L10CP3(9:51,1) ones(43,1)];
%%Y10=Tens_DF_R45_T1L10CP3(9:51,1);
%%c10=(X10'*X10)\(X10'*Y10);
%%Et_PVDF45_CP3=c10(1,1);  %ang10
%%linear10=c10(2,1);
%%%CP4
%%X11=[Def_DF_R45_T1L10CP4(10:52,1) ones(43,1)];
%%Y11=Tens_DF_R45_T1L10CP4(10:52,1);
%%c11=(X11'*X11)\(X11'*Y11);
%%Et_PVDF45_CP4=c11(1,1);  %ang11
%%linear11=c11(2,1);
%%%
%%Et_PVDF45=[Et_PVDF45_CP1;Et_PVDF45_CP2;Et_PVDF45_CP3;Et_PVDF45_CP4];
%%%%%%PVDF 90dg
%%%CP1
%%X12=[Def_DF_R90_T1L10CP1(8:39,1) ones(32,1)];
%%Y12=Tens_DF_R90_T1L10CP1(8:39,1);
%%c12=(X12'*X12)\(X12'*Y12);
%%Et_PVDF90_CP1=c12(1,1);  %ang12
%%linear12=c12(2,1);
%%%CP2
%%X13=[Def_DF_R90_T1L10CP2(7:37,1) ones(31,1)];
%%Y13=Tens_DF_R90_T1L10CP2(7:37,1);
%%c13=(X13'*X13)\(X13'*Y13);
%%Et_PVDF90_CP2=c13(1,1);  %ang13
%%linear13=c13(2,1);
%%%CP3
%%X14=[Def_DF_R90_T1L10CP3(9:39,1) ones(31,1)];
%%Y14=Tens_DF_R90_T1L10CP3(9:39,1);
%%c14=(X14'*X14)\(X14'*Y14);
%%Et_PVDF90_CP3=c14(1,1);  %ang14
%%linear14=c14(2,1);
%%%CP4
%%X15=[Def_DF_R90_T1L10CP4(8:40,1) ones(33,1)];
%%Y15=Tens_DF_R90_T1L10CP4(8:40,1);
%%c15=(X15'*X15)\(X15'*Y15);
%%Et_PVDF90_CP4=c15(1,1);  %ang15
%%linear15=c15(2,1);
%%%CP5
%%X16=[Def_DF_R90_T1L10CP5(9:41,1) ones(33,1)];
%%Y16=Tens_DF_R90_T1L10CP5(9:41,1);
%%c16=(X16'*X16)\(X16'*Y16);
%%Et_PVDF90_CP5=c16(1,1);  %ang16
%%linear16=c16(2,1);
%%%
%%Et_PVDF90=[Et_PVDF90_CP1;Et_PVDF90_CP2;Et_PVDF90_CP3;Et_PVDF90_CP4;Et_PVDF90_CP5];
%%%%%%%%%%%%%%%%%%%%%%Prensados
%%%%%%%%%%%%%%%%%%%%%%%%PLA
%%%CP1
%%X17=[Def_LA_PrensCP1(3:14,1) ones(12,1)];
%%Y17=Tens_LA_PrensCP1(3:14,1);
%%c17=(X17'*X17)\(X17'*Y17);
%%Et_PLA_CP1=c17(1,1);  %ang17
%%linear17=c17(2,1);
%%%CP2
%%X18=[Def_LA_PrensCP2(4:14,1) ones(11,1)];
%%Y18=Tens_LA_PrensCP2(4:14,1);
%%c18=(X18'*X18)\(X18'*Y18);
%%Et_PLA_CP2=c18(1,1);  %ang18
%%linear18=c18(2,1);
%%%CP3
%%X19=[Def_LA_PrensCP3(4:14,1) ones(11,1)];
%%Y19=Tens_LA_PrensCP3(4:14,1);
%%c19=(X19'*X19)\(X19'*Y19);
%%Et_PLA_CP3=c19(1,1);  %ang19
%%linear19=c19(2,1);
%%%CP5
%%X20=[Def_LA_PrensCP5(4:14,1) ones(11,1)];
%%Y20=Tens_LA_PrensCP5(4:14,1);
%%c20=(X20'*X20)\(X20'*Y20);
%%Et_PLA_CP5=c20(1,1);  %ang20
%%linear20=c20(2,1);
%%%CP7
%%X21=[Def_LA_PrensCP7(5:22,1) ones(18,1)];
%%Y21=Tens_LA_PrensCP7(5:22,1);
%%c21=(X21'*X21)\(X21'*Y21);
%%Et_PLA_CP7=c21(1,1);  %ang21
%%linear21=c21(2,1);
%%%
%%Et_PLA=[Et_PLA_CP1;Et_PLA_CP2;Et_PLA_CP3;Et_PLA_CP5;Et_PLA_CP7];
%%%%%%%%%%%%%%%%%%%%%%%%PVDF
%%%CP1
%%X22=[Def_DF_PrensCP1(3:12,1) ones(10,1)];
%%Y22=Tens_DF_PrensCP1(3:12,1);
%%c22=(X22'*X22)\(X22'*Y22);
%%Et_PVDF_CP1=c22(1,1);  %ang22
%%linear22=c22(2,1);
%%%CP2
%%X23=[Def_DF_PrensCP2(3:13,1) ones(11,1)];
%%Y23=Tens_DF_PrensCP2(3:13,1);
%%c23=(X23'*X23)\(X23'*Y23);
%%Et_PVDF_CP2=c23(1,1);  %ang23
%%linear23=c23(2,1);
%%%CP3
%%X24=[Def_DF_PrensCP3(3:11,1) ones(9,1)];
%%Y24=Tens_DF_PrensCP3(3:11,1);
%%c24=(X24'*X24)\(X24'*Y24);
%%Et_PVDF_CP3=c24(1,1);  %ang24
%%linear24=c24(2,1);
%%%CP4
%%X25=[Def_DF_PrensCP4(3:12,1) ones(10,1)];
%%Y25=Tens_DF_PrensCP4(3:12,1);
%%c25=(X25'*X25)\(X25'*Y25);  %ang25
%%Et_PVDF_CP4=c25(1,1);
%%linear25=c25(2,1);
%%%CP5
%%X26=[Def_DF_PrensCP5(5:22,1) ones(18,1)];
%%Y26=Tens_DF_PrensCP5(5:22,1);
%%c26=(X26'*X26)\(X26'*Y26);
%%Et_PVDF_CP5=c26(1,1);  %ang26
%%linear26=c26(2,1);
%%Et_PVDF=[Et_PVDF_CP1;Et_PVDF_CP2;Et_PVDF_CP3;Et_PVDF_CP4;Et_PVDF_CP5];

%%% Resultados estatisticos
%Media aritm; Desvio Padrao; - Impressos
%%mediaEt_PLA45=mean(Et_PLA45); desvpEt_PLA45=std(Et_PLA45,0);
%%mediaEt_PLA90=mean(Et_PLA90); desvpEt_PLA90=std(Et_PLA90,0);
%%mediaEt_PVDF45=mean(Et_PVDF45); desvpEt_PVDF45=std(Et_PVDF45,0);
%%mediaEt_PVDF90=mean(Et_PVDF90); desvpEt_PVDF90=std(Et_PVDF90,0);
%%%Media aritm; Desvio Padrao; - Prensados
%%mediaEt_PLA=mean(Et_PLA); desvpEt_PLA=std(Et_PLA,0);
%%mediaEt_PVDF=mean(Et_PVDF); desvpEt_PVDF=std(Et_PVDF,0);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Avaliacao do R^2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%https://en.wikipedia.org/wiki/Coefficient_of_determination

%%%Impressos
%%%PLA 45dg
%%CP5
%%Fn_1=(Et_PLA45_CP5.*Def_LA_R45_T1L10CP5(9:47,1))+linear1; %Dados Y modelo
%%Yn_1=Tens_LA_R45_T1L10CP5(9:47,1); %Dados Y 'reais'
%%residuo_1=Yn_1-Fn_1;
%%mediaYn_1=mean(Yn_1); n_1=length(Yn_1);
%%%SStot => total sum of squares (proportional to the variance of the data)
%%for i=1:n_1
%%  SSptot_1(i,1)=(Yn_1(i,1)-mediaYn_1)^2;
%%end
%%SStot_1= sum(SSptot_1);
%%%SSreg => The regression sum of squares, also called the explained sum of squares
%%for i=1:n_1
%%  SSp_reg_1(i,1)=(Fn_1(i,1)-mediaYn_1)^2;
%%end
%%SSreg_1= sum(SSp_reg_1);
%%%SSres => The sum of squares of residuals, also called the residual sum of squares
%%for i=1:n_1
%%  SSp_res_1(i,1)=(Yn_1(i,1)-Fn_1(i,1))^2;
%%end
%%SSres_1= sum(SSp_res_1);
%%%Coefficient of Determination R² (general definition)
%%Rquad_1=1-(SSres_1/SStot_1);
%%%%Norm of residuals
%%NormRes_1=(SSres_1)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP6
%%Fn_2=(Et_PLA45_CP6.*Def_LA_R45_T1L10CP6(9:45,1))+linear2; %Dados Y modelo
%%Yn_2=Tens_LA_R45_T1L10CP6(9:45,1); %Dados Y 'reais'
%%residuo_2=Yn_2-Fn_2;
%%mediaYn_2=mean(Yn_2); n_2=length(Yn_2);
%%%SStot
%%for i=1:n_2
%%  SSptot_2(i,1)=(Yn_2(i,1)-mediaYn_2)^2;
%%end
%%SStot_2= sum(SSptot_2);
%%%SSreg
%%for i=1:n_2
%%  SSp_reg_2(i,1)=(Fn_2(i,1)-mediaYn_2)^2;
%%end
%%SSreg_2= sum(SSp_reg_2);
%%%SSres
%%for i=1:n_2
%%  SSp_res_2(i,1)=(Yn_2(i,1)-Fn_2(i,1))^2;
%%end
%%SSres_2= sum(SSp_res_2);
%%%R² (general definition)
%%Rquad_2=1-(SSres_2/SStot_2);
%%%Norm of residuals
%%NormRes_2=(SSres_2)^(0.5);
%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%
%%%CP7
%%Fn_3=(Et_PLA45_CP7.*Def_LA_R45_T1L10CP7(9:46,1))+linear3; %Dados Y modelo
%%Yn_3=Tens_LA_R45_T1L10CP7(9:46,1); %Dados Y 'reais'
%%residuo_3=Yn_3-Fn_3;
%%mediaYn_3=mean(Yn_3); n_3=length(Yn_3);
%%%SStot
%%for i=1:n_3
%%  SSptot_3(i,1)=(Yn_3(i,1)-mediaYn_3)^2;
%%end
%%SStot_3= sum(SSptot_3);
%%%SSreg
%%for i=1:n_3
%%  SSp_reg_3(i,1)=(Fn_3(i,1)-mediaYn_3)^2;
%%end
%%SSreg_3= sum(SSp_reg_3);
%%%SSres
%%for i=1:n_3
%%  SSp_res_3(i,1)=(Yn_3(i,1)-Fn_3(i,1))^2;
%%end
%%SSres_3= sum(SSp_res_3);
%%%R² (general definition)
%%Rquad_3=1-(SSres_3/SStot_3);
%%%Norm of residuals
%%NormRes_3=(SSres_3)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%PLA 90dg
%%%CP1
%%Fn_4=(Et_PLA90_CP1.*Def_LA_R90_T1L10CP1(8:46,1))+linear4; %Dados Y modelo
%%Yn_4=Tens_LA_R90_T1L10CP1(8:46,1); %Dados Y 'reais'
%%residuo_4=Yn_4-Fn_4;
%%mediaYn_4=mean(Yn_4); n_4=length(Yn_4);
%%%SStot
%%for i=1:n_4
%%  SSptot_4(i,1)=(Yn_4(i,1)-mediaYn_4)^2;
%%end
%%SStot_4= sum(SSptot_4);
%%%SSreg
%%for i=1:n_4
%%  SSp_reg_4(i,1)=(Fn_4(i,1)-mediaYn_4)^2;
%%end
%%SSreg_4= sum(SSp_reg_4);
%%%SSres
%%for i=1:n_4
%%  SSp_res_4(i,1)=(Yn_4(i,1)-Fn_4(i,1))^2;
%%end
%%SSres_4= sum(SSp_res_4);
%%%R² (general definition)
%%Rquad_4=1-(SSres_4/SStot_4);
%%%Norm of residuals
%%NormRes_4=(SSres_4)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP2
%%Fn_5=(Et_PLA90_CP2.*Def_LA_R90_T1L10CP2(9:45,1))+linear5; %Dados Y modelo
%%Yn_5=Tens_LA_R90_T1L10CP2(9:45,1); %Dados Y 'reais'
%%residuo_5=Yn_5-Fn_5;
%%mediaYn_5=mean(Yn_5); n_5=length(Yn_5);
%%%SStot
%%for i=1:n_5
%%  SSptot_5(i,1)=(Yn_5(i,1)-mediaYn_5)^2;
%%end
%%SStot_5= sum(SSptot_5);
%%%SSreg
%%for i=1:n_5
%%  SSp_reg_5(i,1)=(Fn_5(i,1)-mediaYn_5)^2;
%%end
%%SSreg_= sum(SSp_reg_5);
%%%SSres
%%for i=1:n_5
%%  SSp_res_5(i,1)=(Yn_5(i,1)-Fn_5(i,1))^2;
%%end
%%SSres_5= sum(SSp_res_5);
%%%R² (general definition)
%%Rquad_5=1-(SSres_5/SStot_5);
%%%Norm of residuals
%%NormRes_5=(SSres_5)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP3
%%Fn_6=(Et_PLA90_CP3.*Def_LA_R90_T1L10CP3(8:41,1))+linear6; %Dados Y modelo
%%Yn_6=Tens_LA_R90_T1L10CP3(8:41,1); %Dados Y 'reais'
%%residuo_6=Yn_6-Fn_6;
%%mediaYn_6=mean(Yn_6); n_6=length(Yn_6);
%%%SStot
%%for i=1:n_6
%%  SSptot_6(i,1)=(Yn_6(i,1)-mediaYn_6)^2;
%%end
%%SStot_6= sum(SSptot_6);
%%%SSreg
%%for i=1:n_6
%%  SSp_reg_6(i,1)=(Fn_6(i,1)-mediaYn_6)^2;
%%end
%%SSreg_6= sum(SSp_reg_6);
%%%SSres
%%for i=1:n_6
%%  SSp_res_6(i,1)=(Yn_6(i,1)-Fn_6(i,1))^2;
%%end
%%SSres_6= sum(SSp_res_6);
%%%R² (general definition)
%%Rquad_6=1-(SSres_6/SStot_6);
%%%Norm of residuals
%%NormRes_6=(SSres_6)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP4
%%Fn_7=(Et_PLA90_CP4.*Def_LA_R90_T1L10CP4(9:46,1))+linear7; %Dados Y modelo
%%Yn_7=Tens_LA_R90_T1L10CP4(9:46,1); %Dados Y 'reais'
%%residuo_7=Yn_7-Fn_7;
%%mediaYn_7=mean(Yn_7); n_7=length(Yn_7);
%%%SStot
%%for i=1:n_7
%%  SSptot_7(i,1)=(Yn_7(i,1)-mediaYn_7)^2;
%%end
%%SStot_7= sum(SSptot_7);
%%%SSreg
%%for i=1:n_7
%%  SSp_reg_7(i,1)=(Fn_7(i,1)-mediaYn_7)^2;
%%end
%%SSreg_7= sum(SSp_reg_7);
%%%SSres
%%for i=1:n_7
%%  SSp_res_7(i,1)=(Yn_7(i,1)-Fn_7(i,1))^2;
%%end
%%SSres_7= sum(SSp_res_7);
%%%R² (general definition)
%%Rquad_7=1-(SSres_7/SStot_7);
%%%Norm of residuals
%%NormRes_7=(SSres_7)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%PVDF 45dg
%%%CP1
%%Fn_8=(Et_PVDF45_CP1.*Def_DF_R45_T1L10CP1(10:48,1))+linear8; %Dados Y modelo
%%Yn_8=Tens_DF_R45_T1L10CP1(10:48,1); %Dados Y 'reais'
%%residuo_8=Yn_8-Fn_8;
%%mediaYn_8=mean(Yn_8); n_8=length(Yn_8);
%%%SStot
%%for i=1:n_8
%%  SSptot_8(i,1)=(Yn_8(i,1)-mediaYn_8)^2;
%%end
%%SStot_8= sum(SSptot_8);
%%%SSreg
%%for i=1:n_8
%%  SSp_reg_8(i,1)=(Fn_8(i,1)-mediaYn_8)^2;
%%end
%%SSreg_8= sum(SSp_reg_8);
%%%SSres
%%for i=1:n_8
%%  SSp_res_8(i,1)=(Yn_8(i,1)-Fn_8(i,1))^2;
%%end
%%SSres_8= sum(SSp_res_8);
%%%R² (general definition)
%%Rquad_8=1-(SSres_8/SStot_8);
%%%Norm of residuals
%%NormRes_8=(SSres_8)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP2
%%Fn_9=(Et_PVDF45_CP2.*Def_DF_R45_T1L10CP2(9:50,1))+linear9; %Dados Y modelo
%%Yn_9=Tens_DF_R45_T1L10CP2(9:50,1); %Dados Y 'reais'
%%residuo_9=Yn_9-Fn_9;
%%mediaYn_9=mean(Yn_9); n_9=length(Yn_9);
%%%SStot
%%for i=1:n_9
%%  SSptot_9(i,1)=(Yn_9(i,1)-mediaYn_9)^2;
%%end
%%SStot_9= sum(SSptot_9);
%%%SSreg
%%for i=1:n_9
%%  SSp_reg_9(i,1)=(Fn_9(i,1)-mediaYn_9)^2;
%%end
%%SSreg_9= sum(SSp_reg_9);
%%%SSres
%%for i=1:n_9
%%  SSp_res_9(i,1)=(Yn_9(i,1)-Fn_9(i,1))^2;
%%end
%%SSres_9= sum(SSp_res_9);
%%%R² (general definition)
%%Rquad_9=1-(SSres_9/SStot_9);
%%%Norm of residuals
%%NormRes_9=(SSres_9)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP3
%%Fn_10=(Et_PVDF45_CP3.*Def_DF_R45_T1L10CP3(9:51,1))+linear10; %Dados Y modelo
%%Yn_10=Tens_DF_R45_T1L10CP3(9:51,1); %Dados Y 'reais'
%%residuo_10=Yn_10-Fn_10;
%%mediaYn_10=mean(Yn_10); n_10=length(Yn_10);
%%%SStot
%%for i=1:n_10
%%  SSptot_10(i,1)=(Yn_10(i,1)-mediaYn_10)^2;
%%end
%%SStot_10= sum(SSptot_10);
%%%SSreg
%%for i=1:n_10
%%  SSp_reg_10(i,1)=(Fn_10(i,1)-mediaYn_10)^2;
%%end
%%SSreg_10= sum(SSp_reg_10);
%%%SSres
%%for i=1:n_10
%%  SSp_res_10(i,1)=(Yn_10(i,1)-Fn_10(i,1))^2;
%%end
%%SSres_10= sum(SSp_res_10);
%%%R² (general definition)
%%Rquad_10=1-(SSres_10/SStot_10);
%%%Norm of residuals
%%NormRes_10=(SSres_10)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP4
%%Fn_11=(Et_PVDF45_CP4.*Def_DF_R45_T1L10CP4(10:52,1))+linear11; %Dados Y modelo
%%Yn_11=Tens_DF_R45_T1L10CP4(10:52,1); %Dados Y 'reais'
%%residuo_11=Yn_11-Fn_11;
%%mediaYn_11=mean(Yn_11); n_11=length(Yn_11);
%%%SStot
%%for i=1:n_11
%%  SSptot_11(i,1)=(Yn_11(i,1)-mediaYn_11)^2;
%%end
%%SStot_11= sum(SSptot_11);
%%%SSreg
%%for i=1:n_11
%%  SSp_reg_11(i,1)=(Fn_11(i,1)-mediaYn_11)^2;
%%end
%%SSreg_11= sum(SSp_reg_11);
%%%SSres
%%for i=1:n_11
%%  SSp_res_11(i,1)=(Yn_11(i,1)-Fn_11(i,1))^2;
%%end
%%SSres_11= sum(SSp_res_11);
%%%R² (general definition)
%%Rquad_11=1-(SSres_11/SStot_11);
%%%Norm of residuals
%%NormRes_11=(SSres_11)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%PVDF 90dg
%%%CP1
%%Fn_12=(Et_PVDF90_CP1.*Def_DF_R90_T1L10CP1(8:39,1))+linear12; %Dados Y modelo
%%Yn_12=Tens_DF_R90_T1L10CP1(8:39,1); %Dados Y 'reais'
%%residuo_12=Yn_12-Fn_12;
%%mediaYn_12=mean(Yn_12); n_12=length(Yn_12);
%%%SStot
%%for i=1:n_12
%%  SSptot_12(i,1)=(Yn_12(i,1)-mediaYn_12)^2;
%%end
%%SStot_12= sum(SSptot_12);
%%%SSreg
%%for i=1:n_12
%%  SSp_reg_12(i,1)=(Fn_12(i,1)-mediaYn_12)^2;
%%end
%%SSreg_12= sum(SSp_reg_12);
%%%SSres
%%for i=1:n_12
%%  SSp_res_12(i,1)=(Yn_12(i,1)-Fn_12(i,1))^2;
%%end
%%SSres_12= sum(SSp_res_12);
%%%R² (general definition)
%%Rquad_12=1-(SSres_12/SStot_12);
%%%Norm of residuals
%%NormRes_12=(SSres_12)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP2
%%Fn_13=(Et_PVDF90_CP2.*Def_DF_R90_T1L10CP2(7:37,1))+linear13; %Dados Y modelo
%%Yn_13=Tens_DF_R90_T1L10CP2(7:37,1); %Dados Y 'reais'
%%residuo_13=Yn_13-Fn_13;
%%mediaYn_13=mean(Yn_13); n_13=length(Yn_13);
%%%SStot
%%for i=1:n_13
%%  SSptot_13(i,1)=(Yn_13(i,1)-mediaYn_13)^2;
%%end
%%SStot_13= sum(SSptot_13);
%%%SSreg
%%for i=1:n_13
%%  SSp_reg_13(i,1)=(Fn_1(i,1)-mediaYn_13)^2;
%%end
%%SSreg_13= sum(SSp_reg_13);
%%%SSres
%%for i=1:n_13
%%  SSp_res_13(i,1)=(Yn_13(i,1)-Fn_13(i,1))^2;
%%end
%%SSres_13= sum(SSp_res_13);
%%%R² (general definition)
%%Rquad_13=1-(SSres_13/SStot_13);
%%%Norm of residuals
%%NormRes_13=(SSres_13)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP3
%%Fn_14=(Et_PVDF90_CP3.*Def_DF_R90_T1L10CP3(9:39,1))+linear14; %Dados Y modelo
%%Yn_14=Tens_DF_R90_T1L10CP3(9:39,1); %Dados Y 'reais'
%%residuo_14=Yn_14-Fn_14;
%%mediaYn_14=mean(Yn_14); n_14=length(Yn_14);
%%%SStot
%%for i=1:n_14
%%  SSptot_14(i,1)=(Yn_14(i,1)-mediaYn_14)^2;
%%end
%%SStot_14= sum(SSptot_14);
%%%SSreg
%%for i=1:n_14
%%  SSp_reg_14(i,1)=(Fn_14(i,1)-mediaYn_14)^2;
%%end
%%SSreg_14= sum(SSp_reg_14);
%%%SSres
%%for i=1:n_14
%%  SSp_res_14(i,1)=(Yn_14(i,1)-Fn_14(i,1))^2;
%%end
%%SSres_14= sum(SSp_res_14);
%%%R² (general definition)
%%Rquad_14=1-(SSres_14/SStot_14);
%%%Norm of residuals
%%NormRes_14=(SSres_14)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP4
%%Fn_15=(Et_PVDF90_CP4.*Def_DF_R90_T1L10CP4(8:40,1))+linear15; %Dados Y modelo
%%Yn_15=Tens_DF_R90_T1L10CP4(8:40,1); %Dados Y 'reais'
%%residuo_15=Yn_15-Fn_15;
%%mediaYn_15=mean(Yn_15); n_15=length(Yn_15);
%%%SStot
%%for i=1:n_15
%%  SSptot_15(i,1)=(Yn_15(i,1)-mediaYn_15)^2;
%%end
%%SStot_15= sum(SSptot_15);
%%%SSreg
%%for i=1:n_15
%%  SSp_reg_15(i,1)=(Fn_15(i,1)-mediaYn_15)^2;
%%end
%%SSreg_15= sum(SSp_reg_15);
%%%SSres
%%for i=1:n_15
%%  SSp_res_15(i,1)=(Yn_15(i,1)-Fn_15(i,1))^2;
%%end
%%SSres_15= sum(SSp_res_15);
%%%R² (general definition)
%%Rquad_15=1-(SSres_15/SStot_15);
%%%Norm of residuals
%%NormRes_15=(SSres_15)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP5
%%Fn_16=(Et_PVDF90_CP5.*Def_DF_R90_T1L10CP5(9:41,1))+linear16; %Dados Y modelo
%%Yn_16=Tens_DF_R90_T1L10CP5(9:41,1); %Dados Y 'reais'
%%residuo_16=Yn_16-Fn_16;
%%mediaYn_16=mean(Yn_16); n_16=length(Yn_16);
%%%SStot
%%for i=1:n_16
%%  SSptot_16(i,1)=(Yn_16(i,1)-mediaYn_16)^2;
%%end
%%SStot_16= sum(SSptot_16);
%%%SSreg
%%for i=1:n_16
%%  SSp_reg_16(i,1)=(Fn_16(i,1)-mediaYn_16)^2;
%%end
%%SSreg_16= sum(SSp_reg_16);
%%%SSres
%%for i=1:n_16
%%  SSp_res_16(i,1)=(Yn_16(i,1)-Fn_16(i,1))^2;
%%end
%%SSres_16= sum(SSp_res_16);
%%%R² (general definition)
%%Rquad_16=1-(SSres_16/SStot_16);
%%%Norm of residuals
%%NormRes_16=(SSres_16)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%Prensados
%%%%%%%%%%%%%%%%%%%%%%%%PLA
%%%CP1
%%Fn_17=(Et_PLA_CP1.*Def_LA_PrensCP1(3:14,1))+linear17; %Dados Y modelo
%%Yn_17=Tens_LA_PrensCP1(3:14,1); %Dados Y 'reais'
%%residuo_17=Yn_17-Fn_17;
%%mediaYn_17=mean(Yn_17); n_17=length(Yn_17);
%%%SStot
%%for i=1:n_17
%%  SSptot_17(i,1)=(Yn_17(i,1)-mediaYn_17)^2;
%%end
%%SStot_17= sum(SSptot_17);
%%%SSreg
%%for i=1:n_17
%%  SSp_reg_17(i,1)=(Fn_17(i,1)-mediaYn_17)^2;
%%end
%%SSreg_17= sum(SSp_reg_17);
%%%SSres
%%for i=1:n_17
%%  SSp_res_17(i,1)=(Yn_17(i,1)-Fn_17(i,1))^2;
%%end
%%SSres_17= sum(SSp_res_17);
%%%R² (general definition)
%%Rquad_17=1-(SSres_17/SStot_17);
%%%Norm of residuals
%%NormRes_17=(SSres_17)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP2
%%Fn_18=(Et_PLA_CP2.*Def_LA_PrensCP2(4:14,1))+linear18; %Dados Y modelo
%%Yn_18=Tens_LA_PrensCP2(4:14,1); %Dados Y 'reais'
%%residuo_18=Yn_18-Fn_18;
%%mediaYn_18=mean(Yn_18); n_18=length(Yn_18);
%%%SStot
%%for i=1:n_18
%%  SSptot_18(i,1)=(Yn_18(i,1)-mediaYn_18)^2;
%%end
%%SStot_18= sum(SSptot_18);
%%%SSreg
%%for i=1:n_18
%%  SSp_reg_18(i,1)=(Fn_18(i,1)-mediaYn_18)^2;
%%end
%%SSreg_18= sum(SSp_reg_18);
%%%SSres
%%for i=1:n_18
%%  SSp_res_18(i,1)=(Yn_18(i,1)-Fn_18(i,1))^2;
%%end
%%SSres_18= sum(SSp_res_18);
%%%R² (general definition)
%%Rquad_18=1-(SSres_18/SStot_18);
%%%Norm of residuals
%%NormRes_18=(SSres_18)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP3
%%Fn_19=(Et_PLA_CP3.*Def_LA_PrensCP3(4:14,1))+linear19; %Dados Y modelo
%%Yn_19=Tens_LA_PrensCP3(4:14,1); %Dados Y 'reais'
%%residuo_19=Yn_19-Fn_19;
%%mediaYn_19=mean(Yn_19); n_19=length(Yn_19);
%%%SStot
%%for i=1:n_19
%%  SSptot_19(i,1)=(Yn_19(i,1)-mediaYn_19)^2;
%%end
%%SStot_19= sum(SSptot_19);
%%%SSreg
%%for i=1:n_19
%%  SSp_reg_19(i,1)=(Fn_19(i,1)-mediaYn_19)^2;
%%end
%%SSreg_19= sum(SSp_reg_19);
%%%SSres
%%for i=1:n_19
%%  SSp_res_19(i,1)=(Yn_19(i,1)-Fn_19(i,1))^2;
%%end
%%SSres_19= sum(SSp_res_19);
%%%R² (general definition)
%%Rquad_19=1-(SSres_19/SStot_19);
%%%Norm of residuals
%%NormRes_19=(SSres_19)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP5
%%Fn_20=(Et_PLA_CP5.*Def_LA_PrensCP5(4:14,1))+linear20; %Dados Y modelo
%%Yn_20=Tens_LA_PrensCP5(4:14,1); %Dados Y 'reais'
%%residuo_20=Yn_20-Fn_20;
%%mediaYn_20=mean(Yn_20); n_20=length(Yn_20);
%%%SStot
%%for i=1:n_20
%%  SSptot_20(i,1)=(Yn_20(i,1)-mediaYn_20)^2;
%%end
%%SStot_20= sum(SSptot_20);
%%%SSreg
%%for i=1:n_20
%%  SSp_reg_20(i,1)=(Fn_20(i,1)-mediaYn_20)^2;
%%end
%%SSreg_20= sum(SSp_reg_20);
%%%SSres
%%for i=1:n_20
%%  SSp_res_20(i,1)=(Yn_20(i,1)-Fn_20(i,1))^2;
%%end
%%SSres_20= sum(SSp_res_20);
%%%R² (general definition)
%%Rquad_20=1-(SSres_20/SStot_20);
%%%Norm of residuals
%%NormRes_20=(SSres_20)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP7
%%Fn_21=(Et_PLA_CP7.*Def_LA_PrensCP7(5:22,1))+linear21; %Dados Y modelo
%%Yn_21=Tens_LA_PrensCP7(5:22,1); %Dados Y 'reais'
%%residuo_21=Yn_21-Fn_21;
%%mediaYn_21=mean(Yn_21); n_21=length(Yn_21);
%%%SStot
%%for i=1:n_21
%%  SSptot_21(i,1)=(Yn_21(i,1)-mediaYn_21)^2;
%%end
%%SStot_21= sum(SSptot_21);
%%%SSreg
%%for i=1:n_21
%%  SSp_reg_21(i,1)=(Fn_21(i,1)-mediaYn_21)^2;
%%end
%%SSreg_21= sum(SSp_reg_21);
%%%SSres
%%for i=1:n_21
%%  SSp_res_21(i,1)=(Yn_21(i,1)-Fn_21(i,1))^2;
%%end
%%SSres_21= sum(SSp_res_21);
%%%R² (general definition)
%%Rquad_21=1-(SSres_21/SStot_21);
%%%Norm of residuals
%%NormRes_21=(SSres_21)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%PVDF
%%%CP1
%%Fn_22=(Et_PVDF_CP1.*Def_DF_PrensCP1(3:12,1))+linear22; %Dados Y modelo
%%Yn_22=Tens_DF_PrensCP1(3:12,1); %Dados Y 'reais'
%%residuo_22=Yn_22-Fn_22;
%%mediaYn_22=mean(Yn_22); n_22=length(Yn_22);
%%%SStot
%%for i=1:n_22
%%  SSptot_22(i,1)=(Yn_22(i,1)-mediaYn_22)^2;
%%end
%%SStot_22= sum(SSptot_22);
%%%SSreg
%%for i=1:n_22
%%  SSp_reg_22(i,1)=(Fn_22(i,1)-mediaYn_22)^2;
%%end
%%SSreg_22= sum(SSp_reg_22);
%%%SSres
%%for i=1:n_22
%%  SSp_res_22(i,1)=(Yn_22(i,1)-Fn_22(i,1))^2;
%%end
%%SSres_22= sum(SSp_res_22);
%%%R² (general definition)
%%Rquad_22=1-(SSres_22/SStot_22);
%%%Norm of residuals
%%NormRes_22=(SSres_22)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP2
%%Fn_23=(Et_PVDF_CP2.*Def_DF_PrensCP2(3:13,1))+linear23; %Dados Y modelo
%%Yn_23=Tens_DF_PrensCP2(3:13,1); %Dados Y 'reais'
%%residuo_23=Yn_23-Fn_23;
%%mediaYn_23=mean(Yn_23); n_23=length(Yn_23);
%%%SStot
%%for i=1:n_23
%%  SSptot_23(i,1)=(Yn_23(i,1)-mediaYn_23)^2;
%%end
%%SStot_23= sum(SSptot_23);
%%%SSreg
%%for i=1:n_23
%%  SSp_reg_23(i,1)=(Fn_23(i,1)-mediaYn_23)^2;
%%end
%%SSreg_23= sum(SSp_reg_23);
%%%SSres
%%for i=1:n_23
%%  SSp_res_23(i,1)=(Yn_23(i,1)-Fn_23(i,1))^2;
%%end
%%SSres_23= sum(SSp_res_23);
%%%R² (general definition)
%%Rquad_23=1-(SSres_23/SStot_23);
%%%Norm of residuals
%%NormRes_23=(SSres_23)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP3
%%Fn_24=(Et_PVDF_CP3.*Def_DF_PrensCP3(3:11,1))+linear24; %Dados Y modelo
%%Yn_24=Tens_DF_PrensCP3(3:11,1); %Dados Y 'reais'
%%residuo_24=Yn_24-Fn_24;
%%mediaYn_24=mean(Yn_24); n_24=length(Yn_24);
%%%SStot
%%for i=1:n_24
%%  SSptot_24(i,1)=(Yn_24(i,1)-mediaYn_24)^2;
%%end
%%SStot_24= sum(SSptot_24);
%%%SSreg
%%for i=1:n_24
%%  SSp_reg_24(i,1)=(Fn_24(i,1)-mediaYn_24)^2;
%%end
%%SSreg_24= sum(SSp_reg_24);
%%%SSres
%%for i=1:n_24
%%  SSp_res_24(i,1)=(Yn_24(i,1)-Fn_24(i,1))^2;
%%end
%%SSres_24= sum(SSp_res_24);
%%%R² (general definition)
%%Rquad_24=1-(SSres_24/SStot_24);
%%%Norm of residuals
%%NormRes_24=(SSres_24)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP4
%%Fn_25=(Et_PVDF_CP4.*Def_DF_PrensCP4(3:12,1))+linear25; %Dados Y modelo
%%Yn_25=Tens_DF_PrensCP4(3:12,1); %Dados Y 'reais'
%%residuo_25=Yn_25-Fn_25;
%%mediaYn_25=mean(Yn_25); n_25=length(Yn_25);
%%%SStot
%%for i=1:n_25
%%  SSptot_25(i,1)=(Yn_25(i,1)-mediaYn_25)^2;
%%end
%%SStot_25= sum(SSptot_25);
%%%SSreg
%%for i=1:n_25
%%  SSp_reg_25(i,1)=(Fn_25(i,1)-mediaYn_25)^2;
%%end
%%SSreg_25= sum(SSp_reg_25);
%%%SSres
%%for i=1:n_25
%%  SSp_res_25(i,1)=(Yn_25(i,1)-Fn_25(i,1))^2;
%%end
%%SSres_25= sum(SSp_res_25);
%%%R² (general definition)
%%Rquad_25=1-(SSres_25/SStot_25);
%%%Norm of residuals
%%NormRes_25=(SSres_25)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%CP5
%%Fn_26=(Et_PVDF_CP5.*Def_DF_PrensCP5(5:22,1))+linear26; %Dados Y modelo
%%Yn_26=Tens_DF_PrensCP5(5:22,1); %Dados Y 'reais'
%%residuo_26=Yn_26-Fn_26;
%%mediaYn_26=mean(Yn_26); n_26=length(Yn_26);
%%%SStot
%%for i=1:n_26
%%  SSptot_26(i,1)=(Yn_26(i,1)-mediaYn_26)^2;
%%end
%%SStot_26= sum(SSptot_26);
%%%SSreg
%%for i=1:n_26
%%  SSp_reg_26(i,1)=(Fn_26(i,1)-mediaYn_26)^2;
%%end
%%SSreg_26= sum(SSp_reg_26);
%%%SSres
%%for i=1:n_26
%%  SSp_res_26(i,1)=(Yn_26(i,1)-Fn_26(i,1))^2;
%%end
%%SSres_26= sum(SSp_res_26);
%%%R² (general definition)
%%Rquad_26=1-(SSres_26/SStot_26);
%%%Norm of residuals
%%NormRes_26=(SSres_26)^(0.5);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Outputs R²
%%Rotulos_Rdois={'PLA45_CP5';'PLA45_CP6';'PLA45_CP7';'____________';'PLA90_CP1';'PLA90_CP2';'PLA90_CP3';'PLA90_CP4';'____________';'PVDF45_CP1';'PVDF45_CP2';'PVDF45_CP3';'PVDF45_CP4';'____________';'PVDF90_CP1';'PVDF90_CP2';'PVDF90_CP3';'PVDF90_CP4';'PVDF90_CP5';'____________';'PLA_CP1';'PLA_CP2';'PLA_CP3';'PLA_CP5';'PLA_CP7';'____________';'PVDF_CP1';'PVDF_CP2';'PVDF_CP3';'PVDF_CP4';'PVDF_CP5'};
%%Rquads=[Rquad_1;Rquad_2;Rquad_3;0;Rquad_4;Rquad_5;Rquad_6;Rquad_7;0;Rquad_8;Rquad_9;Rquad_10;Rquad_11;0;Rquad_12;Rquad_13;Rquad_14;Rquad_15;Rquad_16;0;Rquad_17;Rquad_18;Rquad_19;Rquad_20;Rquad_21;0;Rquad_22;Rquad_23;Rquad_24;Rquad_25;Rquad_26];
%%NormsRes=[NormRes_1;NormRes_2;NormRes_3;0;NormRes_4;NormRes_5;NormRes_6;NormRes_7;0;NormRes_8;NormRes_9;NormRes_10;NormRes_11;0;NormRes_12;NormRes_13;NormRes_14;NormRes_15;NormRes_16;0;NormRes_17;NormRes_18;NormRes_19;NormRes_20;NormRes_21;0;NormRes_22;NormRes_23;NormRes_24;NormRes_25;NormRes_26];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Output_Numeros=[Et_PLA45_CP5;Et_PLA45_CP6;Et_PLA45_CP7;0;Et_PLA90_CP1;Et_PLA90_CP2;Et_PLA90_CP3;Et_PLA90_CP4;0;Et_PVDF45_CP1;Et_PVDF45_CP2;Et_PVDF45_CP3;Et_PVDF45_CP4;0;Et_PVDF90_CP1;Et_PVDF90_CP2;Et_PVDF90_CP3;Et_PVDF90_CP4;Et_PVDF90_CP5;0;Et_PLA_CP1;Et_PLA_CP2;Et_PLA_CP3;Et_PLA_CP5;Et_PLA_CP7;0;Et_PVDF_CP1;Et_PVDF_CP2;Et_PVDF_CP3;Et_PVDF_CP4;Et_PVDF_CP5];
%%%
%%Output_Rotulos={'Et_PLA45_CP5';'Et_PLA45_CP6';'Et_PLA45_CP7';'____________';'Et_PLA90_CP1';'Et_PLA90_CP2';'Et_PLA90_CP3';'Et_PLA90_CP4';'____________';'Et_PVDF45_CP1';'Et_PVDF45_CP2';'Et_PVDF45_CP3';'Et_PVDF45_CP4';'____________';'Et_PVDF90_CP1';'Et_PVDF90_CP2';'Et_PVDF90_CP3';'Et_PVDF90_CP4';'Et_PVDF90_CP5';'____________';'Et_PLA_CP1';'Et_PLA_CP2';'Et_PLA_CP3';'Et_PLA_CP5';'Et_PLA_CP7';'____________';'Et_PVDF_CP1';'Et_PVDF_CP2';'Et_PVDF_CP3';'Et_PVDF_CP4';'Et_PVDF_CP5'};
%%%
%%
%%%
%%Output_Rotulos2={'Et_PLA45';'Et_PLA90';'Et_PVDF45';'Et_PVDF90';'Et_PLA';'Et_PVDF'};
%%Output_Medias=[mediaEt_PLA45;mediaEt_PLA90;mediaEt_PVDF45;mediaEt_PVDF90;mediaEt_PLA;mediaEt_PVDF];
%%Output_DesvP=[desvpEt_PLA45;desvpEt_PLA90;desvpEt_PVDF45;desvpEt_PVDF90;desvpEt_PLA;desvpEt_PVDF];
%%Output_DPRel=Output_DesvP./Output_Medias;
%%Cabecalho1={'Identificacao';'Setups'};
%%Cabecalho2={'Modulo Et (MPa)';'Media Aritmedica'};
%%Cabecalho3={'Desvio Padrao - Octave';'(MPa)'};
%%Cabecalho4={'DesvPad Relativo - Octave';'(%)'};
%%Cabecalho5={'Identificacao';'CPs'};
%%Cabecalho6={'Modulo Et';'MPa'};
%%Cabecalho7={'Desvio Padrao - Excel';'(MPa)'};
%%Cabecalho8={'DesvPad Relativo - Excel';'(%)'};
%%
%%Cabecalho9={'R2 - Octave'};
%%Cabecalho10={'R2 - Excel'};
%%Cabecalho11={'Norma dos Residuos - Octave'};
%%Cabecalho12={'Norma dos Residuos - Excel'};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Salvando Outputs na Planilha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%status = xlswrite ('Teste_teste.xlsx', Output_Et, 'Testando_outputs_sheet','A2:B33')
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho1, 'Media_DesvPad','B2:B3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho2, 'Media_DesvPad','C2:C3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho3, 'Media_DesvPad','D2:D3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho7, 'Media_DesvPad','E2:E3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho4, 'Media_DesvPad','F2:F3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho8, 'Media_DesvPad','G2:G3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Output_Rotulos2, 'Media_DesvPad','B4:B9');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Output_Medias, 'Media_DesvPad','C4:C9');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Output_DesvP, 'Media_DesvPad','D4:D9');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Output_DPRel, 'Media_DesvPad','F4:F9');
%%
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho5, 'Et_R2_NormRes','B2:B3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho6, 'Et_R2_NormRes','C2:C3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Output_Rotulos, 'Et_R2_NormRes','B4:B34');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Output_Numeros, 'Et_R2_NormRes','C4:C34');
%%
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho5, 'Et_R2_NormRes','E2:E3');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Rotulos_Rdois, 'Et_R2_NormRes','E4:E34');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho9, 'Et_R2_NormRes','F2');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho10, 'Et_R2_NormRes','G2');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho11, 'Et_R2_NormRes','H2');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Cabecalho12, 'Et_R2_NormRes','I2');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',Rquads, 'Et_R2_NormRes','F4:F34');
%%escrever1=xlswrite('Octave_Et_Calc.xlsx',NormsRes, 'Et_R2_NormRes','H4:H34');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ponto de Ruptura %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Impressos
%%%%PLA 45dg
%CP5
%%X1=[Def_LA_R45_T1L10CP5(9:47,1) ones(39,1)];
%%Y1=Tens_LA_R45_T1L10CP5(9:47,1);
%%c1=(X1'*X1)\(X1'*Y1);
%%Et_PLA45_CP5=c1(1,1); %ang1
%%linear1=c1(2,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Grafico %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Def_LA_R45_T1L10CP5
%Def_LA_R90_T1L10CP4
%Def_DF_R45_T1L10CP4
%Def_DF_R90_T1L10CP1
%Def_LA_PrensCP1
%Def_DF_PrensCP2


%%Graficos Isolados plot(x,y,’[colour][linestyle][marker]’, ’linewidth’, [n])
%https://www.rapidtables.com/web/color/RGB_Color.html dark blue = (0,0,139)./255 = [0 0 0.54]
%https://octave.org/doc/v4.0.1/Axis-Configuration.html#XREFxlim
%https://octave.org/doc/v4.0.1/Use-of-the-interpreter-Property.html#Use-of-the-interpreter-Property - usar codigo latex pra texto do plot
%https://octave.org/doc/v4.0.1/Plot-Annotations.html#Plot-Annotations - criar anotacoes no plot

clf reset %limpa a janela de graficos

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Graf_PLA_45dg%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Graf_PLA_45dg = figure();
set (Graf_PLA_45dg,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
Graf_PLA_45dg = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
plot(Def_LA_R45_T1L10CP5,Tens_LA_R45_T1L10CP5,'color',[1 0.27 0],'linewidth',2);hold on
plot(Def_LA_R45_T1L10CP6,Tens_LA_R45_T1L10CP6,'color',[1 0.65 0],'linewidth',2);hold on
plot(Def_LA_R45_T1L10CP7,Tens_LA_R45_T1L10CP7,'color',[1 0.90 0],'linewidth',2);hold on
title('PLA Impresso 45\deg','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
grid on; grid minor on;
xlabel('\epsilon (mm/mm)','fontsize',12,'fontweight',"bold");
ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n");
%
%%legend ('PLA 45\deg CP5','PLA 45\deg CP6','PLA 45\deg CP7','location','northeast');
legend ('CP5','CP6','CP7','location','northeast');
%
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PLA_45dg,'-dpng','-color','-FHelvetica','Graf_PLA_45dg.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Graf_PLA_90dg%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Graf_PLA_90dg = figure();
set (Graf_PLA_90dg,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
Graf_PLA_90dg = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
plot(Def_LA_R90_T1L10CP1,Tens_LA_R90_T1L10CP1,'color',[0.1 0.05 0],'linewidth',2);hold on
plot(Def_LA_R90_T1L10CP2,Tens_LA_R90_T1L10CP2,'color',[1 0.27 0],'linewidth',2);hold on
%%plot(Def_LA_R90_T1L10CP3,Tens_LA_R90_T1L10CP3,'color',[1 0.65 0],'linewidth',2);hold on
plot(Def_LA_R90_T1L10CP4,Tens_LA_R90_T1L10CP4,'color',[1 0.80 0],'linewidth',2);hold on
title('PLA Impresso 90\deg','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
grid on; grid minor on;
xlabel('\epsilon (mm/mm)','fontsize',12,'fontweight',"bold");
ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n")
%
legend ('CP1','CP2','CP4','location','northeast');
%
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PLA_90dg,'-dpng','-color','-FHelvetica','Graf_PLA_90dg.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Graf_PVDF_45dg%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Graf_PVDF_45dg = figure();
set (Graf_PVDF_45dg,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
Graf_PVDF_45dg = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
%%plot(Def_DF_R45_T1L10CP1,Tens_DF_R45_T1L10CP1,'color',[0.1 0.05 1],'linewidth',2);hold on
plot(Def_DF_R45_T1L10CP2,Tens_DF_R45_T1L10CP2,'color',[0.27 0 1],'linewidth',2);hold on
plot(Def_DF_R45_T1L10CP3,Tens_DF_R45_T1L10CP3,'color',[0.65 0 1],'linewidth',2);hold on
plot(Def_DF_R45_T1L10CP4,Tens_DF_R45_T1L10CP4,'color',[0.80 0 1],'linewidth',2);hold on
title('PVDF Impresso 45\deg','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
grid on; grid minor on;
xlabel('\epsilon (mm/mm)','fontsize',12,'fontweight',"bold");
ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n")
%
legend ('CP2','CP3','CP4','location','northeast');
%
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PVDF_45dg,'-dpng','-color','-FHelvetica','Graf_PVDF_45dg.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Graf_PVDF_90dg%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Graf_PVDF_90dg = figure();
set (Graf_PVDF_90dg,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
Graf_PVDF_90dg = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
%%plot(Def_DF_R90_T1L10CP1,Tens_DF_R90_T1L10CP1,'color',[0.1 0.05 1],'linewidth',2);hold on
%%plot(Def_DF_R90_T1L10CP2,Tens_DF_R90_T1L10CP2,'color',[0.27 0 1],'linewidth',2);hold on
plot(Def_DF_R90_T1L10CP3,Tens_DF_R90_T1L10CP3,'color',[0.65 0 1],'linewidth',2);hold on
plot(Def_DF_R90_T1L10CP4,Tens_DF_R90_T1L10CP4,'color',[0.80 0 1],'linewidth',2);hold on
plot(Def_DF_R90_T1L10CP5,Tens_DF_R90_T1L10CP5,'color',[1 0.25 1],'linewidth',2);hold on
title('PVDF Impresso 90\deg','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
grid on; grid minor on;
xlabel('\epsilon (mm/mm)','fontsize',12,'fontweight',"bold");
ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n")
%
legend ('CP3','CP4','CP5','location','northeast');
%
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PVDF_90dg,'-dpng','-color','-FHelvetica','Graf_PVDF_90dg.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Graf_PVDF_Pren%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Graf_PVDF_Pren = figure();
set (Graf_PVDF_Pren,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
Graf_PVDF_Pren = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
plot(Def_DF_PrensCP1,Tens_DF_PrensCP1,'color',[0.1 0.05 1],'linewidth',2);hold on
%%plot(Def_DF_PrensCP2,Tens_DF_PrensCP2,'color',[0.27 0 1],'linewidth',2);hold on
plot(Def_DF_PrensCP3,Tens_DF_PrensCP3,'color',[0.65 0 1],'linewidth',2);hold on
plot(Def_DF_PrensCP4,Tens_DF_PrensCP4,'color',[0.80 0 1],'linewidth',2);hold on
%%plot(Def_DF_PrensCP5,Tens_DF_PrensCP5,'color',[1 0.25 1],'linewidth',2);hold on
legend ('CP1','CP3','CP4','location','northeast');

title('PVDF Prensado','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
grid on; grid minor on;
xlabel('\epsilon (mm/mm)','fontsize',12,'fontweight',"bold");
ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n")
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PVDF_Pren,'-dpng','-color','-FHelvetica','Graf_PVDF_Pren.png');


title('PVDF Prensado','fontsize',16,'fontweight',"bold");axis([0 1.5 0 50]);
grid on; grid minor on;
xtick = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.2 1.3 1.4 1.5]; xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n");
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PVDF_Pren,'-dpng','-color','-FHelvetica','Graf_PVDF_Pren_escala.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Graf_PLA_Prens%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Graf_PLA_Pren = figure();
set (Graf_PLA_Pren,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
Graf_PLA_Pren = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
plot(Def_LA_PrensCP1,Tens_LA_PrensCP1,'color',[1 0.05 0],'linewidth',2);hold on
%%plot(Def_LA_PrensCP2,Tens_LA_PrensCP2,'color',[1 0.20 0],'linewidth',2);hold on
%%plot(Def_LA_PrensCP3,Tens_LA_PrensCP3,'color',[1 0.45 0],'linewidth',2);hold on
%%plot(Def_LA_PrensCP4,Tens_LA_PrensCP4,'color',[1 0.65 0],'linewidth',2);hold on
plot(Def_LA_PrensCP5,Tens_LA_PrensCP5,'color',[1 0.85 0],'linewidth',2);hold on
plot(Def_LA_PrensCP7,Tens_LA_PrensCP7,'color',[1 1 0],'linewidth',2);hold on
legend ('CP1','CP5','CP7','location','northeast');

title('PLA Prensado','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
grid on; grid minor on;
xlabel('\epsilon (mm/mm)','fontsize',12,'fontweight',"bold");
ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
xticklabel = strsplit (sprintf ("%d\n", (1*xtick)), "\n")
set (gca, "xtick", xtick, "xticklabel", xticklabel);
print(Graf_PLA_Pren,'-dpng','-color','-FHelvetica','Graf_PLA_Pren.png');
%%A = figure();
%%set (A,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
%%A = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
%%plot(Def_LA_R45_T1L10CP5,Tens_LA_R45_T1L10CP5,'color',[1 0.27 0],'linewidth',2);hold on
%%plot(Def_LA_R90_T1L10CP4,Tens_LA_R90_T1L10CP4,'color',[1 0.65 0],'linewidth',2);hold on
%%plot(Def_DF_R45_T1L10CP4(1:end-2),Tens_DF_R45_T1L10CP4(1:end-2),'color',[0 0 1],'linewidth',2);hold on
%%plot(Def_DF_R90_T1L10CP1(1:end-2),Tens_DF_R90_T1L10CP1(1:end-2),'color',[0 0.44 0.89],'linewidth',2);hold on
%%plot(Def_LA_PrensCP1,Tens_LA_PrensCP1,'color',[0.7 0 0],'linewidth',2);hold on
%%plot(Def_DF_PrensCP2(1:350),Tens_DF_PrensCP2(1:350),'color',[0 0 0.35],'linewidth',2);hold on
%%plot(Def_DF_PrensCP2(350:end),Tens_DF_PrensCP2(350:end),'-.','color',[0 0 0.35],'linewidth',2);
%%title('Tensão x Deformação - Engenharia','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
%%grid on; grid minor on;
%%xlabel('\epsilon (%)','fontsize',12,'fontweight',"bold");
%%ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
%%xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
%%xticklabel = strsplit (sprintf ("%d%%\n", (100*xtick)), "\n");
%%%
%%annotation('textarrow',[0.27 0.245], [0.865 0.8],'string','PLA Prensado','linewidth',1,'fontsize',16);
%%legend ('PLA Prensado','PLA R45','PLA R45','PLA R45','location','northeast');
%%%
%%set (gca, "xtick", xtick, "xticklabel", xticklabel);
%%print(A,'-dpng','-color','-FHelvetica','TensXdef.png');


%%%B = figure();
%%%set (B,'paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
%B = figure('paperunits','centimeters','PaperOrientation','portrait','papersize',[21 21],'PaperPosition',[0,0,21,21],'defaultaxesfontsize', 10);
%abx=linspace(0,0.02,150);
%plot(Def_LA_R45_T1L10CP5,Tens_LA_R45_T1L10CP5,'color',[1 0.27 0],'linewidth',2);hold on
%plot(abx(1:end-46),((Et_PLA45_CP5*abx)+linear1)(1:end-46),':','color',[1 0.27 0],'linewidth',1.5);hold on
%
%plot(Def_LA_R90_T1L10CP4,Tens_LA_R90_T1L10CP4,'color',[1 0.65 0],'linewidth',2);hold on
%plot(abx(1:end-47),((Et_PLA90_CP4*abx)+linear7)(1:end-47),':','color',[1 0.65 0],'linewidth',1.5);hold on
%
%plot(Def_DF_R45_T1L10CP4(1:end-2),Tens_DF_R45_T1L10CP4(1:end-2),'color',[0 0 1],'linewidth',2);hold on
%plot(abx,((Et_PVDF45_CP4*abx)+linear11),'--','color',[0 0 1],'linewidth',1.5);hold on
%
%plot(Def_DF_R90_T1L10CP1(1:end-2),Tens_DF_R90_T1L10CP1(1:end-2),'color',[0 0.44 0.89],'linewidth',2);hold on
%plot(abx,((Et_PVDF90_CP1*abx)+linear12),'--','color',[0 0.44 0.89],'linewidth',1.5);hold on
%
%plot(Def_LA_PrensCP1,Tens_LA_PrensCP1,'color',[0.7 0 0],'linewidth',2);hold on
%plot(abx,((Et_PLA_CP1*abx)+linear17),':','color',[0.7 0 0],'linewidth',1.5);hold on
%
%plot(Def_DF_PrensCP2(1:350),Tens_DF_PrensCP2(1:350),'color',[0 0 0.35],'linewidth',2);hold on
%plot(Def_DF_PrensCP2(350:end),Tens_DF_PrensCP2(350:end),'-.','color',[0 0 0.35],'linewidth',2);hold on
%plot(abx,((Et_PVDF_CP2*abx)+linear23),'--','color',[0 0 0.35],'linewidth',1.5);
%
%title('Tensão x Deformação - Engenharia','fontsize',16,'fontweight',"bold");axis([0 0.124 0 50]);
%grid on; grid minor on;
%xlabel('\epsilon (%)','fontsize',12,'fontweight',"bold");
%ylabel('\sigma (MPa)','fontsize',12,'fontweight',"bold");
%xtick = [0 0.02 0.04 0.06 0.08 0.10 0.12];
%xticklabel = strsplit (sprintf ("%d%%\n", (100*xtick)), "\n");
%set (gca, "xtick", xtick, "xticklabel", xticklabel);
%%print(B,'-dpng','-color','-FHelvetica','TensXdef_Et.png');
%
%
%
%
