unit USNumberGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, AdvToolBtn, Vcl.ComCtrls;

type
  TSNumberGestionF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CancelBtn: TAdvToolButton;
    OKBtn: TAdvToolButton;
    label1: TLabel;
    RefNSeriesLbl: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    NameNSeriesLbl: TLabel;
    NSeriesDispoLsBox: TListBox;
    NSeriesNewMem: TRichEdit;
    NSeriesDispoLbl: TLabel;
    NSeriesNewLbl: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure NSeriesDispoLsBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure NSeriesDispoLsBoxClick(Sender: TObject);
    procedure NSeriesNewMemChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NSeriesNewMemEnter(Sender: TObject);
  private
    { Private declarations }
    OriginalDispoSerialStrLt: TStringList;
  public
    { Public declarations }

  end;

var
  SNumberGestionF: TSNumberGestionF;

implementation

{$R *.dfm}

uses UMainF, Winapi.MMSystem, System.StrUtils ,
   UBonRecGestion, UBonLivGestion, UComptoir, UBonRetAGestion,UBonRetVGestion, UDataModule;

procedure TSNumberGestionF.Button1Click(Sender: TObject);
Var I:integer ;
//    names :TStrings;
begin
 for i := 0 to OriginalDispoSerialStrLt.Count-1 do
  begin
    ShowMessage(OriginalDispoSerialStrLt.Strings[I] );
  end;
end;

