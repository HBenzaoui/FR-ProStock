unit USplashAddCodeBarre;

interface

uses
  Winapi.Windows,MMSystem, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  System.ImageList, Vcl.ImgList, acAlphaImageList, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvToolBtn, Data.DB;

type
  TFSplashAddCodeBarre = class(TForm)
    OKAddUniteSBtn: TAdvToolButton;
    Panel1: TPanel;
    FormCaptionAddUniteSLbl: TLabel;
    LineP: TPanel;
    NameAddCodeBarreSEdt: TEdit;
    AddCBAddCodeBarreSBtn: TAdvToolButton;
    Panel2: TPanel;
    CodeBarresDBGridEh: TDBGridEh;
    DeleteCBAddCodeBarreSBtn: TAdvToolButton;
    CodeBarreDataS: TDataSource;
    NumberCBAddCodeBarreSLbl: TLabel;
    RandomCBAddCodeBarreSBtn: TAdvToolButton;
    DuplicatedCodeBarrelbl: TLabel;
    NameCodeBarreErrorP: TPanel;
    MaxCodeBarrelbl: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AddCBAddCodeBarreSBtnClick(Sender: TObject);
    procedure NameAddCodeBarreSEdtKeyPress(Sender: TObject; var Key: Char);
    procedure DeleteCBAddCodeBarreSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RandomCBAddCodeBarreSBtnClick(Sender: TObject);
    procedure CodeBarresDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeBarresDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure OKAddUniteSBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NameAddCodeBarreSEdtEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplashAddCodeBarre: TFSplashAddCodeBarre;

implementation

{$R *.dfm}
uses Contnrs, Types, UProduitGestion, UMainF;

var
  gGrayForms: TComponentList;

//----- this function is for check if the edit has character

  function IsValidEntry(s:String):Boolean;
var
  n:Integer;
begin
  result := true;
  for n := 1 to Length(s) do begin
    if (s[n] < '0') or (s[n] > '9') then
    begin
       result := false;
       exit;
    end;
  end;
end;


procedure GrayForms;
var
   loop : integer;
   cbScrnFrm : TForm;
   cbForm : TForm;
//   cbPoint : TPoint;
   cbScreens : TList;

begin
   if not assigned(gGrayForms) then
   begin
      gGrayForms := TComponentList.Create;
      gGrayForms.OwnsObjects := true;

      cbScreens := TList.create;
      try
         for loop := 0 to 0 do
            cbScreens.Add(Screen.Forms[loop]);

         for loop := 0 to 0 do

         begin
            cbScrnFrm := cbScreens[loop];

            if cbScrnFrm.Visible then
            begin
               cbForm := TForm.Create(cbScrnFrm);
               gGrayForms.Add(cbForm);
               cbForm.Position := MainForm.Position;
               cbForm.AlphaBlend := true;
               cbForm.AlphaBlendValue := 80;
               cbForm.Color := clBlack;
               cbForm.BorderStyle := bsNone;
               cbForm.StyleElements:= [];
               cbForm.Enabled := false;
               cbForm.BoundsRect := cbScrnFrm.BoundsRect;
               SetWindowLong(cbForm.Handle, GWL_HWNDPARENT, cbScrnFrm.Handle);
               SetWindowPos(cbForm.handle, cbScrnFrm.handle, 0,0,0,0, SWP_NOSIZE or SWP_NOMOVE);
               cbForm.Visible := true;
            end;
         end;
      finally
         cbScreens.free;
      end;
   end;
end;

procedure NormalForms;
begin
  FreeAndNil(gGrayForms);
end;
procedure TFSplashAddCodeBarre.DeleteCBAddCodeBarreSBtnClick(Sender: TObject);
begin

 if MainForm.CodebarresTable.RecordCount <= 0 then

    begin

    exit

    end else

  MainForm.CodebarresTable.Delete;
  NumberCBAddCodeBarreSLbl.Caption:= IntToStr(MainForm.CodebarresTable.RecordCount) ;
end;

