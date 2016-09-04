unit UBonRec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,Winapi.MMSystem, System.Variants,DateUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton,
  AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  EhLibFireDAC,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.AppEvnts, frxExportPDF, frxClass, frxExportXLS, frxDBSet ;

type
  TBonRecF = class(TForm)
    BARecListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBARecLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    ArrowsPnl: TPanel;
    LastBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchBARecEdt: TSearchBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DateEndBARecD: TDateTimePicker;
    DateStartBARecD: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ResherchBARFourRdioBtn: TRadioButton;
    ResherchBARNumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxBonRecDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonRecfrxRprt: TfrxReport;
    procedure AddBARecBtnClick(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure BARecListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure ResearchBARecEdtChange(Sender: TObject);
    procedure DateStartBARecDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure BARecListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;


var
  BonRecF: TBonRecF;

implementation

uses UMainF, UBonRecGestion, USplashVersement, USplashAddUnite, USplash,
  UClientGestion;

{$R *.dfm}

procedure TBonRecF.AddBARecBtnClick(Sender: TObject);
var
  codeBR : integer;

//  MyForm :TBonRecGestionF;
begin
  MainForm.Bona_recPlistTable.Active:=False;
  MainForm.Bona_recPlistTable.IndexFieldNames:='';
  MainForm.Bona_recTable.DisableControls;
  MainForm.Bona_recTable.Active:= False;
  MainForm.Bona_recTable.SQL.clear;
  mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec  ';
  MainForm.Bona_recTable.Active:= True;


 BonRecGestionF := TBonRecGestionF.Create(nil);
 try

    if Assigned(BonRecF) then
  begin
  ResearchBARecEdt.Text:='';
  end;

    codeBR:= 0;

     if MainForm.Bona_recTable.RecordCount <= 0 then
      begin

        MainForm.Bona_recTable.Insert;
        MainForm.Bona_recTable.FieldValues['code_barec']:=1;
        MainForm.Bona_recTable.FieldValues['num_barec']:= 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_recTable.FieldValues['date_barec']:= DateOf(Today);
        MainForm.Bona_recTable.FieldValues['time_barec']:=TimeOf(Now);
        MainForm.Bona_recTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bona_recTable.Post;
        codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
      end else
          begin
            MainForm.Bona_recTable.Last;
            codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(codeBR));
            MainForm.Bona_recPlistTable.Active:=True;

           if MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
        //   MainForm.Bona_recTable.Last;
           codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
           end else
           begin
        //   MainForm.Bona_recTable.Last;
          // codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
           MainForm.Bona_recTable.Insert;
           MainForm.Bona_recTable.FieldValues['code_barec']:= codeBR + 1;
           MainForm.Bona_recTable.FieldValues['num_barec']:=  'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBR + 1)]);
           MainForm.Bona_recTable.FieldValues['date_barec']:= DateOf(Today);
           MainForm.Bona_recTable.FieldValues['time_barec']:= TimeOf(Now);
           MainForm.Bona_recTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
           MainForm.Bona_recTable.Post;


           end;
     //    BonRecGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

//      MainForm.Bona_recPlistTable.Active:=False;
//      MainForm.Bona_recPlistTable.SQL.Clear;
//      MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list';
//      MainForm.Bona_recPlistTable.Active:=True;

MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
//MainForm.Bona_recPlistTable.Refresh;

           BonRecGestionF.Tag:= 0;
      BonRecGestionF.ShowModal;

 finally
    BonRecGestionF.Free
 end;

//      MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE bon_or_no_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;

end;

procedure TBonRecF.FisrtBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.First;
end;

procedure TBonRecF.LastBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.Last;
end;

procedure TBonRecF.PreviosBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.Prior;
end;

procedure TBonRecF.NextBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.Next;
end;

procedure TBonRecF.BARecListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

 if gdSelected in State then
begin
   BARecListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.Bona_recTable.FieldValues['MontantRes'] > 0)    then
 begin
 BARecListDBGridEh.Canvas.Font.Color:=$004735F9;
 BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (MainForm.Bona_recTable.FieldValues['MontantRes'] < 0)    then
 begin
 BARecListDBGridEh.Canvas.Font.Color:=$00519509;
 BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;

