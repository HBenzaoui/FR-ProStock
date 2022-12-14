
unit USplashPrinting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, acImage,
  AdvToolBtn, frxClass, frxPreview, Vcl.Buttons, sSpeedButton, Vcl.Samples.Spin,
  sEdit, sSpinEdit, frxDBSet, frxBarcode;

type
  TFSplashPrinting = class(TForm)
    NameAddCompteSLbl: TLabel;
    Image1: TsImage;
    CompteAddCompteSLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    LineP: TPanel;
    FormatFPrintingCbx: TComboBox;
    TitleFPrintingEdt: TEdit;
    PrintersListFPrintingCbx: TComboBox;
    PrixFPrintingCbx: TComboBox;
    OKFPrintingBtn: TAdvToolButton;
    PrintTicketfrxRprt: TfrxReport;
    PrintTicketfrxPreview: TfrxPreview;
    SetDeafultFPrintingBtn: TAdvToolButton;
    PrintFPrintingBtn: TsSpeedButton;
    NumberPagesPrintingSpn: TsSpinEdit;
    frxProduitDB: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxReport1: TfrxReport;
    frxReport3: TfrxReport;
    frxReport4: TfrxReport;
    frxReport5: TfrxReport;
    frxReport47X30: TfrxReport;
    frxReport47X30s: TfrxReport;
    frxReport58X45p: TfrxReport;
    procedure OKFPrintingBtnClick(Sender: TObject);
    procedure SetDeafultFPrintingBtnClick(Sender: TObject);
    procedure PrintFPrintingBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormatFPrintingCbxChange(Sender: TObject);
    procedure TitleFPrintingEdtChange(Sender: TObject);
    procedure PrixFPrintingCbxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FSplashPrinting: TFSplashPrinting;

implementation

uses IniFiles,
  UClientGestion, Printers, UMainF, UOptions;

{$R *.dfm}

var
Ini: TIniFile;


 procedure SetDefaultPrinter(NewDefPrinter: string);
var
  ResStr: array[0..255] of Char;
begin
  StrPCopy(ResStr, NewdefPrinter);
  WriteProfileString('windows', 'device', ResStr);
  StrCopy(ResStr, 'windows');
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@ResStr));
end;


