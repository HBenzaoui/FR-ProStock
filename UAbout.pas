unit UAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, acPNG, Vcl.ExtCtrls, acImage,
  Vcl.StdCtrls, dxGDIPlusClasses;

type
  TAboutF = class(TForm)
    sImage2: TsImage;
    NameAboutF: TLabel;
    Label1: TLabel;
    ImageCompanyOptionImg: TsImage;
    sImage1: TsImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Label9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutF: TAboutF;

implementation

{$R *.dfm}

uses UMainF;

procedure TAboutF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms  ;
end;



procedure TAboutF.FormCreate(Sender: TObject);
var
  rgn: HRGN;
  sCmd: string;
begin

  Borderstyle := bsNone;
  rgn := CreateRoundRectRgn(0,// x-coordinate of the region's upper-left corner
    0,            // y-coordinate of the region's upper-left corner
    ClientWidth,  // x-coordinate of the region's lower-right corner
    ClientHeight, // y-coordinate of the region's lower-right corner
    9,           // height of ellipse for rounded corners
    9);          // width of ellipse for rounded corners
  SetWindowRgn(Handle, rgn, True);
//  BorderStyle := bsNone;
//  CreateFlatRoundRgn;


//  Top:=  (Screen.Width-Width)  div 2;
//  Left:= (Screen.Height-Height) div 2;

            Left:=  (MainForm.Width div 2 ) - (Width div 2)    ;
            Top:=  100   ;

end;

procedure TAboutF.FormShow(Sender: TObject);
begin
GrayForms  ;
end;

procedure TAboutF.Label9Click(Sender: TObject);
begin
 close;
end;

end.