procedure TBonRecF.EditBARecBtnClick(Sender: TObject);
var
 CodeF : Integer;
 begin
    if NOT (MainForm.Bona_recTable.IsEmpty) Then
   begin
    MainForm.Bona_recPlistTable.Active:=True;
    if  NOT (MainForm.Bona_recPlistTable.IsEmpty) then
   begin

    MainForm.Bona_recPlistTable.Active:=False;
    MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
    BonRecGestionF := TBonRecGestionF.Create(nil);
    try

      if Assigned(BonRecF) then
    begin
    ResearchBARecEdt.Text:='';
    end;

//  MainForm.Bona_recTable.DisableControls;
//  MainForm.Bona_recTable.Active:= False;
//  MainForm.Bona_recTable.SQL.clear;
//  mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec  ';
//  MainForm.Bona_recTable.Active:= True;

     MainForm.Bona_recTable.Refresh;


//      BonRecGestionF := TBonRecGestionF.Create(BonRecF);
       MainForm.Bona_recTable.Refresh;
       BonRecGestionF.NumBonRecGEdt.Caption := MainForm.Bona_recTable.FieldValues['num_barec'];
       BonRecGestionF.DateBonRecGD.Date:= MainForm.Bona_recTable.FieldValues['date_barec'];
       if (MainForm.Bona_recTable.FieldValues['code_f']<> null) and (MainForm.Bona_recTable.FieldValues['code_f']<> 0) then
       begin
       CodeF:=MainForm.Bona_recTable.FieldValues['code_f'];
       BonRecGestionF.FournisseurBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['fourbarec'];
         MainForm.FournisseurTable.Active:=false;
         MainForm.FournisseurTable.SQL.Clear;
         MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE code_f ='+(IntToStr( CodeF ) ) ;
         MainForm.FournisseurTable.Active:=True;
         BonRecGestionF.BonRecGFourOLDCredit.Caption:= CurrToStrF(MainForm.FournisseurTable.FieldValues['oldcredit_f'],ffNumber,2);
         MainForm.FournisseurTable.Active:=false;
         MainForm.FournisseurTable.SQL.Clear;
         MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur ' ;
         MainForm.FournisseurTable.Active:=True;
        end;

       if (MainForm.Bona_recTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bona_recTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeF:=MainForm.Bona_recTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonRecGestionF.ModePaieBonRecGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.Bona_recTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bona_recTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeF:=MainForm.Bona_recTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         BonRecGestionF.CompteBonRecGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.Bona_recTable.FieldValues['num_cheque_barec']<> null then
       begin
        BonRecGestionF.NChequeBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['num_cheque_barec'];
       end;

   {    if MainForm.Bona_recTable.FieldValues['ModePaie']<> null then
       begin
       BonRecGestionF.ModePaieBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['ModePaie'];
       end;
   {    if MainForm.Bona_recTable.FieldValues['Compte']<> null then
       begin
       BonRecGestionF.CompteBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['Compte'];
       end;
     }

     if MainForm.Bona_recTable.FieldValues['RemisePerc']<> null then
     begin
     BonRecGestionF.RemisePerctageBonRecGEdt.Text :=     CurrToStrF(MainForm.Bona_recTable.FieldValues['RemisePerc'], ffNumber, 2);
     end;
    BonRecGestionF.BonRecTotalHTLbl.Caption :=    CurrToStrF(MainForm.Bona_recTable.FieldValues['montht_barec'], ffNumber, 2);
    BonRecGestionF.RemiseBonRecGEdt.Text :=     CurrToStrF(MainForm.Bona_recTable.FieldValues['remise_barec'], ffNumber, 2);
    BonRecGestionF.BonRecTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bona_recTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonRecGestionF.BonRecTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bona_recTable.FieldValues['montttc_barec'], ffNumber, 2);
    BonRecGestionF.BonRecRegleLbl.Caption :=      CurrToStrF(MainForm.Bona_recTable.FieldValues['montver_barec'], ffNumber, 2);
    BonRecGestionF.BonRecResteLbl.Caption :=      CurrToStrF(MainForm.Bona_recTable.FieldValues['MontantRes'], ffNumber, 2);



       if MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = True then
       begin
        FSplashVersement.DisableBonRec;
       end else
           begin
            BonRecGestionF.EnableBonRec;
           end;
      BonRecGestionF.Tag:= 1;
      BonRecGestionF.ShowModal;







      finally

      BonRecGestionF.Free;

        MainForm.Bona_recTable.Active:= False;
        MainForm.Bona_recTable.SQL.clear;
        mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec ' ;
        MainForm.Bona_recTable.Active:= True;
        MainForm.Bona_recTable.EnableControls;
     end;


     end else
       begin
         AddBARecBtnClick(Sender);
       end;

  end;
 end;

procedure TBonRecF.DeleteBARecBtnClick(Sender: TObject);
begin

if NOT (MainForm.Bona_recTable.IsEmpty) then
 begin
    MainForm.Bona_recPlistTable.Active:=True;

  if NOT (MainForm.Bona_recPlistTable.IsEmpty) then
   begin

         FSplashAddUnite:=TFSplashAddUnite.Create(BonRecF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'les piéces d''achat sèlèctionnèes? ';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Bon';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 8 ;
     end
      else
      begin
              MainForm.Bona_recTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(Self);
        try
          FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
          FSplash.Top := 0;

          FSplash.Label1.Caption:='  Suppression avec succés';
          FSplash.Color:= $004735F9;
          AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE);
          sleep(250);
          AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR
            AW_SLIDE OR AW_HIDE);
        finally
          FSplash.free;

        end;

        sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        NormalForms;
      end;

 end;