procedure TFSplashPrinting.OKFPrintingBtnClick(Sender: TObject);
begin
          AnimateWindow(FSplashPrinting.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
          FSplashPrinting.Release;
end;

procedure TFSplashPrinting.SetDeafultFPrintingBtnClick(Sender: TObject);
begin
SetDefaultPrinter(PrintersListFPrintingCbx.Text);
end;

procedure TFSplashPrinting.PrintFPrintingBtnClick(Sender: TObject);
begin

  //40X20 Code 128 avec prix
  if FormatFPrintingCbx.ItemIndex = 0 then
  begin
    PrintTicketfrxRprt.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    PrintTicketfrxRprt.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    PrintTicketfrxRprt.PrintOptions.ShowDialog := False;
    PrintTicketfrxRprt.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //40X20 Code 128 sans prix
  if FormatFPrintingCbx.ItemIndex = 1 then
  begin
    frxReport1.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport1.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //40X20 Code 128 sans tous
  if FormatFPrintingCbx.ItemIndex = 2 then
  begin
    frxReport2.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport2.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport2.PrintOptions.ShowDialog := False;
    frxReport2.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //45X35 Code 128 avec prix
  if FormatFPrintingCbx.ItemIndex = 3 then
  begin
    frxReport3.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport3.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport3.PrintOptions.ShowDialog := False;
    frxReport3.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //45X35 Code 128 sans prix
  if FormatFPrintingCbx.ItemIndex = 4 then
  begin
    frxReport4.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport4.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport4.PrintOptions.ShowDialog := False;
    frxReport4.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //40X20 Porduit avec prix
  if FormatFPrintingCbx.ItemIndex = 5 then
  begin
    frxReport5.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport5.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport5.PrintOptions.ShowDialog := False;
    frxReport5.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //47X30 Code 128 sans prix
  if FormatFPrintingCbx.ItemIndex = 6 then
  begin
    frxReport47X30.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport47X30.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport47X30.PrintOptions.ShowDialog := False;
    frxReport47X30.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //47X30 Code 128 sans prix
  if FormatFPrintingCbx.ItemIndex = 7 then
  begin
    frxReport47X30s.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport47X30s.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport47X30s.PrintOptions.ShowDialog := False;
    frxReport47X30s.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  //58X45 Porduit avec prix
  if FormatFPrintingCbx.ItemIndex = 5 then
  begin
    frxReport58X45p.PrintOptions.Copies:= NumberPagesPrintingSpn.Value ;
    frxReport58X45p.PrintOptions.Printer:= PrintersListFPrintingCbx.Text ;
    frxReport58X45p.PrintOptions.ShowDialog := False;
    frxReport58X45p.Print;
    PrintTicketfrxPreview.RefreshReport;
  end;

  Printer.PrinterIndex:= -1;

end;

procedure TFSplashPrinting.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  // Up key
//  if Key = VK_UP then
//    // previous control
//    SelectNext(Self.ActiveControl, false, true);
//  // Down key
//  if Key = VK_DOWN then
//    // next control
//    SelectNext(Self.ActiveControl, true, true);
end;

procedure TFSplashPrinting.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

  OKFPrintingBtnClick(Sender);

 end;
 
   if key = #13 then
  begin
   key := #0;
   PrintFPrintingBtnClick(Sender);
  end;
end;

procedure TFSplashPrinting.FormShow(Sender: TObject);
begin
  if Ini.ReadBool('', 'Is EU',False) then
  begin
    //Here we add France data
    PrixFPrintingCbx.Items.BeginUpdate;
    PrixFPrintingCbx.Items.Clear;
    PrixFPrintingCbx.Items.Add('Particulier');
    PrixFPrintingCbx.Items.Add('Professional');
    PrixFPrintingCbx.Items.Add('Soci?t?');
    PrixFPrintingCbx.Items.Add('Cat?gorie 1');
    PrixFPrintingCbx.Items.Add('Cat?gorie 2');
    PrixFPrintingCbx.Items.EndUpdate;
  //    PrixFPrintingCbx.ItemIndex:= 0;
  end else
   begin
      PrixFPrintingCbx.Items.BeginUpdate;
      PrixFPrintingCbx.Items.Clear;
      PrixFPrintingCbx.Items.Add('D?taillant');
      PrixFPrintingCbx.Items.Add('Revendeur');
      PrixFPrintingCbx.Items.Add('Gros');
      PrixFPrintingCbx.Items.Add('Autre 1');
      PrixFPrintingCbx.Items.Add('Autre 2');
      PrixFPrintingCbx.Items.EndUpdate;
  //      PrixFPrintingCbx.ItemIndex:= 0;
   end;
  PrintersListFPrintingCbx.ItemIndex := Ini.ReadInteger('', 'Printer Barcode',0);
  FormatFPrintingCbx.ItemIndex := Ini.ReadInteger('', 'Format Barcode',0);
  PrixFPrintingCbx.ItemIndex := Ini.ReadInteger('', 'Prix de Vente',0);

  FormatFPrintingCbxChange(Sender);

  TitleFPrintingEdt.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString;

  PrixFPrintingCbxChange(Sender);



end;

procedure TFSplashPrinting.FormatFPrintingCbxChange(Sender: TObject);
var
  Name,Prix : TfrxMemoView;
begin
if FormatFPrintingCbx.ItemIndex <> -1 then
  begin
    //40X20 Code 128 avec prix
    if FormatFPrintingCbx.ItemIndex = 0 then
    begin
       Name:= PrintTicketfrxRprt.FindObject('Name') as TfrxMemoView;
     Name.Text:= TitleFPrintingEdt.Text ;

     PrintTicketfrxRprt.PrepareReport;
     PrintTicketfrxPreview.Zoom:=1.12;

     PrintTicketfrxPreview.Top:= 80;
     PrintTicketfrxPreview.Height:= 100;
     PrintTicketfrxPreview.Left:= 354;
     PrixFPrintingCbx.Enabled:= True;
     PrixFPrintingCbxChange(Sender);

    end;
    //40X20 Code 128 sans prix
    if FormatFPrintingCbx.ItemIndex = 1 then
    begin
      Name:= frxReport1.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

      frxReport1.PrepareReport;
      PrintTicketfrxPreview.Zoom:=1.12;

      PrintTicketfrxPreview.Top:= 80;
      PrintTicketfrxPreview.Height:= 100;
      PrintTicketfrxPreview.Left:= 354;
      PrixFPrintingCbx.Enabled:= False;

    end;

    //40X20 Code 128 sans tous
    if FormatFPrintingCbx.ItemIndex = 2 then
    begin
           Name:= frxReport2.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;


       frxReport2.PrepareReport;
       PrintTicketfrxPreview.Zoom:=1.12;

       PrintTicketfrxPreview.Top:= 80;
       PrintTicketfrxPreview.Height:= 100;
       PrintTicketfrxPreview.Left:= 354;
       PrixFPrintingCbx.Enabled:= False;
    end;

    //45X35 Code 128 avec prix
    if FormatFPrintingCbx.ItemIndex = 3 then
    begin

        Name:= frxReport3.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;
        begin
        if PrixFPrintingCbx.ItemIndex = 0 then
        begin
                 Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);
            frxReport3.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 1 then
        begin
            Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);
            frxReport3.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 2 then
        begin
              Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);
           frxReport3.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 3 then
        begin
            Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);
            frxReport3.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 4 then
        begin
             Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);
            frxReport3.PrepareReport;
        end;
      end;


        frxReport3.PrepareReport;
        PrintTicketfrxPreview.Top:= 48;
        PrintTicketfrxPreview.Height:= 157;
        PrintTicketfrxPreview.Left:= 354;
        PrixFPrintingCbx.Enabled:= True;
        PrixFPrintingCbxChange(Sender);
    end;

    //45X35 Code 128 sans prix
    if FormatFPrintingCbx.ItemIndex = 4 then
    begin

        Name:= frxReport4.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

        frxReport4.PrepareReport;
        PrintTicketfrxPreview.Top:= 48;
        PrintTicketfrxPreview.Height:= 157;
        PrintTicketfrxPreview.Left:= 354;
        PrixFPrintingCbx.Enabled:= False;
    end;

    //40X20 Porduit avec prix
    if FormatFPrintingCbx.ItemIndex = 5 then
    begin

        Name:= frxReport5.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;
              begin
        if PrixFPrintingCbx.ItemIndex = 0 then
        begin
                 Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);
            frxReport5.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 1 then
        begin
            Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);
            frxReport5.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 2 then
        begin
              Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);
           frxReport5.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 3 then
        begin
            Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);
            frxReport5.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 4 then
        begin
             Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);
            frxReport5.PrepareReport;
        end;
      end;

        frxReport5.PrepareReport;
      PrintTicketfrxPreview.Zoom:=1.12;

      PrintTicketfrxPreview.Top:= 80;
      PrintTicketfrxPreview.Height:= 100;
      PrintTicketfrxPreview.Left:= 354;
     PrixFPrintingCbx.Enabled:= True;
      PrixFPrintingCbxChange(Sender);
    end;

    //47X30 Code 128 avec prix
    if FormatFPrintingCbx.ItemIndex = 6 then
    begin

        Name:= frxReport47X30.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;
        begin
        if PrixFPrintingCbx.ItemIndex = 0 then
        begin
                 Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);
            frxReport47X30.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 1 then
        begin
            Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);
            frxReport47X30.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 2 then
        begin
              Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);
           frxReport47X30.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 3 then
        begin
            Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);
            frxReport47X30.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 4 then
        begin
             Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);
            frxReport47X30.PrepareReport;
        end;
      end;


        frxReport47X30.PrepareReport;
        PrintTicketfrxPreview.Top:= 48;
        PrintTicketfrxPreview.Height:= 157;
        PrintTicketfrxPreview.Left:= 354;
        PrixFPrintingCbx.Enabled:= True;
        PrixFPrintingCbxChange(Sender);
    end;

    //47X30 Code 128 sans prix
    if FormatFPrintingCbx.ItemIndex = 7 then
    begin

        Name:= frxReport47X30s.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

        frxReport47X30s.PrepareReport;
        PrintTicketfrxPreview.Top:= 48;
        PrintTicketfrxPreview.Height:= 157;
        PrintTicketfrxPreview.Left:= 354;
        PrixFPrintingCbx.Enabled:= False;
    end;


    //58X45 Porduit avec prix
    if FormatFPrintingCbx.ItemIndex = 8 then
    begin

        Name:= frxReport58X45p.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;
              begin
        if PrixFPrintingCbx.ItemIndex = 0 then
        begin
                 Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);
            frxReport58X45p.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 1 then
        begin
            Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);
            frxReport58X45p.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 2 then
        begin
              Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);
           frxReport58X45p.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 3 then
        begin
            Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);
            frxReport58X45p.PrepareReport;
        end;
            if PrixFPrintingCbx.ItemIndex = 4 then
        begin
             Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
          Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);
            frxReport58X45p.PrepareReport;
        end;
      end;

        frxReport58X45p.PrepareReport;
        PrintTicketfrxPreview.Zoom:=0.775;

        PrintTicketfrxPreview.Top:= 48;
        PrintTicketfrxPreview.Height:= 157;
        PrintTicketfrxPreview.Left:= 354;
        PrixFPrintingCbx.Enabled:= True;
        PrixFPrintingCbxChange(Sender);
    end;

  end;