procedure TFSplashAddCodeBarre.AddCBAddCodeBarreSBtnClick(Sender: TObject);
var
codeCB,CodeP : integer;
begin
 if NameAddCodeBarreSEdt.Text <> '' then
  begin
    if NameAddCodeBarreSEdt.Text <> ProduitGestionF.CodeBarProduitGEdt.Text then
      begin
            MainForm.CodebarresTable.DisableControls;
            MainForm.CodebarresTable.Active:=False;
            MainForm.CodebarresTable.SQL.Clear;
            MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres WHERE code_p <> ' + QuotedStr(MainForm.ProduitTable.FieldValues['code_p']) ;
            MainForm.CodebarresTable.Active:=True;
            MainForm.CodebarresTable.IndexFieldNames:='';
         //------- use this code to check if there is a produit with the same code barre in the database ----//
        if  MainForm.CodebarresTable.Locate('nom_cb', NameAddCodeBarreSEdt.Text, [loCaseInsensitive])  then
          begin
           MainForm.CodebarresTable.DisableControls;
           MainForm.SQLQuery.Active:=false;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.SQLQuery.SQL.Text:= 'SELECT nom_cb,code_p FROM codebarres WHERE nom_cb LIKE ' + QuotedStr(NameAddCodeBarreSEdt.Text);
           MainForm.SQLQuery.Active:=True ;
           CodeP:= MainForm.SQLQuery.FieldValues['code_p'];
           MainForm.SQLQuery.Active:=false;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit WHERE code_p = ' + IntToStr( CodeP);
           MainForm.SQLQuery.Active:=True ;
           ShowMessage('Le Code a barre existe déja dans le produit : ' +QuotedStr(MainForm.SQLQuery.FieldValues['nom_p'])  );
             MainForm.CodebarresTable.Active:=False;
             MainForm.CodebarresTable.SQL.Clear;
             MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ' ;
             MainForm.CodebarresTable.IndexFieldNames:='code_p';
             MainForm.CodebarresTable.Active:=True;
             MainForm.CodebarresTable.EnableControls;
             CodeBarresDBGridEh.Refresh;
             MainForm.CodebarresTable.Refresh;
                  NameAddCodeBarreSEdt.Text:='';
                  NameAddCodeBarreSEdt.BorderStyle:= bsSingle;
                  NameAddCodeBarreSEdt.StyleElements:= [seClient,seBorder];
                  DuplicatedCodeBarrelbl.Visible:= False;
                  NameCodeBarreErrorP.Visible:= False;
               exit;
          end else
       if MainForm.ProduitTable.Locate('codebar_p', NameAddCodeBarreSEdt.Text, [loCaseInsensitive])  then
        begin
         MainForm.CodebarresTable.DisableControls;
         MainForm.SQLQuery.Active:=false;
         MainForm.SQLQuery.SQL.Clear;
         MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit WHERE codebar_p LIKE ' + QuotedStr(NameAddCodeBarreSEdt.Text);
         MainForm.SQLQuery.Active:=True ;
         ShowMessage('Le Code a barre existe déja dans le produit  ' +QuotedStr(MainForm.SQLQuery.FieldByName('nom_p').AsString)  );
           MainForm.ProduitTable.Last;
           MainForm.CodebarresTable.Active:=False;
           MainForm.CodebarresTable.SQL.Clear;
           MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ' ;
           MainForm.CodebarresTable.IndexFieldNames:='code_p';
           MainForm.CodebarresTable.Active:=True;
           MainForm.CodebarresTable.EnableControls;
           CodeBarresDBGridEh.Refresh;
           MainForm.CodebarresTable.Refresh;
                  NameAddCodeBarreSEdt.Text:='';
                  NameAddCodeBarreSEdt.BorderStyle:= bsSingle;
                  NameAddCodeBarreSEdt.StyleElements:= [seClient,seBorder];
                  DuplicatedCodeBarrelbl.Visible:= False;
                  NameCodeBarreErrorP.Visible:= False;
        exit;
         end ;
          MainForm.CodebarresTable.Active:=False;
          MainForm.CodebarresTable.SQL.Clear;
          MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ORDER BY code_cb ' ;
          MainForm.CodebarresTable.Active:=True;
          MainForm.CodebarresTable.IndexFieldNames:='code_p';
          MainForm.CodebarresTable.EnableControls;
       begin
         if NOT  MainForm.CodebarresTable.Locate('nom_cb', NameAddCodeBarreSEdt.Text, [loCaseInsensitive]) then
            begin
             if  MainForm.CodebarresTable.RecordCount >= 70 then
             begin
                  MaxCodeBarrelbl.Visible:= True;
                  NumberCBAddCodeBarreSLbl.Font.Color:= $004735F9;
                  NameAddCodeBarreSEdt.Text:='';
                  NameAddCodeBarreSEdt.ReadOnly:=true;
              //    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                 exit
             end
             else
             MainForm.CodebarresTable.IndexFieldNames:='';
             if MainForm.CodebarresTable.RecordCount = 0 then
             begin
               MainForm.CodebarresTable.last;
               MainForm.CodebarresTable.insert;
               MainForm.CodebarresTable.FieldValues['code_cb']:= 1;
               MainForm.CodebarresTable.FieldValues['nom_cb'] := NameAddCodeBarreSEdt.Text;
               MainForm.CodebarresTable.FieldValues['code_p'] :=  MainForm.ProduitTable.FieldValues['code_p'] ;
               MainForm.CodebarresTable.post;
               MainForm.CodebarresTable.IndexFieldNames:='code_p';
               NumberCBAddCodeBarreSLbl.Font.Color:= $009E5F00;
               NameAddCodeBarreSEdt.ReadOnly:=False;
               MaxCodeBarrelbl.Visible:= False;
               DuplicatedCodeBarrelbl.Visible:= False;
               if MainForm.CodebarresTable.RecordCount >= 70 then
                begin
                  NumberCBAddCodeBarreSLbl.Font.Color:= $004735F9;
                end;
                end else
               begin
               MainForm.CodebarresTable.IndexFieldNames:='';
               MainForm.CodebarresTable.last;
               codeCB:= MainForm.CodebarresTable.FieldValues['code_cb'];
               MainForm.CodebarresTable.insert;
               MainForm.CodebarresTable.FieldValues['code_cb']:= codeCB + 1;
               MainForm.CodebarresTable.FieldValues['nom_cb'] := NameAddCodeBarreSEdt.Text;
               MainForm.CodebarresTable.FieldValues['code_p'] :=  MainForm.ProduitTable.FieldValues['code_p'] ;
               MainForm.CodebarresTable.post;
               MainForm.CodebarresTable.IndexFieldNames:='code_p';
               NumberCBAddCodeBarreSLbl.Font.Color:= $009E5F00;
               NameAddCodeBarreSEdt.ReadOnly:=False;
               MaxCodeBarrelbl.Visible:= False;
               DuplicatedCodeBarrelbl.Visible:= False;
               if MainForm.CodebarresTable.RecordCount >= 70 then
                begin
                  NumberCBAddCodeBarreSLbl.Font.Color:= $004735F9;
                end;
              end;
              MainForm.CodebarresTable.Refresh;
              MainForm.CodebarresTable.Last;
              NameAddCodeBarreSEdt.Text :='';
              NameAddCodeBarreSEdt.SetFocus;
              NumberCBAddCodeBarreSLbl.Caption:= IntToStr(MainForm.CodebarresTable.RecordCount) ;
              NameAddCodeBarreSEdt.BorderStyle:= bsSingle;
              NameAddCodeBarreSEdt.StyleElements:= [seClient,seBorder];
              DuplicatedCodeBarrelbl.Visible:= False;
              NameCodeBarreErrorP.Visible:= False;
             end else
               begin
                NameAddCodeBarreSEdt.Text:='';
                NameAddCodeBarreSEdt.BorderStyle:= bsNone;
                NameAddCodeBarreSEdt.StyleElements:= [];
                DuplicatedCodeBarrelbl.Visible:= True;
                NameCodeBarreErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                exit;
               end;
           end;
          MainForm.CodebarresTable.IndexFieldNames:='code_p';
          MainForm.CodebarresTable.EnableControls;
          CodeBarresDBGridEh.Refresh;
          MainForm.CodebarresTable.Refresh;
          end else begin
                           NameAddCodeBarreSEdt.Text:='';
                NameAddCodeBarreSEdt.BorderStyle:= bsNone;
                NameAddCodeBarreSEdt.StyleElements:= [];
                DuplicatedCodeBarrelbl.Visible:= True;
                NameCodeBarreErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                exit;
              end;
  end else
  begin
    exit;
  end;
  end;


