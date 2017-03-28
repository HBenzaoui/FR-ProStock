unit UOptions;

interface

uses
  Winapi.Windows,Data.DB,Vcl.Imaging.jpeg, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, sPanel,
  acSlider, AdvToolBtn, acImage, Vcl.ExtDlgs, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, sPageControl;

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
    ProduitGPgControl: TsPageControl;
    GeneralOptionGTB: TsTabSheet;
    sTabSheet1: TsTabSheet;
    Panel1: TPanel;
    Label11: TLabel;
    Panel5: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label12: TLabel;
    PoleDisplayActiveSdr: TsSlider;
    Label13: TLabel;
    PoleDisplayCOMListCbx: TComboBox;
    Label14: TLabel;
    sSlider1: TsSlider;
    Label15: TLabel;
    ComboBox1: TComboBox;
    Label16: TLabel;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKFPrintingBtnClick(Sender: TObject);
    procedure ImageCompanyOptionImgMouseEnter(Sender: TObject);
    procedure ImageCompanyOptionImgMouseLeave(Sender: TObject);
    procedure ImageCompanyOptionImgClick(Sender: TObject);
    procedure ImageDeleteProduitGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PoleDisplayCOMListCbxEnter(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOptions: TFOptions;

implementation

uses
       Printers,IniFiles, UClientGestion, UMainF;

{$R *.dfm}

procedure TFOptions.FormShow(Sender: TObject);
var
  S: TMemoryStream;
  Jpg: TJPEGImage;
  Ini: TIniFile;
begin
 GrayForms;

//    inherited;



    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    APrintOptionGSlider.SliderOn:=      Ini.ReadBool('', 'Auto Print',APrintOptionGSlider.SliderOn);
    PrintersListFOptionCaisseCbx.ItemIndex:= Ini.ReadInteger('', 'Printer Caisse',PrintersListFOptionCaisseCbx.ItemIndex);
    PrintersListFOptionCodeBCbx.ItemIndex := Ini.ReadInteger('', 'Printer Barcode',PrintersListFOptionCodeBCbx.ItemIndex);
    FormatFOptionCodeBCbx.ItemIndex := Ini.ReadInteger('', 'Format Barcode',FormatFOptionCodeBCbx.ItemIndex);
    PrixVenteListFOptionCodeBCbx.ItemIndex := Ini.ReadInteger('', 'Prix de Vente',PrixVenteListFOptionCodeBCbx.ItemIndex);
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

procedure TFOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
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
//    PrintersListFOptionCodeBCbx.Text := Ini.ReadInteger(Caption, 'Prix de Vente',PrintersListFOptionCodeBCbx.ItemIndex);
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

 end else exit

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

procedure TFOptions.FormCreate(Sender: TObject);
begin

   PrintersListFOptionCaisseCbx.Items.Assign(Printer.Printers);
   PrintersListFOptionCodeBCbx.Items.Assign(Printer.Printers);

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
procedure TFOptions.PoleDisplayCOMListCbxEnter(Sender: TObject);
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
//        ShowMessage('Port COM0'+ IntToStr(xx)) ;
        PoleDisplayCOMListCbx.Items.Add('COM0'+IntToStr(xx));
        //  Break
        end;

        end;

end;

End.