end;

procedure TFSplashPrinting.TitleFPrintingEdtChange(Sender: TObject);
var
  Name,Prix : TfrxMemoView;
begin
      if FormatFPrintingCbx.ItemIndex = 0 then
    begin
       Name:= PrintTicketfrxRprt.FindObject('Name') as TfrxMemoView;
     Name.Text:= TitleFPrintingEdt.Text ;

     PrintTicketfrxRprt.PrepareReport;
     PrintTicketfrxPreview.Zoom:=1.12;


    end;
        if FormatFPrintingCbx.ItemIndex = 1 then
    begin
      Name:= frxReport1.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

      frxReport1.PrepareReport;
      PrintTicketfrxPreview.Zoom:=1.12;

    end;
        if FormatFPrintingCbx.ItemIndex = 2 then
    begin
           Name:= frxReport2.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;


       frxReport2.PrepareReport;
       PrintTicketfrxPreview.Zoom:=1.12;
    end;
        if FormatFPrintingCbx.ItemIndex = 3 then
    begin

        Name:= frxReport3.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;


        frxReport3.PrepareReport;

    end;
        if FormatFPrintingCbx.ItemIndex = 4 then
    begin

        Name:= frxReport4.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

        frxReport4.PrepareReport;

    end;
end;

procedure TFSplashPrinting.PrixFPrintingCbxChange(Sender: TObject);

