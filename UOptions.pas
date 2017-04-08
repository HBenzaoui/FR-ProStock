unit UOptions;

interface

uses
  Winapi.Windows,Data.DB,Vcl.Imaging.jpeg, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, sPanel,
  acSlider, AdvToolBtn, acImage, Vcl.ExtDlgs, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, sPageControl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxRadioGroup, cxGroupBox, sTrackBar, cxTrackBar,
  Vcl.Buttons, sSpeedButton, CPort;

type
  TFOptions = class(TForm)
    TopP: TPanel;
    S1: TPanel;
    P1: TPanel;
    P2: TPanel;
    Label1: TLabel;
    LineP: TPanel;
    AutoImL: TLabel;
    APrintOptionGSlider: TsSlider;
    PrintersListFOptionCaisseCbx: TComboBox;
    CaiseeLbl: TLabel;
    Label2: TLabel;
    PrintersListFOptionCodeBCbx: TComboBox;
    Label3: TLabel;
    FormatFOptionCodeBCbx: TComboBox;
    Label4: TLabel;
    PrixVenteListFOptionCodeBCbx: TComboBox;
    Label5: TLabel;
    NameCompanyOptionEdt: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    TelCompanyOptionEdt: TEdit;
    MobCompanyOptionEdt: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    AdrCompanyOptionEdt: TEdit;
    OpenPictureDialogProduitG: TOpenPictureDialog;
    ImageCompanyOptionImg: TsImage;
    ImageDeleteProduitGBtn: TAdvToolButton;
    ImageEditProduitGBtn: TAdvToolButton;
    Label10: TLabel;
    sAlphaImageList1: TsAlphaImageList;
    Shape1: TShape;
    OKFPrintingBtn: TAdvToolButton;
    OptionsPgControl: TsPageControl;
    GeneralOptionGTB: TsTabSheet;
    sTabSheet1: TsTabSheet;
    Panel1: TPanel;
    Label11: TLabel;
    Panel5: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label12: TLabel;
    PoleDisplayActiveSdr: TsSlider;
    PoleDisplayCOMListLbl: TLabel;
    PoleDisplayCOMListCbx: TComboBox;
    Label14: TLabel;
    TiroirCaisseActiveSdr: TsSlider;
    PoleDisplayMsgLbl: TLabel;
    PoleDisplayMsgEdt: TEdit;
    CaseCOMLbl: TLabel;
    TiroirCaisseCOMListCbx: TComboBox;
    TiroirCaisseCasePRINTRbtn: TcxRadioButton;
    CasePrinterLbl: TLabel;
    TiroirCaissePrinterListCbx: TComboBox;
    TiroirCaisseCaseCOMRbtn: TcxRadioButton;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    TiroirCaisseCasePasswordLbl: TLabel;
    TiroirCaisseCasePasswordSdr: TsSlider;
    PoleDisplayMsg2Lbl: TLabel;
    PoleDisplayMsg2Edt: TEdit;
    PoleDisplayTotalLbl: TLabel;
    PoleDisplayTotalEdt: TComboBox;
    RandomCBProduitGBtn: TAdvToolButton;
    TestPoleBtn: TsSpeedButton;
    TestPoleLbl: TLabel;
    TestTeroirBtn: TsSpeedButton;
    TestTeroirLbl: TLabel;
    ComPort1: TComPort;
    procedure FormShow(Sender: TObject);
    procedure OKFPrintingBtnClick(Sender: TObject);
    procedure ImageCompanyOptionImgMouseEnter(Sender: TObject);
    procedure ImageCompanyOptionImgMouseLeave(Sender: TObject);
    procedure ImageCompanyOptionImgClick(Sender: TObject);
    procedure ImageDeleteProduitGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TiroirCaisseCaseCOMRbtnClick(Sender: TObject);
    procedure TiroirCaisseCasePRINTRbtnClick(Sender: TObject);
    procedure PoleDisplayActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure TiroirCaisseActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure TiroirCaisseCOMListCbxDropDown(Sender: TObject);
    procedure PoleDisplayCOMListCbxDropDown(Sender: TObject);
    procedure TestPoleBtnClick(Sender: TObject);
    procedure TestTeroirBtnClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOptions: TFOptions;

implementation

{$R *.dfm}

uses Printers,IniFiles, UClientGestion, UMainF;

procedure TFOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
end;