//     MainForm.Bona_recTable.Active:= False;
//    MainForm.Bona_recTable.SQL.clear;
//    mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE bon_or_no_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
//    MainForm.Bona_recTable.Active:= True;
//    MainForm.Bona_recTable.EnableControls;
end;


procedure IncArray;
var i : integer;
    data : array of integer;
 // PData = ^TData;

begin
  for i := Low(data) to High(data) do
    data[i] := data[i] + 5;
end;



procedure TBonRecF.ResearchBARecEdtChange(Sender: TObject);

begin

 //----------- Searching in databese-------------------//

    if ResearchBARecEdt.Text<>'' then
    begin

          if ResherchBARFourRdioBtn.Checked then
          begin
          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:='SELECT * FROM bona_rec WHERE code_f IN( SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchBARecEdt.Text)+'%'+''')' +')';
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;

          end;

          if ResherchBARNumBRdioBtn.Checked then
          begin
          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:='SELECT * FROM bona_rec WHERE LOWER(num_barec) LIKE LOWER' +'('''+'%'+(ResearchBARecEdt.Text)+'%'+''')' ;
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;
          end;


     { MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=False;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='SELECT nom_f,code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchBARecEdt.Text)+'%'+''')' +'ORDER BY code_f' ;
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls;

      if NOT(MainForm.FournisseurTable.IsEmpty) then
      begin
         SetLength(MyArray, MainForm.FournisseurTable.RecordCount);


        MainForm.FournisseurTable.First;
       while NOT(MainForm.FournisseurTable.Eof) do
         begin

          CodeF:= MainForm.FournisseurTable.FieldValues['code_F'];
          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:='SELECT * FROM bona_rec WHERE code_f = ' + IntToStr(CodeF) ;
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;


          MainForm.FournisseurTable.Next;
         end;

      end else
          begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
//          MainForm.Bona_recTable.SQL.Text:='SELECT * FROM bona_rec ' ;
//          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;

          end;
               }
    end else
     begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:='SELECT * FROM bona_rec WHERE bon_or_no_barec = true ' ;
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;

     end;

end;

procedure TBonRecF.DateStartBARecDChange(Sender: TObject);
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE bon_or_no_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.FormShow(Sender: TObject);
Begin
  MainForm.Bona_recTable.Active:= True;
  DateStartBARecD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBARecD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBARecDChange(Sender);
end;
procedure TBonRecF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonRecfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBARecD.Date) + ' au ' + DateToStr(DateEndBARecD.Date) ;

    Agent:= BonRecfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;
procedure TBonRecF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Bona_recTable.DisableControls;

   GettingData;

  BonRecfrxRprt.PrepareReport;
  BonRecfrxRprt.ShowReport;

  MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Bona_recTable.DisableControls;

    GettingData;

BonRecfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'liste des BR';
BonRecfrxRprt.Export(frxXLSExport1);

MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.Bona_recTable.DisableControls;

    GettingData;

BonRecfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BR';
BonRecfrxRprt.Export(frxPDFExport1);


MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.BARecListDBGridEhDblClick(Sender: TObject);
begin
if BARecListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonRecF.EditBARecBtnClick(Sender) ;
end;
end;

procedure TBonRecF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(BonRecF);
end;

end.