procedure TFSplashAddCodeBarre.RandomCBAddCodeBarreSBtnClick(Sender: TObject);
var CodeB:string;

begin
//   MainForm.CodebarresTable.IndexFieldNames:='';

  if  IsValidEntry(NameAddCodeBarreSEdt.Text) then

   begin

    if NameAddCodeBarreSEdt.Text = ''  then
       begin
    //   MainForm.CodebarresTable.IndexFieldNames:='';
     if (MainForm.CodebarresTable.RecordCount <= 0)  then

         begin
         MainForm.CodebarresTable.DisableControls;
         MainForm.CodebarresTable.IndexFieldNames:='';
         NameAddCodeBarreSEdt.Text := '1010000000111' ;
         CodeB := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + 7);
           if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
           OR
             (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
           then begin

            NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );


                end else
                    begin

                      NameAddCodeBarreSEdt.Text := CodeB

                    end;

              MainForm.CodebarresTable.IndexFieldNames:='code_p';
              MainForm.CodebarresTable.DisableControls;

        end else

        begin

        MainForm.ProduitTable.Last;

        CodeB:= IntToStr(  StrToInt64(MainForm.CodebarresTable.FieldValues['code_cb']) + 1070000000111);

        if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
           OR
             (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
           then
           begin

           NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );

           end else
               begin


                 NameAddCodeBarreSEdt.Text:= CodeB;
               end;
           end;

       end else

   //------ if the edit not empty add our number to the last in the edit

     begin
        if (MainForm.CodebarresTable.RecordCount <= 0)  then

        begin
          MainForm.CodebarresTable.DisableControls;
          MainForm.CodebarresTable.IndexFieldNames:='';
          CodeB := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + StrToInt64(MainForm.ProduitTable.FieldValues['code_p']));
           if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
           OR
             (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
           then begin

             NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );

           end else
           begin

             NameAddCodeBarreSEdt.Text := CodeB

           end;

              MainForm.CodebarresTable.IndexFieldNames:='code_p';
              MainForm.CodebarresTable.DisableControls;
        end else

        begin
          //---- use this tag to put the random number at first from the number 1050000000111 + code_p then the second press from the edit + code_p
          if RandomCBAddCodeBarreSBtn.Tag = 0 then
          begin
          MainForm.CodebarresTable.Last;
           CodeB:= IntToStr(  StrToInt64(MainForm.CodebarresTable.FieldValues['code_cb']) + 1070000000111);

             if  (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
               OR
                (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
               then
               begin

               NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + Random(99) );

               end else
               begin

                NameAddCodeBarreSEdt.Text:= CodeB;

               end;
          end ;

          if RandomCBAddCodeBarreSBtn.Tag = 1 then

          begin
            CodeB:= IntToStr(   StrToInt64(NameAddCodeBarreSEdt.Text) + StrToInt64(MainForm.CodebarresTable.FieldValues['code_cb']));

           if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
               OR
                (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
           then
           begin

          NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + Random(99) );

           end else
               begin

                NameAddCodeBarreSEdt.Text:= CodeB;

              end;
            end;

        end;
     end;

      RandomCBAddCodeBarreSBtn.Tag := 1;
      NameAddCodeBarreSEdt.SelectAll;
   end else
  begin
     NameAddCodeBarreSEdt.Text := '' ;
         begin
     if NameAddCodeBarreSEdt.Text = ''  then
    begin

      if (MainForm.CodebarresTable.RecordCount <= 0) then

         begin
         NameAddCodeBarreSEdt.Text := '1010000000111' ;
         NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + 7);

        end else

        begin

        MainForm.ProduitTable.Last;

        CodeB:= IntToStr(  StrToInt64(MainForm.CodebarresTable.FieldValues['code_cb']) + 1070000000111);

        if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
           OR
             (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
           then
           begin

           NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );

           end else
               begin


                 NameAddCodeBarreSEdt.Text:= CodeB;
               end;
           end;

        end    else

   //------ if the edit not empty add our number to the last in the edit

       begin
          if (MainForm.CodebarresTable.RecordCount <= 0)   then

          begin
          MainForm.CodebarresTable.DisableControls;
          MainForm.CodebarresTable.IndexFieldNames:='';
          CodeB := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + StrToInt64(MainForm.ProduitTable.FieldValues['code_p']));
           if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
           OR
             (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
           then begin

             NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );

           end else
           begin

             NameAddCodeBarreSEdt.Text := CodeB

           end;

              MainForm.CodebarresTable.IndexFieldNames:='code_p';
              MainForm.CodebarresTable.DisableControls;
          end else

          begin
            //---- use this tag to put the random number at first from the number 1050000000111 + code_p then the second press from the edit + code_p
            if RandomCBAddCodeBarreSBtn.Tag = 0 then
            begin
            MainForm.CodebarresTable.Last;
             CodeB:= IntToStr(  StrToInt64(MainForm.CodebarresTable.FieldValues['code_cb']) + 1070000000111);

               if  (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                 OR
                  (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                 then
                 begin

                 NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + Random(99) );

                 end else
                 begin

                  NameAddCodeBarreSEdt.Text:= CodeB;

                 end;
            end ;

            if RandomCBAddCodeBarreSBtn.Tag = 1 then

            begin
              CodeB:= IntToStr(   StrToInt64(NameAddCodeBarreSEdt.Text) + StrToInt64(MainForm.CodebarresTable.FieldValues['code_cb']));

             if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                 OR
                  (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
             then
             begin

            NameAddCodeBarreSEdt.Text := IntToStr(  StrToInt64(NameAddCodeBarreSEdt.Text) + Random(99) );

             end else
                 begin

                  NameAddCodeBarreSEdt.Text:= CodeB;

                end;
              end;

          end;

       end;

      RandomCBAddCodeBarreSBtn.Tag := 1;
      NameAddCodeBarreSEdt.SelectAll;

   end;
   end;

 //   MainForm.CodebarresTable.IndexFieldNames:='code_p';

end;

procedure TFSplashAddCodeBarre.CodeBarresDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if not CodeBarresDBGridEh.DataSource.DataSet.IsEmpty then
begin
  if key = VK_DELETE  then
  DeleteCBAddCodeBarreSBtnClick(Sender);
end else exit
end;

procedure TFSplashAddCodeBarre.CodeBarresDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
if not CodeBarresDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s' ] then
  DeleteCBAddCodeBarreSBtnClick(Sender);
  end else Exit ;
end;

procedure TFSplashAddCodeBarre.FormCreate(Sender: TObject);
begin
   SetWindowPos(ProduitGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
   GrayForms  ;
end;

procedure TFSplashAddCodeBarre.FormDestroy(Sender: TObject);
begin

   SetWindowPos(ProduitGestionF.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
     NormalForms  ;
end;

procedure TFSplashAddCodeBarre.FormShow(Sender: TObject);
begin
NumberCBAddCodeBarreSLbl.Caption:= IntToStr(MainForm.CodebarresTable.RecordCount) ;
SetWindowPos(FSplashAddCodeBarre.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

end;

procedure TFSplashAddCodeBarre.NameAddCodeBarreSEdtEnter(Sender: TObject);
var
  KeyState: TKeyboardState;
begin
  //turn on CapsLock when enter edit to make sure codebare read well
  GetKeyboardState(KeyState);
  if (KeyState[VK_CAPITAL]=0) then
  begin
    // Simulate a "CAPS LOCK" key release
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
    // Simulate a "CAPS LOCK" key press
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;

end;

procedure TFSplashAddCodeBarre.NameAddCodeBarreSEdtKeyPress(Sender: TObject;
  var Key: Char);
begin
//---- close the form when i press Esc -----//

  if key = #27 then
 begin
 key := #0;
 AnimateWindow(FSplashAddCodeBarre.Handle, 175, AW_HOR_NEGATIVE OR AW_SLIDE OR AW_HIDE );
  NormalForms;
  Close;

 end;

 //---- jump to the next edit when i press enter-----//

if key = #13 then

begin
 key := #0;

 AddCBAddCodeBarreSBtnClick(Sender);

end;

end;

procedure TFSplashAddCodeBarre.OKAddUniteSBtnClick(Sender: TObject);
begin
 AnimateWindow(FSplashAddCodeBarre.Handle, 175, AW_HOR_NEGATIVE OR AW_SLIDE OR AW_HIDE );

 NormalForms;
  Destroy;
end;

procedure TFSplashAddCodeBarre.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
 begin
  key := #0;

  OKAddUniteSBtnClick(Sender);

 end;
end;

end.