var
  Prix,Name : TfrxMemoView;
begin

    //40X20 Code 128 avec prix
    if FormatFPrintingCbx.ItemIndex = 0 then
    begin
     Name:= PrintTicketfrxRprt.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

        if PrixFPrintingCbx.ItemIndex = 0 then
      begin
         Prix:= PrintTicketfrxRprt.FindObject('Prix') as TfrxMemoView;
       Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsCurrency,ffCurrency,2);

       PrintTicketfrxRprt.PrepareReport;
        PrintTicketfrxPreview.Zoom:=1.12;

      end;
          if PrixFPrintingCbx.ItemIndex = 1 then
      begin
             Prix:= PrintTicketfrxRprt.FindObject('Prix') as TfrxMemoView;
       Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsCurrency,ffCurrency,2);

          PrintTicketfrxRprt.PrepareReport;
         PrintTicketfrxPreview.Zoom:=1.12;

      end;
          if PrixFPrintingCbx.ItemIndex = 2 then
      begin
             Prix:= PrintTicketfrxRprt.FindObject('Prix') as TfrxMemoView;
       Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsCurrency,ffCurrency,2);

          PrintTicketfrxRprt.PrepareReport;
          PrintTicketfrxPreview.Zoom:=1.12;
      end;
          if PrixFPrintingCbx.ItemIndex = 3 then
      begin

             Prix:= PrintTicketfrxRprt.FindObject('Prix') as TfrxMemoView;
       Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsCurrency,ffCurrency,2);

          PrintTicketfrxRprt.PrepareReport;
          PrintTicketfrxPreview.Zoom:=1.12;
      end;
          if PrixFPrintingCbx.ItemIndex = 4 then
      begin
             Prix:= PrintTicketfrxRprt.FindObject('Prix') as TfrxMemoView;
       Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsCurrency,ffCurrency,2);

          PrintTicketfrxRprt.PrepareReport;
         PrintTicketfrxPreview.Zoom:=1.12;

      end;

    end;

    //45X35 Code 128 avec prix
    if FormatFPrintingCbx.ItemIndex = 3 then
    begin

        Name:= frxReport3.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

      if PrixFPrintingCbx.ItemIndex = 0 then
      begin
               Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);

          frxReport3.PrepareReport;

      end;
          if PrixFPrintingCbx.ItemIndex = 1 then
      begin
          Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);

          frxReport3.PrepareReport;

      end;
          if PrixFPrintingCbx.ItemIndex = 2 then
      begin
            Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);

         frxReport3.PrepareReport;
      end;
          if PrixFPrintingCbx.ItemIndex = 3 then
      begin
          Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);

          frxReport3.PrepareReport;
      end;
          if PrixFPrintingCbx.ItemIndex = 4 then
      begin
           Prix:= frxReport3.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);

          frxReport3.PrepareReport;

      end;

    end;

    //40X20 Porduit avec prix
    if FormatFPrintingCbx.ItemIndex = 5 then
    begin

        Name:= frxReport5.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

      if PrixFPrintingCbx.ItemIndex = 0 then
      begin
               Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);

        frxReport5.PrepareReport;
        PrintTicketfrxPreview.Zoom:=1.12;

      end;
          if PrixFPrintingCbx.ItemIndex = 1 then
      begin
          Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);

          frxReport5.PrepareReport;
          PrintTicketfrxPreview.Zoom:=1.12;

      end;
          if PrixFPrintingCbx.ItemIndex = 2 then
      begin
            Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);

         frxReport5.PrepareReport;
         PrintTicketfrxPreview.Zoom:=1.12;
      end;
          if PrixFPrintingCbx.ItemIndex = 3 then
      begin
          Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);

          frxReport5.PrepareReport;
          PrintTicketfrxPreview.Zoom:=1.12;
      end;
          if PrixFPrintingCbx.ItemIndex = 4 then
      begin
           Prix:= frxReport5.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);

          frxReport5.PrepareReport;
          PrintTicketfrxPreview.Zoom:=1.12;

      end;

    end;

    //47X30 Code 128 sans prix
    if FormatFPrintingCbx.ItemIndex = 6 then
    begin

        Name:= frxReport47X30.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

      if PrixFPrintingCbx.ItemIndex = 0 then
      begin
               Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);

          frxReport47X30.PrepareReport;

      end;
          if PrixFPrintingCbx.ItemIndex = 1 then
      begin
          Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);

          frxReport47X30.PrepareReport;

      end;
          if PrixFPrintingCbx.ItemIndex = 2 then
      begin
            Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);

         frxReport47X30.PrepareReport;
      end;
          if PrixFPrintingCbx.ItemIndex = 3 then
      begin
          Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);

          frxReport47X30.PrepareReport;
      end;
          if PrixFPrintingCbx.ItemIndex = 4 then
      begin
           Prix:= frxReport47X30.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);

          frxReport47X30.PrepareReport;

      end;

    end;


     //58X45 Porduit avec prix
    if FormatFPrintingCbx.ItemIndex = 8 then
    begin

        Name:= frxReport58X45p.FindObject('Name') as TfrxMemoView;
      Name.Text:= TitleFPrintingEdt.Text ;

      if PrixFPrintingCbx.ItemIndex = 0 then
      begin
               Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCD').AsFloat,ffCurrency,2);

          frxReport58X45p.PrepareReport;
          PrintTicketfrxPreview.Zoom:=0.775;

      end;
          if PrixFPrintingCbx.ItemIndex = 1 then
      begin
          Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCR').AsFloat,ffCurrency,2);

          frxReport58X45p.PrepareReport;
          PrintTicketfrxPreview.Zoom:=0.775;

      end;
          if PrixFPrintingCbx.ItemIndex = 2 then
      begin
            Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCG').AsFloat,ffCurrency,2);

         frxReport58X45p.PrepareReport;
         PrintTicketfrxPreview.Zoom:=0.775;

      end;
          if PrixFPrintingCbx.ItemIndex = 3 then
      begin
          Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA').AsFloat,ffCurrency,2);

          frxReport58X45p.PrepareReport;
          PrintTicketfrxPreview.Zoom:=0.775;

      end;
          if PrixFPrintingCbx.ItemIndex = 4 then
      begin
           Prix:= frxReport58X45p.FindObject('Prix') as TfrxMemoView;
        Prix.Text:= CurrToStrF (MainForm.ProduitTable.FieldByName('PrixVTTCA2').AsFloat,ffCurrency,2);

          frxReport58X45p.PrepareReport;
          PrintTicketfrxPreview.Zoom:=0.775;

      end;

    end;

end;

procedure TFSplashPrinting.FormCreate(Sender: TObject);
begin

  Height := 291;

 GrayForms;

  PrintersListFPrintingCbx.Items.Assign(Printer.Printers);

  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));


end;

procedure TFSplashPrinting.FormDestroy(Sender: TObject);
begin
NormalForms;

Ini.free
end;

end.


