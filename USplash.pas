unit USplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFSplash = class(TForm)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

{$R *.dfm}

end.
