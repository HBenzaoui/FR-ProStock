unit UReglementFList;

interface

uses
  Winapi.Windows,DateUtils, DBGridEhImpExp,ShellAPI,
  EhLibFireDAC,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, acImage, Vcl.Menus, sStatusBar, Vcl.AppEvnts, frxExportBaseDialog;

type
  TReglementFListF = class(TForm)
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchRegFEdt: TSearchBox;
    Panel2: TPanel;
    DateEndRegFD: TDateTimePicker;
    DateStartRegFD: TDateTimePicker;
    ResherchRegFNumBRdioBtn: TRadioButton;
    ResherchRegFFourRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    RegFListDataS: TDataSource;
    BARecListDBGridEh: TDBGridEh;
    RegFListfrxRprt: TfrxReport;
    frxRegFListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    LastBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
    FilterBVLivBtn: TAdvToolButton;
    sImage2: TsImage;
    sImage1: TsImage;
    FilterBVLivPMenu: TPopupMenu;
    F1: TMenuItem;
    ValideFilterBVLivPMenu: TMenuItem;
    NotValideFilterBVLivPMenu: TMenuItem;
    V1: TMenuItem;
    N2: TMenuItem;
    ClearValideFilterBVLivPMenu: TMenuItem;
    F2: TMenuItem;
    EspeceMPFilterBVLivPMenu: TMenuItem;
    ChequeMPFilterBVLivPMenu: TMenuItem;
    ATermeMPFilterBVLivPMenu: TMenuItem;
    VirmentMPFilterBVLivPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVLivPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    StatuBar: TsStatusBar;
    SumGirdProduitBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel5: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel6: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ProduitListSaveDg: TSaveDialog;
    RglementFournisseur1: TMenuItem;
    PopupMenu1: TPopupMenu;
    P1: TMenuItem;
    P2: TMenuItem;
    ReglementFfrxRprt: TfrxReport;
    procedure AddBARecBtnClick(Sender: TObject);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure ResearchRegFEdtChange(Sender: TObject);
    procedure DateStartRegFDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure BARecListDBGridEhDblClick(Sender: TObject);
    procedure BARecListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BARecListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ATermeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure VirmentMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure SumGirdProduitBtnClick(Sender: TObject);
    procedure ResearchRegFEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BARecListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure ResearchRegFEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure RglementFournisseur1Click(Sender: TObject);
    procedure BARecListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
  private
    procedure GettingData;
    procedure GettingDataRecuPai;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    procedure Select_ALL;
    procedure Select_BR;
    procedure Select_CTR;
    procedure Select_FacA;
    procedure Select_MP_ATerme;
    procedure Select_MP_Cheque;
    procedure Select_MP_Escpace;
    procedure Select_MP_Virment;
    procedure Select_RF;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReglementFListF: TReglementFListF;

implementation

uses   Winapi.MMSystem,Threading,Vcl.Imaging.jpeg,StringTool,
  UReglementFGestion, UMainF, UBonRec, UBonFacA, UBonRecGestion,
  USplashVersement, USplashAddUnite, USplash, UComptoir;

{$R *.dfm}





//-------------Filtring procedures-----------------//

procedure TReglementFListF.Select_ALL;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;


procedure TReglementFListF.Select_BR;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_barec <> ''0'' AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;


procedure TReglementFListF.Select_CTR;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_bvctr <> ''0'' AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;


procedure TReglementFListF.Select_RF;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE bon_or_no_rf = ''1'' AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;


procedure TReglementFListF.Select_FacA;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_bafac <> ''0'' AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;


procedure TReglementFListF.Select_MP_Escpace;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_mdpai = 1 AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.Select_MP_Cheque;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_mdpai = 2 AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.Select_MP_ATerme;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_mdpai = 3 AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.Select_MP_Virment;
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE code_mdpai = 4 AND date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;



procedure TReglementFListF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TReglementFListF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;


