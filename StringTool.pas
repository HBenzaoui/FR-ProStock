unit StringTool;

//{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,AnsiStrings;
function NombreEnToutesLettres(n : integer) : string;
function MontantEnToutesLettres(f : double) : string;

implementation
function NombreEnToutesLettres(n : integer) : string;
Const
  unite : array[1..16] of string  = ('un','deux','trois','quatre','cinq','six',
                                     'sept','huit','neuf','dix','onze','douze',
                                     'treize','quatorze','quinze','seize');
  dizaine : array[2..8] of string = ('vingt','trente','quarante','cinquante',
                                     'soixante','','quatre-vingt');
  coefs : array[0..3] of string   = ('cent','mille','million','milliard');
Var
  temp    : string;
  c, d, u : byte;
  coef    : byte;
  i       : word;
  neg     : boolean;
Begin
  If n = 0 then begin
    Result := ' zéro';
    exit;
  end;

  Result := '';
  neg := n < 0;
  If neg then n := -n;

  coef:=0;
  Repeat
    u:=n mod 10; n:=n div 10; {Récupère unité et dizaine}
    d:=n mod 10; n:=n div 10; {Récupère dizaine}
    If d in [1,7,9] then begin
      Dec(d);
      Inc(u, 10);
    end;
    temp := '';
    if d > 1 then begin
      temp := Dizaine[d];
      if (d < 8) and ((u = 1) or (u = 11)) then
        temp := temp + ' et';
    end;
    if u > 16 then begin
      if temp = '' then
        temp := unite[10]
      else
        temp := temp + ' ' + unite[10];
      Dec(u, 10);
    end;
    if u > 0 then begin
      if temp <> '' then
        temp := temp + ' ';
	    temp := temp + unite[u];
    end;
    If (d = 8) and (u = 0) and ((Result = '') or (LeftStr(Result, 6) = ' milli')) then
	    Result := 's' + Result;
    Result := temp + Result;

    c := n mod 10; n := n div 10; {Récupère centaine}
    If c > 0 then begin
      temp := '';
      if c > 1 then
	      temp := unite[c] + ' ';
      temp := temp + coefs[0];
      if (Result <> '') and (LeftStr(Result, 1) <> ' ') then
        Result := ' ' + Result;
      if (c > 1) and ((Result = '') or (LeftStr(Result, 6) = ' milli')) then
        Result := 's' + Result;
      Result := temp + Result;
    end;

    if n > 0 then begin
      Inc(coef);
      I := n mod 1000;
      If (Result <> '') and (LeftStr(Result, 1) <> ' ') then
	      Result := ' ' + Result;
      If (i > 1) and (coef > 1) then
	      Result := 's' + Result;
      If i > 0 then
        Result := ' ' + coefs[coef] + Result;
      If (i = 1) and (coef = 1) then
  	    Dec(n);
    end;
  until n = 0;
  Result := Trim(Result);
  if neg then
    Result := 'moins ' + Result;
End;
//==============================================================================
function MontantEnToutesLettres(f : double) : string;
const
  Centieme = 'Centime';
  Monnaie = 'Dinar';
var
  i : Integer;
begin
  Result := '';

  // partie décimale
  i := Round(Frac(f) * 100);
  if i > 0 then begin // n'écrit pas "zéro centime" si partie décimale nulle
    if i > 1 then
      Result := 's';
    Result := ' et ' + NombreEnToutesLettres(i) + ' ' + Centieme + Result;
  end;

  // partie entière
  i := Trunc(f);
  if i > 1 then
    Result := 's' + Result;
  Result := NombreEnToutesLettres(i) + ' ' + Monnaie + Result;
end;
end.