procedure TSNumberGestionF.CancelBtnClick(Sender: TObject);
begin
    AnimateWindow(SNumberGestionF.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    SNumberGestionF.Release;
end;

procedure TSNumberGestionF.FormCreate(Sender: TObject);
begin
GrayForms  ;
end;

procedure TSNumberGestionF.FormDestroy(Sender: TObject);
begin
  NormalForms  ;
  OriginalDispoSerialStrLt.Free;{ destroy the list object }
end;

procedure TSNumberGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

   CancelBtnClick(Sender);
 end;

  if (NSeriesNewMem.Focused = False) and (key = #13) then
 begin
   key := #0;

//  ProduitsListDBGridEhKeyPress(Sender, key);

 end;


   // this is to apply Ctrl + Enter when we want to save and close
  if (HiWord(GetKeyState(VK_CONTROL)) <> 0) AND (HiWord(GetKeyState(VK_RETURN)) <> 0)  then
   begin
     key := #0;
     OKBtnClick(Sender);

   end;
end;

procedure TSNumberGestionF.FormShow(Sender: TObject);
Var I :Integer;
begin
  NSeriesDispoLbl.Caption:= IntToStr(NSeriesDispoLsBox.Items.Count);
  NSeriesNewLbl.Caption:= IntToStr(NSeriesNewMem.Lines.Count);

  // make sure we are in BonLiv Mode
//  if Tag = 1 then
  begin
    OriginalDispoSerialStrLt := TStringList.Create;

    OriginalDispoSerialStrLt.BeginUpdate;
    for I := 0 to NSeriesDispoLsBox.Items.Count -1 do
    begin
     //Fullfil TStringList
     OriginalDispoSerialStrLt.add(NSeriesDispoLsBox.Items[I]);
    end;

    OriginalDispoSerialStrLt.EndUpdate;
  end;
end;

procedure TSNumberGestionF.NSeriesDispoLsBoxClick(Sender: TObject);
begin


  if NSeriesDispoLsBox.ItemIndex <> -1 then
  begin

    if NSeriesNewMem.Lines.IndexOf(NSeriesDispoLsBox.Items[NSeriesDispoLsBox.ItemIndex]) = -1 then
    begin
      // Doesn't exist yet. Safe to add

      NSeriesNewMem.Lines.Add(NSeriesDispoLsBox.Items[NSeriesDispoLsBox.ItemIndex]);
      NSeriesDispoLsBox.Items.Delete(NSeriesDispoLsBox.ItemIndex);


    end;


  end;
  NSeriesNewMem.SetFocus;

  NSeriesDispoLbl.Caption:= IntToStr(NSeriesDispoLsBox.Items.Count);
  NSeriesNewLbl.Caption:= IntToStr(NSeriesNewMem.Lines.Count);


//  ListBox2.Sorted := true;
//  NSeriesProduitGLsBox.Sorted := true;

end;

procedure TSNumberGestionF.NSeriesDispoLsBoxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);

begin

   with (Control as TListBox).Canvas do
  begin
    if odSelected in State then
    begin
      Brush.Color := $00EAEAEA;
      font.Color:= font.color;
    end;

    FillRect(Rect);
    TextOut(Rect.Left, Rect.Top, (Control as TListBox).Items[Index]);
    if odFocused In State then begin
      DrawFocusRect(Rect);
    end;
  end;

end;



procedure TSNumberGestionF.NSeriesNewMemChange(Sender: TObject);
Var I,S :Integer;
Var SerialNumber,currentSerial : String;

begin
  if Showing then
  begin
   OriginalDispoSerialStrLt.Sort;
   //We check all the scaned serial by line to update total scaned seriall
   for I := 0 to NSeriesNewMem.Lines.Count-1 do
   begin
    SerialNumber:= NSeriesNewMem.Lines.Strings[i];
    if  SerialNumber <> '' then
    begin
      //This is to remove Serials from DispoSerial when we scan an exist serial
      if (OriginalDispoSerialStrLt.IndexOf(SerialNumber) > -1)
         AND (NSeriesDispoLsBox.Items.IndexOf(SerialNumber) > -1) then
      begin
        NSeriesDispoLsBox.Items.Delete(NSeriesDispoLsBox.Items.IndexOf(SerialNumber));
        NSeriesDispoLsBox.Update;
      end;
    end;
   end;
   //We check if there are nonscaned items to add them back to dispo list
   for S := 0 to OriginalDispoSerialStrLt.Count-1 do
   begin
     currentSerial:= OriginalDispoSerialStrLt.Strings[S];
     if NOT (NSeriesDispoLsBox.Items.IndexOf(currentSerial) > -1)
        AND NOT (NSeriesNewMem.Lines.IndexOf(currentSerial) > -1)
        AND (OriginalDispoSerialStrLt.IndexOf(currentSerial) > -1 )   then
     begin
        NSeriesDispoLsBox.Items.Add(currentSerial)
     end;
   end;

    NSeriesNewLbl.Caption:= IntToStr(NSeriesNewMem.Lines.Count);
    NSeriesDispoLbl.Caption:= IntToStr(NSeriesDispoLsBox.Items.Count);
  end;

end;

procedure TSNumberGestionF.NSeriesNewMemEnter(Sender: TObject);
Var I:Integer;
    SerialNumber:String;
begin
   //We check if there are nonscaned items to add them back to dispo list
   for I := 0 to NSeriesNewMem.Lines.Count-1 do
   begin
    SerialNumber:= NSeriesNewMem.Lines.Strings[i];
    if  SerialNumber <> '' then
    begin
      //This is to remove Serials from DispoSerial when we scan an exist serial
      if (OriginalDispoSerialStrLt.IndexOf(SerialNumber) > -1)
         AND (NSeriesDispoLsBox.Items.IndexOf(SerialNumber) > -1) then
      begin
        NSeriesDispoLsBox.Items.Delete(NSeriesDispoLsBox.Items.IndexOf(SerialNumber));
        NSeriesDispoLsBox.Update;
      end;
    end;
   end;

//    NSeriesNewLbl.Caption:= IntToStr(NSeriesNewMem.Lines.Count);
    NSeriesDispoLbl.Caption:= IntToStr(NSeriesDispoLsBox.Items.Count);
end;

procedure TSNumberGestionF.OKBtnClick(Sender: TObject);
Var I,K,S : Integer;
begin


 //Check if Serial number memo is not empty
 if NSeriesNewMem.Text <> '' then
 begin

    // This Tag = 0 is for adding Serial Number in BonRecGestion
   if Tag = 0 then
   begin

         DataModuleF.GstockdcConnection02.ExecSQL('DELETE FROM n_series WHERE '
          +' code_barec =' +IntToStr(MainForm.Bona_recPlistTable.FieldByName('code_barec').AsInteger)
          +' AND sold_ns = FALSE'
          );

        for I := 0 to NSeriesNewMem.Lines.Count-1 do
        begin

          DataModuleF.SQLQuery3.Active:=false;
          DataModuleF.SQLQuery3.SQL.Clear;
          DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,nom_ns,code_p,code_barec,sold_ns FROM n_series WHERE nom_ns = '
          + QuotedStr(NSeriesNewMem.Lines.Strings[i]);
          DataModuleF.SQLQuery3.Active:=True;

          if (DataModuleF.SQLQuery3.IsEmpty) AND (NSeriesNewMem.Lines.Strings[i] <> '') then
          begin
            DataModuleF.SQLQuery3.Append;
            DataModuleF.SQLQuery3.FieldByName('nom_ns').AsString:= NSeriesNewMem.Lines.Strings[i];
            DataModuleF.SQLQuery3.FieldByName('code_p').AsInteger:= MainForm.Bona_recPlistTable.FieldByName('code_p').AsInteger;
            DataModuleF.SQLQuery3.FieldByName('code_barec').AsInteger:= MainForm.Bona_recPlistTable.FieldByName('code_barec').AsInteger;
            DataModuleF.SQLQuery3.FieldByName('sold_ns').AsBoolean:= False;
            DataModuleF.SQLQuery3.Post;
          end;
        end;

          DataModuleF.SQLQuery3.Refresh;


 //**************Find A better Solution for deleting unscaned serial in bonrec from database*************************

//          MainForm.SQLQuery.Active:=false;
//          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select code_ns,nom_ns,code_barec FROM n_series WHERE '
//          +' code_barec =' +IntToStr(MainForm.Bona_recPlistTable.FieldByName('code_barec').AsInteger)
//          +' AND sold_ns = FALSE';
//         MainForm.SQLQuery.Active:=True;
//
//          MainForm.SQLQuery.First;
//          while NOT MainForm.SQLQuery.Eof  do
//          begin
//
//
//               for K := 0 to NSeriesNewMem.Lines.Count-1 do
//                begin
//                   if  (MainForm.SQLQuery.FieldByName('nom_ns').AsString) = (NSeriesNewMem.Lines.Strings[K]) then
//                   begin
//                      MainForm.SQLQuery.Edit;
//                      MainForm.SQLQuery.FieldByName('code_barec').Value:= Null;
//                      MainForm.SQLQuery.Post;
//                   end
//                end;
//
//
//
//             MainForm.SQLQuery.Next;
//          end;

//          DataModuleF.GstockdcConnection02.ExecSQL('DELETE FROM n_series WHERE '
//          +' code_barec =' +IntToStr(MainForm.Bona_recPlistTable.FieldByName('code_barec').AsInteger)
//          +' AND LOWERnom_ns NOT LIKE '
//          +' AND sold_ns = FALSE'
//          );

//**********************************************************************************************************************


     //Here We count the scaned serial numbers and pust qut in bon
     MainForm.Bona_recPlistTable.Edit;
     MainForm.Bona_recPlistTable.FieldByName('qut_p').Value:=  NSeriesNewMem.Lines.Count;
     MainForm.Bona_recPlistTable.Post;
     MainForm.Bona_recPlistTable.Refresh;



      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;

      MainForm.SQLQuery3.Active:=false;
      MainForm.SQLQuery3.SQL.Clear;
   end;

    // This Tag = 1 is for adding Serial Number in BonLivGestion
   if Tag = 1 then
   begin
      for I := 0 to NSeriesNewMem.Lines.Count-1 do
      begin

        DataModuleF.SQLQuery3.Active:=false;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,code_bvliv FROM n_series WHERE nom_ns = '
        + QuotedStr(NSeriesNewMem.Lines.Strings[i])
        +' AND sold_ns = false ';
        DataModuleF.SQLQuery3.Active:=True;

        if (NOT DataModuleF.SQLQuery3.IsEmpty) AND (NSeriesNewMem.Lines.Strings[i] <> '') then
        begin
          DataModuleF.SQLQuery3.Edit;
          DataModuleF.SQLQuery3.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_liv_listTable.FieldByName('code_bvliv').AsInteger;
          DataModuleF.SQLQuery3.Post;
        end;
      end;


     //Here We count the scaned serial numbers and pust qut in bon
     MainForm.Bonv_liv_listTable.Edit;
     MainForm.Bonv_liv_listTable.FieldByName('qut_p').Value:=  NSeriesNewMem.Lines.Count;
     MainForm.Bonv_liv_listTable.Post;
     MainForm.Bonv_liv_listTable.Refresh;

   end;
 end;

 //Here we remove the unscaned serials from the bon
 if (Tag = 1) AND (NSeriesDispoLsBox.ItemHeight <> 0) then
 begin
    NSeriesDispoLsBox.Update;
    //Set Code)vliv = null for removed serial from panel
    DataModuleF.SQLQuery3.Active:=false;
    DataModuleF.SQLQuery3.SQL.Clear;
    DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,nom_ns,code_bvliv FROM n_series WHERE '
    +' code_bvliv = '+IntToStr(MainForm.Bonv_liv_listTable.FieldByName('code_bvliv').AsInteger)
    +' AND sold_ns = false ';
    DataModuleF.SQLQuery3.Active:=True;

      DataModuleF.SQLQuery3.First;
      while NOT DataModuleF.SQLQuery3.Eof  do
      begin
          for S := 0 to NSeriesDispoLsBox.Items.Count-1 do
          begin
             if  (DataModuleF.SQLQuery3.FieldByName('nom_ns').AsString) = (NSeriesDispoLsBox.Items.Strings[S]) then
             begin
                DataModuleF.SQLQuery3.Edit;
                DataModuleF.SQLQuery3.FieldByName('code_bvliv').Value:= Null;
                DataModuleF.SQLQuery3.Post;
             end
          end;
         DataModuleF.SQLQuery3.Next;
      end;
 end;

  MainForm.SQLQuery3.Active:=false;
  MainForm.SQLQuery3.SQL.Clear;

  AnimateWindow(SNumberGestionF.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  SNumberGestionF.Release;

end;

end.