procedure TReglementFListF.AddBARecBtnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

  ResearchRegFEdt.Text:='';

            ReglementFGestionF:=TReglementFGestionF.Create(ReglementFListF);

      MainForm.RegfournisseurTable.DisableControls;
      MainForm.RegfournisseurTable.Last;
      ReglementFGestionF.NumRegFGEdt.Caption:=
      'RF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger) + 1)]);
      MainForm.RegfournisseurTable.EnableControls;


     //       ClientGestionF.BringToFront;
            ReglementFGestionF.Left:=  (Screen.Width div 2 ) - (ReglementFGestionF.Width div 2)    ;
            ReglementFGestionF.Top:=   (Screen.Height div 2) - (ReglementFGestionF.Height div 2)    ;
        //    MainForm.Align:= alClient;
         //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
            ReglementFGestionF.Show;
            ReglementFGestionF.FournisseurRegFGCbx.SetFocus;
            ReglementFGestionF.OKRegFGBtn.Tag:= 0 ;
            
end;

procedure TReglementFListF.EditBARecBtnClick(Sender: TObject);
var
 CodeF: Integer;
 begin
 if MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger = 1 then

 begin
  ReglementFGestionF := TReglementFGestionF.Create(ReglementFListF);

    if Assigned(ReglementFListF) then
    begin
    ResearchRegFEdt.Text:='';
    end;


   if NOT (MainForm.RegfournisseurTable.IsEmpty) Then
   begin

       ReglementFGestionF.NumRegFGEdt.Caption := MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString;
       ReglementFGestionF.DateRegFGD.Date:= MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime;
       ReglementFGestionF.ObserRegFGMem.Lines.Text := MainForm.RegfournisseurTable.FieldByName('obser_rf').AsString;
       if (MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger<> null) and (MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger<> 0) then
       begin
       CodeF:=MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger;
       ReglementFGestionF.FournisseurRegFGCbx.Text:= MainForm.RegfournisseurTable.FieldByName('FourRF').AsWideString;
         MainForm.SQLQuery.Active:=false;
         MainForm.SQLQuery.SQL.Clear;
         MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur WHERE code_f ='+(IntToStr( CodeF ) ) ;
         MainForm.SQLQuery.Active:=True;
         ReglementFGestionF.RegFGFourOLDCredit.Caption:= CurrToStrF(MainForm.SQLQuery.FieldByName('oldcredit_f').AsFloat,ffNumber,2);
         MainForm.SQLQuery.Active:=false;
         MainForm.SQLQuery.SQL.Clear;