procedure TFOptions.FormCreate(Sender: TObject);
begin

   PrintersListFOptionCaisseCbx.Items.Assign(Printer.Printers);
   PrintersListFOptionCodeBCbx.Items.Assign(Printer.Printers);
   TiroirCaissePrinterListCbx.Items.Assign(Printer.Printers);
end;


procedure TFOptions.FormShow(Sender: TObject);
var
  S: TMemoryStream;
  Jpg: TJPEGImage;
  Ini: TIniFile;
  CanChange : Boolean;
begin
 GrayForms;
 OptionsPgControl.TabIndex:= 0;

//    inherited;



    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    APrintOptionGSlider.SliderOn:=           Ini.ReadBool('', 'Auto Print',APrintOptionGSlider.SliderOn);
    PrintersListFOptionCaisseCbx.ItemIndex:= Ini.ReadInteger('', 'Printer Caisse',PrintersListFOptionCaisseCbx.ItemIndex);
    PrintersListFOptionCodeBCbx.ItemIndex := Ini.ReadInteger('', 'Printer Barcode',PrintersListFOptionCodeBCbx.ItemIndex);
    FormatFOptionCodeBCbx.ItemIndex :=       Ini.ReadInteger('', 'Format Barcode',FormatFOptionCodeBCbx.ItemIndex);
    PrixVenteListFOptionCodeBCbx.ItemIndex:= Ini.ReadInteger('', 'Prix de Vente',PrixVenteListFOptionCodeBCbx.ItemIndex);

    PoleDisplayActiveSdr.SliderOn:=          Ini.ReadBool('', 'Afficheur client Active',PoleDisplayActiveSdr.SliderOn);
     if PoleDisplayActiveSdr.SliderOn then
     begin
      PoleDisplayActiveSdr.SliderOn:=       Ini.ReadBool('',    'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
      PoleDisplayCOMListCbx.Text:=          Ini.ReadString('',  'Afficheur client PORT', PoleDisplayCOMListCbx.Text);
      PoleDisplayMsgEdt.Text:=              Ini.ReadString('',  'Afficheur client Msg', PoleDisplayMsgEdt.Text);
      PoleDisplayMsg2Edt.Text:=             Ini.ReadString('',  'Afficheur client Msg2', PoleDisplayMsg2Edt.Text);
      PoleDisplayTotalEdt.ItemIndex:=       Ini.ReadInteger('', 'Afficheur client Fin msg', PoleDisplayTotalEdt.ItemIndex);
     end else
         begin
          PoleDisplayActiveSdr.SliderOn:=       Ini.ReadBool('',    'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
          PoleDisplayCOMListCbx.Text:=          '';
          PoleDisplayMsgEdt.Text:=              'SOYEZ LES BIENVENUS';
          PoleDisplayMsg2Edt.Text:=             'MERCI ET A BIENTOT';
          PoleDisplayTotalEdt.ItemIndex:=       0;
         end;

    TiroirCaisseActiveSdr.SliderOn:=          Ini.ReadBool('', 'Tiroir caisse Active',TiroirCaisseActiveSdr.SliderOn);
     if TiroirCaisseActiveSdr.SliderOn then
     begin
      TiroirCaisseActiveSdr.SliderOn:=      Ini.ReadBool('', 'Tiroir caisse Active',TiroirCaisseActiveSdr.SliderOn);
        if Ini.ReadInteger('' ,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag) = 0 then
        begin
           TiroirCaisseCaseCOMRbtn.Checked:= True;
           TiroirCaisseCOMListCbx.Text:=          Ini.ReadString('' ,'Tiroir caisse COM', TiroirCaisseCOMListCbx.Text);
           TiroirCaissePrinterListCbx.ItemIndex:=   -1;
        end else
            begin
             if Ini.ReadInteger('' ,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag) = 1 then
             begin
               TiroirCaisseCasePRINTRbtn.Checked:= True;
               TiroirCaissePrinterListCbx.ItemIndex:=   Ini.ReadInteger(Caption,'Tiroir caisse PRINT', TiroirCaissePrinterListCbx.ItemIndex);
               TiroirCaisseCOMListCbx.Text:=         '';
             end;
            end;
      TiroirCaisseCasePasswordSdr.SliderOn:= Ini.ReadBool(Caption,'Tiroir caisse PASSWORD', TiroirCaisseCasePasswordSdr.SliderOn);
     end else
         begin

            TiroirCaisseCaseCOMRbtn.Enabled:=False;
            CaseCOMLbl.Enabled:=False;
            TiroirCaisseCOMListCbx.Enabled:=False;

            TiroirCaisseCasePRINTRbtn.Enabled:=False;
            CasePrinterLbl.Enabled:=False;
            TiroirCaissePrinterListCbx.Enabled:=False;

            TiroirCaisseCasePasswordLbl.Enabled:=False;
            TiroirCaisseCasePasswordSdr.Enabled:=False;

//          TiroirCaisseActiveSdrChanging(Sender,CanChange);
         end;

    Ini.Free;

      ImageEditProduitGBtn.Visible:=false;
      ImageDeleteProduitGBtn.Visible:=false;
      ImageCompanyOptionImg.ImageIndex:=0;
      ImageCompanyOptionImg.Stretch:=False;
      ImageCompanyOptionImg.Grayed:=True;
      ImageCompanyOptionImg.Blend:=40;
      ImageCompanyOptionImg.Picture.Graphic:= nil;
      OpenPictureDialogProduitG.CleanupInstance;


 if not (MainForm.CompanyTable.IsEmpty) then
    begin
 //---------SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//
      with MainForm.CompanyTable do
      begin
        if (fieldbyname('nom_comp').Value <> null) then
        begin
         NameCompanyOptionEdt.Text := fieldbyname('nom_comp').Value;
        end;
        if (fieldbyname('fix_comp').Value <> null) then
        begin
         TelCompanyOptionEdt.Text := fieldbyname('fix_comp').Value;
        end;
        if (fieldbyname('mob_comp').Value <> null) then
        begin
         MobCompanyOptionEdt.Text := fieldbyname('mob_comp').Value;
        end;
        if (fieldbyname('adr_comp').Value <> null) then
        begin
         AdrCompanyOptionEdt.Text := fieldbyname('adr_comp').Value;
        end;

        if (fieldbyname('logo_comp').Value <> null) then
        begin
          S := TMemoryStream.Create;
          try
            TBlobField(FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
               ImageCompanyOptionImg.ImageIndex := -1;
               ImageCompanyOptionImg.Stretch := True;
               ImageEditProduitGBtn.Visible := true;
               ImageDeleteProduitGBtn.Visible := True;
               ImageCompanyOptionImg.Grayed := False;
               ImageCompanyOptionImg.Blend := 0;
               ImageCompanyOptionImg.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;
        end

      end;

    end;


    NameCompanyOptionEdt.SetFocus;
end;



procedure TFOptions.OKFPrintingBtnClick(Sender: TObject);
var  S : TStream;
Ini: TIniFile;
begin

   if NameCompanyOptionEdt.Text <> '' then
    begin
     if MainForm.CompanyTable.IsEmpty then
      begin
           with MainForm.CompanyTable do  begin
            Insert;
            fieldbyname('code_comp').Value := 1;
            fieldbyname('nom_comp').Value := NameCompanyOptionEdt.Text;
            fieldbyname('fix_comp').Value := TelCompanyOptionEdt.Text;
            fieldbyname('mob_comp').Value := MobCompanyOptionEdt.Text;
            fieldbyname('adr_comp').Value := AdrCompanyOptionEdt.Text;

              {Creat the stream using BlobStream is better the to the blob dictely }

              S :=CreateBlobStream(FieldByName('logo_comp'), bmWrite);
             try
              if NOt (ImageCompanyOptionImg.ImageIndex = 0) then
               begin
                ImageCompanyOptionImg.Picture.Graphic.SaveToStream(S);
                S.Position := 0 ;
               end
                 else
               begin
               ImageCompanyOptionImg.Picture.Graphic := nil;
               ImageCompanyOptionImg.ImageIndex:=0;
               ImageCompanyOptionImg.Grayed:=True;
                 end ;

             finally
              S.Free;
             end;

             post;
           end;

      end else
          begin

               with MainForm.CompanyTable do  begin

              Edit;
              fieldbyname('nom_comp').Value := NameCompanyOptionEdt.Text;
              fieldbyname('fix_comp').Value := TelCompanyOptionEdt.Text;
              fieldbyname('mob_comp').Value := MobCompanyOptionEdt.Text;
              fieldbyname('adr_comp').Value := AdrCompanyOptionEdt.Text;

              {Creat the stream using BlobStream is better the to the blob dictely }

              S :=CreateBlobStream(FieldByName('logo_comp'), bmWrite);
             try
              if NOt (ImageCompanyOptionImg.ImageIndex = 0) then
               begin
                ImageCompanyOptionImg.Picture.Graphic.SaveToStream(S);
                S.Position := 0 ;
               end
                 else
               begin
               ImageCompanyOptionImg.Picture.Graphic := nil;
               ImageCompanyOptionImg.ImageIndex:=0;
               ImageCompanyOptionImg.Grayed:=True;
                 end ;

             finally
              S.Free;
             end;

              post;

            end;

          end;

    end;

  begin
    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    Ini.WriteBool(Caption,   'Auto Print', APrintOptionGSlider.SliderOn);
    Ini.WriteInteger(Caption, 'Printer Caisse', PrintersListFOptionCaisseCbx.ItemIndex);
    Ini.WriteInteger(Caption, 'Printer Barcode', PrintersListFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format Barcode', FormatFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Prix de Vente', PrixVenteListFOptionCodeBCbx.ItemIndex);

    if PoleDisplayActiveSdr.SliderOn then
    begin
    Ini.WriteBool(Caption,'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
    Ini.WriteString(Caption,'Afficheur client PORT', PoleDisplayCOMListCbx.Text);
    Ini.WriteString(Caption,'Afficheur client Msg', PoleDisplayMsgEdt.Text);
    Ini.WriteString(Caption,'Afficheur client Msg2', PoleDisplayMsg2Edt.Text);
    Ini.WriteInteger(Caption,'Afficheur client Fin msg', PoleDisplayTotalEdt.ItemIndex);
    end else
        begin
           Ini.WriteBool(Caption,'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
        end;

    if TiroirCaisseActiveSdr.SliderOn then
    begin
    Ini.WriteBool(Caption,'Tiroir caisse Active', TiroirCaisseActiveSdr.SliderOn);
     if TiroirCaisseCaseCOMRbtn.Checked then
     begin
     Ini.WriteInteger(Caption,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag);
     Ini.WriteString(Caption,'Tiroir caisse COM', TiroirCaisseCOMListCbx.Text);
     end else
         begin
          if TiroirCaisseCasePRINTRbtn.Checked then
          begin
           Ini.WriteInteger(Caption,'Tiroir caisse Cas', TiroirCaisseCasePRINTRbtn.Tag);
           Ini.WriteInteger(Caption,'Tiroir caisse PRINT', TiroirCaissePrinterListCbx.ItemIndex);
          end;
         end;
    Ini.WriteBool(Caption,'Tiroir caisse PASSWORD', TiroirCaisseCasePasswordSdr.SliderOn);
    end else
        begin
             Ini.WriteBool(Caption,'Tiroir caisse Active', TiroirCaisseActiveSdr.SliderOn);
        end;


    Ini.Free;
//  inherited;
  end;

   Close;
  end;

procedure TFOptions.ImageCompanyOptionImgMouseEnter(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse enter
  if ImageCompanyOptionImg.Picture.Graphic = nil then
  begin
    ImageCompanyOptionImg.Grayed:=false;
    ImageCompanyOptionImg.Blend:=20;
  end else
      begin
      ImageCompanyOptionImg.Grayed:=false;
      ImageCompanyOptionImg.Blend:=20;
      end;
end;

procedure TFOptions.ImageCompanyOptionImgMouseLeave(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse leave
  if  ImageCompanyOptionImg.Picture.Graphic <> nil then
    begin
     ImageCompanyOptionImg.Grayed:= False;
     ImageCompanyOptionImg.Blend:=0;
     end else
    begin
    ImageCompanyOptionImg.Grayed:= true;
    ImageCompanyOptionImg.Blend:=50;
    end;
end;

procedure TFOptions.ImageCompanyOptionImgClick(Sender: TObject);
var
 Jpg:  TJPEGImage;
 bmp: TBitmap;
 scale: Double;
begin

 if  OpenPictureDialogProduitG.Execute then
 begin
   Jpg := TJPEGImage.Create;
   try
   ImageEditProduitGBtn.Visible:=true;
   ImageDeleteProduitGBtn.Visible:=True;
   ImageCompanyOptionImg.Stretch:=True;
   ImageCompanyOptionImg.Grayed:=False;
   ImageCompanyOptionImg.Blend:=0;
   ImageCompanyOptionImg.ImageIndex:= -1;

    Jpg.LoadFromFile(OpenPictureDialogProduitG.FileName);
          if jpg.Height > jpg.Width then
        scale := 1200 / jpg.Height
      else
        scale := 1920 / jpg.Width;
      bmp := TBitmap.Create;
      try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg.Width * scale);
        bmp.Height:= Round(jpg.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
        {Convert back to JPEG and save to file}
          jpg.Assign(bmp);
        {CompressionQuality JPEG and save to file}

//          Jpg.CompressionQuality:= 50;
//          Jpg.Compress;

          ImageCompanyOptionImg.Picture.Assign(Jpg);
      finally
        bmp.free;
      end;

   finally

     Jpg.Free

   end;

 end else begin exit
 end;

end;

procedure TFOptions.ImageDeleteProduitGBtnClick(Sender: TObject);
begin
ImageEditProduitGBtn.Visible:=false;
ImageDeleteProduitGBtn.Visible:=false;
ImageCompanyOptionImg.ImageIndex:=0;
ImageCompanyOptionImg.Stretch:=False;
ImageCompanyOptionImg.Grayed:=True;
ImageCompanyOptionImg.Blend:=40;
ImageCompanyOptionImg.Picture.Graphic:= nil;
OpenPictureDialogProduitG.CleanupInstance;
MainForm.CompanyTable.Edit;
MainForm.CompanyTable.FieldValues['logo_comp']:= null;
MainForm.CompanyTable.Post;
end;




procedure TFOptions.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

  close;

 end;

 if key = #13 then

  begin
   key := #0;
   OKFPrintingBtnClick(Sender);

  end;
end;



// this function is to get a liot of available COM ports
function ExtComName(ComNr: DWORD): string;
begin
  if ComNr > 9 then
    Result := Format('\\\\.\\COM%d', [ComNr])
  else
    Result := Format('COM%d', [ComNr]);
end;

function CheckCom(AComNumber: Integer): Integer;
var
  FHandle: THandle;
begin
  Result := 0;
  FHandle := CreateFile(PChar(ExtComName(AComNumber)),
    GENERIC_READ or GENERIC_WRITE,
    0, {exclusive access}
    nil, {no security attrs}
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle)
  else
    Result := GetLastError;
end;


procedure TFOptions.PoleDisplayCOMListCbxDropDown(Sender: TObject);
var
  XX, Err: Integer;
  begin
    PoleDisplayCOMListCbx.Items.Clear;
    for XX := 1 to 20 do
    begin
      Err := CheckCom(XX);
      if (Err = 0) or (Err = ERROR_ACCESS_DENIED) then
      begin
        {the Port exists, if  Err = ERROR_ACCESS_DENIED then the port is already open}
//        ShowMessage('Port COM'+ IntToStr(xx)) ;
        PoleDisplayCOMListCbx.Items.Add('COM'+IntToStr(xx));
        //  Break
        end;

        end;

end;

procedure TFOptions.TiroirCaisseCOMListCbxDropDown(Sender: TObject);
var
  XX, Err: Integer;
  begin
    TiroirCaisseCOMListCbx.Items.Clear;
    for XX := 1 to 20 do
    begin
      Err := CheckCom(XX);
      if (Err = 0) or (Err = ERROR_ACCESS_DENIED) then
      begin
        {the Port exists, if  Err = ERROR_ACCESS_DENIED then the port is already open}
//        ShowMessage('Port COM'+ IntToStr(xx)) ;
        TiroirCaisseCOMListCbx.Items.Add('COM'+IntToStr(xx));
        //  Break
        end;

        end;

end;

procedure TFOptions.TiroirCaisseCaseCOMRbtnClick(Sender: TObject);
begin

  CaseCOMLbl.Enabled:= True;
  TiroirCaisseCOMListCbx.Enabled:= True;

  CasePrinterLbl.Enabled:= False;
  TiroirCaissePrinterListCbx.Enabled:= False;


end;

procedure TFOptions.TiroirCaisseCasePRINTRbtnClick(Sender: TObject);
begin

  CasePrinterLbl.Enabled:= True;
  TiroirCaissePrinterListCbx.Enabled:= True;

  CaseCOMLbl.Enabled:= False;
  TiroirCaisseCOMListCbx.Enabled:= False;

end;



procedure TFOptions.PoleDisplayActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin

 if PoleDisplayActiveSdr.SliderOn = False then
  begin
  PoleDisplayCOMListLbl.Enabled:=True;
  PoleDisplayCOMListCbx.Enabled:=True;

  PoleDisplayMsgLbl.Enabled:=True;
  PoleDisplayMsgEdt.Enabled:=True;
  PoleDisplayMsg2Lbl.Enabled:=True;
  PoleDisplayMsg2Edt.Enabled:=True;

  PoleDisplayTotalLbl.Enabled:=True;
  PoleDisplayTotalEdt.Enabled:=True;

  TestPoleBtn.Enabled:=True;
  TestPoleLbl.Enabled:=True;

  end else
      begin
        PoleDisplayCOMListLbl.Enabled:=False;
        PoleDisplayCOMListCbx.Enabled:=False;

        PoleDisplayMsgLbl.Enabled:=False;
        PoleDisplayMsgEdt.Enabled:=False;
        PoleDisplayMsg2Lbl.Enabled:=False;
        PoleDisplayMsg2Edt.Enabled:=False;

        PoleDisplayTotalLbl.Enabled:=False;
        PoleDisplayTotalEdt.Enabled:=False;

        TestPoleBtn.Enabled:=False;
        TestPoleLbl.Enabled:=False;
      end;



end;





procedure TFOptions.TiroirCaisseActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
    if TiroirCaisseActiveSdr.SliderOn = False then
  begin

    TiroirCaisseCaseCOMRbtn.Enabled:=True;
    CaseCOMLbl.Enabled:=True;
    TiroirCaisseCOMListCbx.Enabled:=True;

    TiroirCaisseCasePRINTRbtn.Enabled:=True;
    CasePrinterLbl.Enabled:=True;
    TiroirCaissePrinterListCbx.Enabled:=True;

    TiroirCaisseCasePasswordLbl.Enabled:=True;
    TiroirCaisseCasePasswordSdr.Enabled:=True;

    TestTeroirBtn.Enabled:=True;
    TestTeroirLbl.Enabled:=True;


  end else
      begin

          TiroirCaisseCaseCOMRbtn.Enabled:=False;
          CaseCOMLbl.Enabled:=False;
          TiroirCaisseCOMListCbx.Enabled:=False;

          TiroirCaisseCasePRINTRbtn.Enabled:=False;
          CasePrinterLbl.Enabled:=False;
          TiroirCaissePrinterListCbx.Enabled:=False;

          TiroirCaisseCasePasswordLbl.Enabled:=False;
          TiroirCaisseCasePasswordSdr.Enabled:=False;
          TiroirCaisseCasePasswordSdr.SliderOn:=False;

          TestTeroirBtn.Enabled:=False;
          TestTeroirLbl.Enabled:=False;
                 end;


end;


procedure TFOptions.TestPoleBtnClick(Sender: TObject);
begin
          try
            ComPort1.Port := PoleDisplayCOMListCbx.Text;// 'COM7';
            ComPort1.Events := [];
            ComPort1.FlowControl.ControlDTR := dtrEnable;
            ComPort1.FlowControl.ControlRTS := rtsEnable;
            ComPort1.Open; // open port
            ComPort1.WriteUnicodeString('                                        '#13#10);
//            ComPort1.WriteUnicodeString('                                        '#13#10);
            ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
            ComPort1.Close;
          except
            ShowMessage('Svp, brancher l''Afficheur Client');
          end;


end;


procedure TFOptions.TestTeroirBtnClick(Sender: TObject);
var myPrinter   : TPrinter;

begin


  if TiroirCaisseCasePRINTRbtn.Checked then
  begin
    myPrinter := printer;
    with myPrinter do
    begin

      Printer.PrinterIndex:= TiroirCaissePrinterListCbx.ItemIndex;
      // Start printing
      BeginDoc;

      // Set up a large blue font
      Canvas.Font.Size   := 12;
      Canvas.Font.Color  := clBlack;

      // Write out the page size
      Canvas.TextOut(20, 40, 'C''est un TEST :D');

      // Finish printing
      EndDoc;
    end;
  end;

  if TiroirCaisseCaseCOMRbtn.Checked then
  begin
          try
            ComPort1.Port := TiroirCaisseCOMListCbx.Text;// 'COM7';
            ComPort1.Events := [];
            ComPort1.FlowControl.ControlDTR := dtrEnable;
            ComPort1.FlowControl.ControlRTS := rtsEnable;
            ComPort1.Open; // open port
            ComPort1.WriteUnicodeString('                                        '#13#10);
            ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
            ComPort1.Close;
          except
            ShowMessage('Svp, brancher le Tiroir Caisse');
          end;
  end;


end;

End.