//         MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur ' ;
//         MainForm.SQLQuery.Active:=True;
        end;

       if (MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger<> null ) AND (MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger<> 0) then
       begin
       CodeF:=MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         ReglementFGestionF.ModePaieRegFGCbx.Text:= MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger<> null) AND (MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger<> 0) then
       begin
       CodeF:=MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger;
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         ReglementFGestionF.CompteRegFGCbx.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString<> null then
       begin
        ReglementFGestionF.NChequeRegFGCbx.Text:= MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString;
       end;


    ReglementFGestionF.VerRegFGEdt.Text :=      CurrToStrF(MainForm.RegfournisseurTable.FieldByName('montver_rf').AsFloat, ffNumber, 2);


            ReglementFGestionF.Left:=  (Screen.Width div 2 ) - (ReglementFGestionF.Width div 2)    ;
            ReglementFGestionF.Top:=   (Screen.Height div 2) - (ReglementFGestionF.Height div 2)    ;

      ReglementFGestionF.Tag:= 1;
      ReglementFGestionF.Show;




     end;






 end;

  {

if MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf'] = 2 then
 begin
//        MainForm.Bona_recPlistTable.Active:= False;
//     MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
//
//    CodeREG:=  MainForm.RegfournisseurTable.FieldValues['code_barec'];
//
//    MainForm.Bona_recTable.DisableControls;
//    MainForm.Bona_recTable.Active:= False;
//    MainForm.Bona_recTable.SQL.clear;
//    mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE code_barec = '+ IntToStr(CodeREG) ;
//    MainForm.Bona_recTable.Active:= True;
//    CodeBREC:= MainForm.Bona_recTable.FieldValues['code_barec'];
//
//            MainForm.Bona_recPlistTable.Active:= False;
//  MainForm.Bona_recPlistTable.SQL.clear;
//  mainform.Bona_recPlistTable.sql.Text:='SELECT * FROM bona_rec_list WHERE code_barec = '+ IntToStr(CodeBREC) ;
//  MainForm.Bona_recPlistTable.Active:= True;
//
//     BonRecF.EditBARecBtnClick(Sender);
 end;
 if MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf'] = 3 then
 begin

//         MainForm.Bona_fac_listTable.Active:= False;
//     MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
//
//    CodeREG:=  MainForm.RegfournisseurTable.FieldValues['code_bafac'];
//
//    MainForm.Bona_facTable.DisableControls;
//    MainForm.Bona_facTable.Active:= False;
//    MainForm.Bona_facTable.SQL.clear;
//    mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac WHERE code_bafac = '+ IntToStr(CodeREG) ;
//    MainForm.Bona_facTable.Active:= True;
//    CodeBREC:= MainForm.Bona_facTable.FieldValues['code_bafac'];
//
//            MainForm.Bona_fac_listTable.Active:= False;
//  MainForm.Bona_fac_listTable.SQL.clear;
//  mainform.Bona_fac_listTable.sql.Text:='SELECT * FROM bona_fac_list WHERE code_bafac = '+ IntToStr(CodeBREC) ;
//  MainForm.Bona_fac_listTable.Active:= True;
//
//
//       BonFacAF.EditBAFacBtnClick(Sender);
//
//
//  MainForm.Bona_facTable.Active:= False;
//  MainForm.Bona_facTable.SQL.clear;
//  mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac ' ;
//  MainForm.Bona_facTable.Active:= True;
//  MainForm.Bona_facTable.EnableControls;


 end;
   }


end;

procedure TReglementFListF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
                                             
ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=5;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Escpace;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.DeleteBARecBtnClick(Sender: TObject);
begin


if NOT (MainForm.RegfournisseurTable.IsEmpty) then
 begin
     if MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf'] = 1 then
     begin
      FSplashAddUnite:=TFSplashAddUnite.Create(ReglementFListF);
      FSplashAddUnite.Width:=300;
      FSplashAddUnite.Height:=160;
      FSplashAddUnite.Panel1.Color:=  $004735F9;
      FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
      FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
      FSplashAddUnite.Image1.Left:= 1;
      FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
      FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
      FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'le Versement ?';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Règlement';
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
      FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
      FSplashAddUnite.Top:=   MainForm.Top + 5;

      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      FSplashAddUnite.Show;
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 24 ;

     end else
         begin
           sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING); 
//           TTask.Run ( procedure
//           begin
            FSplash := TFSplash.Create(nil);
             try
               FSplash.Left := MainForm.Width - FSplash.Width - 15 ;                   
               FSplash.Top := (MainForm.Height - FSplash.Height ) - 15 ;
                FSplash.Label1.Font.Height:=21;
               FSplash.Label1.Caption:='Suppressions ne sont pas autorisés!';
               FSplash.Color:= $004735F9;
               AnimateWindow(FSplash.Handle, 100, AW_HOR_NEGATIVE OR AW_SLIDE OR AW_ACTIVATE);
               sleep(700);
               AnimateWindow(FSplash.Handle, 100, AW_HOR_POSITIVE OR
                 AW_SLIDE OR AW_HIDE);
             finally
               FSplash.free;
             end;
//           end);
           end;

 end;
end;

procedure TReglementFListF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.RegfournisseurTable.Close;
MainForm.RegfournisseurTable.Open;
end;

procedure TReglementFListF.ResearchRegFEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchRegFEdt.Text<>'' then
    begin

          if ResherchRegFFourRdioBtn.Checked then
          begin
          MainForm.RegfournisseurTable.DisableControls;
          MainForm.RegfournisseurTable.Active:=False;
          MainForm.RegfournisseurTable.SQL.Clear;
          MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_f IN( SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchRegFEdt.Text)+'%'+''')' +')';
          MainForm.RegfournisseurTable.Active:=True;
          MainForm.RegfournisseurTable.EnableControls;

          end;

          if ResherchRegFNumBRdioBtn.Checked then
          begin
          MainForm.RegfournisseurTable.DisableControls;
          MainForm.RegfournisseurTable.Active:=False;
          MainForm.RegfournisseurTable.SQL.Clear;
          MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE LOWER(nom_rf) LIKE LOWER' +'('''+'%'+(ResearchRegFEdt.Text)+'%'+''')' ;
          MainForm.RegfournisseurTable.Active:=True;
          MainForm.RegfournisseurTable.EnableControls;
          end;


    end else
     begin
          MainForm.RegfournisseurTable.DisableControls;
          MainForm.RegfournisseurTable.Active:=False;
          MainForm.RegfournisseurTable.SQL.Clear;
          MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur ' ;
          MainForm.RegfournisseurTable.Active:=True;
          MainForm.RegfournisseurTable.EnableControls;


          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;



     end;
end;

procedure TReglementFListF.ResearchRegFEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.RegfournisseurTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.RegfournisseurTable.Prior;
  end;
end;

procedure TReglementFListF.ResearchRegFEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = [    Char(VK_ESCAPE)];
begin

  if(Key in N) then
  begin
   key := #0  ;
    ResearchRegFEdt.Text:= '';

  end;
  if key = #13 then
  begin
   key := #0;


        if ResearchRegFEdt.Text<>'' then
    begin

          if ResherchRegFFourRdioBtn.Checked then
          begin
          MainForm.RegfournisseurTable.DisableControls;
          MainForm.RegfournisseurTable.Active:=False;
          MainForm.RegfournisseurTable.SQL.Clear;
          MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_f IN( SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+(ResearchRegFEdt.Text)+''')' +')';
          MainForm.RegfournisseurTable.Active:=True;
          MainForm.RegfournisseurTable.EnableControls;

          end;

          if ResherchRegFNumBRdioBtn.Checked then
          begin
          MainForm.RegfournisseurTable.DisableControls;
          MainForm.RegfournisseurTable.Active:=False;
          MainForm.RegfournisseurTable.SQL.Clear;
          MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE LOWER(nom_rf) LIKE LOWER' +'('''+(ResearchRegFEdt.Text)+''')' ;
          MainForm.RegfournisseurTable.Active:=True;
          MainForm.RegfournisseurTable.EnableControls;
          end;


    end else
     begin
          MainForm.RegfournisseurTable.DisableControls;
          MainForm.RegfournisseurTable.Active:=False;
          MainForm.RegfournisseurTable.SQL.Clear;
          MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur ' ;
          MainForm.RegfournisseurTable.Active:=True;
          MainForm.RegfournisseurTable.EnableControls;


          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;



     end;




  end;
end;

procedure TReglementFListF.RglementFournisseur1Click(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=25;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_RF;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'Liste Règlement Fournisseur';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BARecListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.RegfournisseurTable.DisableControls;
//
//    GettingData;
//
//RegFListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Liste Règlement Fournisseur';
//RegFListfrxRprt.Export(frxXLSExport1);
//
//MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.RegfournisseurTable.DisableControls;

    GettingData;

RegFListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Liste Règlement Fournisseur';
RegFListfrxRprt.Export(frxPDFExport1);


MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if Assigned(BonCtrGestionF) then
 begin
 if (BonCtrGestionF.Showing = False)  then
 begin
 if (ReglementFListF.Active = True)  AND  (Assigned(ReglementFGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F11) < 0)  then
  begin
    P1Click(Screen) ;
    Handled := true;
  end;

  if  (GetKeyState(VK_F12) < 0)  then
  begin
    P2Click(Screen) ;
    Handled := true;
  end;


 end else
     begin
      if  (ReglementFListF.Active = True)  AND (ReglementFGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F11) < 0)  then
          begin
            P1Click(Screen) ;
            Handled := true;
          end;

          if  (GetKeyState(VK_F12) < 0)  then
          begin
            P2Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
 end;
 end else
     begin
        if (ReglementFListF.Active = True)  AND  (Assigned(ReglementFGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F11) < 0)  then
  begin
    P1Click(Screen) ;
    Handled := true;
  end;

  if  (GetKeyState(VK_F12) < 0)  then
  begin
    P2Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (ReglementFListF.Active = True)  AND (ReglementFGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F11) < 0)  then
          begin
            P1Click(Screen) ;
            Handled := true;
          end;

          if  (GetKeyState(VK_F12) < 0)  then
          begin
            P2Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
     end;
end;

procedure TReglementFListF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_ATerme;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.BARecListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if BARecListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  EditBARecBtnClick(Sender) ;
end;
end;

//-----this is to highlight text in dbgrid when shearch---------------
procedure HighlightCellText(AGrid :TDbGridEH; const ARect : TRect; AColumn : TColumnEh;  FilterText : string; AState:TGridDrawState ;
  BkColor : TColor = clYellow; SelectedBkColor : TColor = clGray);
var
  HlRect : TRect;
  Position : Integer;
  HlText, FilterColName,DisplayText: string;
  i, offset : Integer;
begin
   DisplayText := Acolumn.Field.AsString;
   Position := Pos(AnsiLowerCase(FilterText), AnsiLowerCase(DisplayText){  AnsiLowerCase(AColumn.DisplayText)});
   if Position > 0 then
   begin
     // set highlight area
     case AColumn.Alignment of
       taLeftJustify:  HlRect.Left := ARect.Left + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1)) + 1;
       taRightJustify: begin
         Offset := AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 1;
         HlRect.Left :=  (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)-offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1));
       end;
       taCenter: begin
         Offset := ((ARect.Right - ARect.Left) div 2) - (AGrid.Canvas.TextWidth(DisplayText) div 2)
         - (AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 2);

         HlRect.Left := (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)- offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1));
       end;
     end;

     HlRect.Top := ARect.Top + 1;
     HlRect.Right := HlRect.Left +AGrid.Canvas.TextWidth(Copy(DisplayText, Position, Length(FilterText))) + 1 ;
     HlRect.Bottom := ARect.Bottom - 1;

     //check for  limit of the cell
     if HlRect.Right > ARect.Right then
       HlRect.Right := ARect.Right;

     // setup the color and draw the rectangle in a width of the matching text
     if gdSelected in AState then
       AGrid.Canvas.Brush.Color := $006DCEFE//$00626262//$0000FFFF//$00F8CA90//$0083CAF4    $00FD9732 //
     else
       AGrid.Canvas.Brush.Color := $006DCEFE;//$00626262;//$0000FFFF;//$00F8CA90;//$0083CAF4; $00FD9732;

     AGrid.Canvas.FillRect(HlRect);

     HlText := Copy(DisplayText,Position, Length(FilterText));
     AGrid.Canvas.TextRect(HlRect,HlRect.Left + 1,HlRect.Top + 1, HlText);
   end;
end;

procedure TReglementFListF.BARecListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if gdSelected in State then
begin
   BARecListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.RegfournisseurTable.FieldValues['montver_rf'] <= 0)    then
 begin
 BARecListDBGridEh.Canvas.Font.Color:=$004735F9;
 BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;


  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchRegFEdt.Text,State);

end;

procedure TReglementFListF.BARecListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not BARecListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBARecBtnClick(Sender) ;
  end else exit
end;

procedure TReglementFListF.BARecListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['n','N'] then
    AddBARecBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchRegFEdt.SetFocus;
  if not BARecListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBARecBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBARecBtnClick(Sender);
  end else Exit;
end;

procedure TReglementFListF.BARecListDBGridEhSortMarkingChanged(Sender: TObject);
begin
BARecListDBGridEh.DefaultApplySorting;
end;

procedure TReglementFListF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Cheque;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.ClearFilterBVLivPMenuClick(Sender: TObject);
begin
  MainForm.ProduitTable.Filtered:=False;
  Select_ALL;
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=49;
  ClearValideFilterBVLivPMenu.Checked := True;
  ClearMPFilterBVLivPMenu.Checked := True;
end;

procedure TReglementFListF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
  ClearFilterBVLivPMenu.Checked:= True;
end;

procedure TReglementFListF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);



  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
  ClearFilterBVLivPMenu.Checked:= True;
end;

procedure TReglementFListF.DateStartRegFDChange(Sender: TObject);
begin
MainForm.RegfournisseurTable.DisableControls;
MainForm.RegfournisseurTable.Active:= False;
MainForm.RegfournisseurTable.SQL.clear;
mainform.RegfournisseurTable.sql.Text:='SELECT * FROM regfournisseur WHERE date_rf BETWEEN '''+(DateToStr(DateStartRegFD.Date))+ ''' AND ''' +(DateToStr(DateEndRegFD.Date))+'''';
MainForm.RegfournisseurTable.Active:= True;
MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.FormShow(Sender: TObject);
begin
  MainForm.RegfournisseurTable.Active:= True;
  DateStartRegFD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndRegFD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartRegFDChange(Sender);
end;

procedure TReglementFListF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.RegfournisseurTable.First;
end;

procedure TReglementFListF.P1Click(Sender: TObject);
begin
 if not MainForm.RegfournisseurTable.IsEmpty then
 begin

  MainForm.RegfournisseurTable.DisableControls;

  GettingDataRecuPai;

  ReglementFfrxRprt.PrepareReport;
  ReglementFfrxRprt.ShowReport;

  MainForm.RegfournisseurTable.EnableControls;

 end;
end;

procedure TReglementFListF.P2Click(Sender: TObject);
begin
  MainForm.RegfournisseurTable.DisableControls;

   GettingData;

  RegFListfrxRprt.PrepareReport;
  RegFListfrxRprt.ShowReport;

  MainForm.RegfournisseurTable.EnableControls;
end;

procedure TReglementFListF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.RegfournisseurTable.Prior;
end;

procedure TReglementFListF.NextBARecbtnClick(Sender: TObject);
begin
MainForm.RegfournisseurTable.Next;
end;

procedure TReglementFListF.NotValideFilterBVLivPMenuClick(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=21;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;  
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_FacA;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.RegfournisseurTable.last;
end;

procedure TReglementFListF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= RegFListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartRegFD.Date) + ' au ' + DateToStr(DateEndRegFD.Date) ;

      Agent:= RegFListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
  end;


procedure TReglementFListF.GettingDataRecuPai;
var
  Name,Tel,Mob,Adr,MoneyWordRX : TfrxMemoView;
  str1 : string;

  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin



  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= ReglementFfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= ReglementFfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= ReglementFfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= ReglementFfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= ReglementFfrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



      str1:='';
    str1:= MontantEnToutesLettres(MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency);
    str1[1] := Upcase(str1[1]);
    MoneyWordRX := ReglementFfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
    MoneyWordRX.Text:='';
    MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);
  end;



procedure TReglementFListF.SumGirdProduitBtnClick(Sender: TObject);
begin
  if SumGirdProduitBtn.Tag = 0 then
  begin
    BARecListDBGridEh.FooterRowCount:=1;
    SumGirdProduitBtn.Tag := 1;
  end else
      begin
        BARecListDBGridEh.FooterRowCount:=0;
        SumGirdProduitBtn.Tag := 0;
      end;
end;

procedure TReglementFListF.V1Click(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=22;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_CTR;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.ValideFilterBVLivPMenuClick(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=20;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_BR;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Virment;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementFListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(BARecListDBGridEh,GetCurrentDir +'\bin\gc_regflst');


Action:= caFree;
ReglementFListF:= nil;
end;

procedure TReglementFListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_regflst') then
   begin

    MainForm.LoadGridLayout(BARecListDBGridEh,GetCurrentDir +'\bin\gc_regflst');
   end;
end;

procedure TReglementFListF.FormPaint(Sender: TObject);
begin
MainForm.FournisseurTable.Refresh;

  if MainForm.totaux_ur.Checked then
      begin

       SumGirdProduitBtn.Enabled:= True;

      end else
      begin

       SumGirdProduitBtn.Enabled:= False;

      end;
end;

end.
