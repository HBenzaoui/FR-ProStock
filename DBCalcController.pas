unit DBCalcController;

interface

procedure CalcPrixAchatInBonVentes();

implementation

uses  System.SysUtils,Data.DB,
  UMainF, UDataModule, ULogin;


function getPrixP(codeP : Integer) :Double;
begin


 MainForm.FDQuery2.Active:= false;
 MainForm.FDQuery2.SQL.Clear;
 MainForm.FDQuery2.SQL.Text:= 'SELECT code_p, prixht_p FROM produit WHERE code_p = '+IntToStr(CodeP)+' ';
 MainForm.FDQuery2.Active:= true;

 Result:= MainForm.FDQuery2.FieldByName('prixht_p').AsFloat;

 MainForm.FDQuery2.Active:= false;
 MainForm.FDQuery2.SQL.Clear;


end;


procedure BLVCalcPrixA();
Var PrixP, sumPrixInBon :Double;
CodeP : Integer;
QutP, CondP : Double;
C: TDataSource;
begin

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.SQLQuery3.SQL.Text:= 'SELECT code_bvliv, montaht_bvliv FROM bonv_liv ORDER By code_bvliv';
    MainForm.SQLQuery3.Active:= true;

    C := TDataSource.Create(nil);
    try
      C.AutoEdit:= True;
      C.Enabled:=  True;
      C.DataSet := MainForm.SQLQuery3;
      C.Name:='CDataS';

       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;
       MainForm.SQLQuery.SQL.Text:= 'SELECT code_bvlivl, code_bvliv, code_p, qut_p, cond_p, prixht_p FROM bonv_liv_list ORDER BY code_bvlivl';
       MainForm.SQLQuery.Active:= true;

       MainForm.SQLQuery.MasterSource:=C;
       MainForm.SQLQuery.MasterFields:='code_bvliv';

       MainForm.SQLQuery.IndexFieldNames:= 'code_bvliv;code_bvlivl';
       MainForm.SQLQuery.UpdateOptions.KeyFields:= 'code_bvliv;code_bvlivl';

       MainForm.SQLQuery3.First;
       while NOT MainForm.SQLQuery3.Eof do
       begin

                 sumPrixInBon:=0;
                 MainForm.SQLQuery.First;
                 while NOT MainForm.SQLQuery.Eof do
                 begin
                   CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger;
                   PrixP:= getPrixP(CodeP);
                   QutP:=  MainForm.SQLQuery.FieldByName('qut_p').AsFloat;
                   CondP:= MainForm.SQLQuery.FieldByName('cond_p').AsFloat;

                   MainForm.SQLQuery.edit;
                   MainForm.SQLQuery.FieldByName('prixht_p').AsFloat:= PrixP;
                   MainForm.SQLQuery.Post;

                   sumPrixInBon:= sumPrixInBon + ((PrixP * QutP) * CondP );

                   MainForm.SQLQuery.next;
                 end;

         MainForm.SQLQuery3.edit;
         MainForm.SQLQuery3.FieldByName('montaht_bvliv').AsFloat:= sumPrixInBon;
         MainForm.SQLQuery3.Post;

         MainForm.SQLQuery3.next;

       end;

       MainForm.Bonv_livTable.Refresh;
       MainForm.SQLQuery.Refresh;

       MainForm.SQLQuery.MasterSource:=nil;
       MainForm.SQLQuery.MasterFields:='';

       MainForm.SQLQuery.IndexFieldNames:= '';
       MainForm.SQLQuery.UpdateOptions.KeyFields:='';
       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;

       MainForm.SQLQuery3.Active:= False;
       MainForm.SQLQuery3.SQL.Clear;

    finally
      C.Free;
    end;

end;

procedure FPVCalcPrixA();
Var PrixP, sumPrixInBon :Double;
CodeP : Integer;
QutP, CondP : Double;
C: TDataSource;
begin

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.SQLQuery3.SQL.Text:= 'SELECT code_bpfac, montaht_bpfac FROM bonp_fac ORDER By code_bpfac';
    MainForm.SQLQuery3.Active:= true;

    C := TDataSource.Create(nil);
    try
      C.AutoEdit:= True;
      C.Enabled:=  True;
      C.DataSet := MainForm.SQLQuery3;
      C.Name:='CDataS';

       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;
       MainForm.SQLQuery.SQL.Text:= 'SELECT code_bpfacl, code_bpfac, code_p, qut_p, cond_p, prixht_p FROM bonp_fac_list ORDER BY code_bpfacl';
       MainForm.SQLQuery.Active:= true;

       MainForm.SQLQuery.MasterSource:=C;
       MainForm.SQLQuery.MasterFields:='code_bpfac';

       MainForm.SQLQuery.IndexFieldNames:= 'code_bpfac;code_bpfacl';
       MainForm.SQLQuery.UpdateOptions.KeyFields:= 'code_bpfac;code_bpfacl';

       MainForm.SQLQuery3.First;
       while NOT MainForm.SQLQuery3.Eof do
       begin

                 sumPrixInBon:=0;
                 MainForm.SQLQuery.First;
                 while NOT MainForm.SQLQuery.Eof do
                 begin
                   CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger;
                   PrixP:= getPrixP(CodeP);
                   QutP:=  MainForm.SQLQuery.FieldByName('qut_p').AsFloat;
                   CondP:= MainForm.SQLQuery.FieldByName('cond_p').AsFloat;

                   MainForm.SQLQuery.edit;
                   MainForm.SQLQuery.FieldByName('prixht_p').AsFloat:= PrixP;
                   MainForm.SQLQuery.Post;

                   sumPrixInBon:= sumPrixInBon + ((PrixP * QutP) * CondP );

                   MainForm.SQLQuery.next;
                 end;

         MainForm.SQLQuery3.edit;
         MainForm.SQLQuery3.FieldByName('montaht_bpfac').AsFloat:= sumPrixInBon;
         MainForm.SQLQuery3.Post;

         MainForm.SQLQuery3.next;

       end;

       MainForm.Bonv_livTable.Refresh;
       MainForm.SQLQuery.Refresh;

       MainForm.SQLQuery.MasterSource:=nil;
       MainForm.SQLQuery.MasterFields:='';

       MainForm.SQLQuery.IndexFieldNames:= '';
       MainForm.SQLQuery.UpdateOptions.KeyFields:='';
       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;

       MainForm.SQLQuery3.Active:= False;
       MainForm.SQLQuery3.SQL.Clear;

    finally
      C.Free;
    end;

end;

procedure FVVCalcPrixA();
Var PrixP, sumPrixInBon :Double;
CodeP : Integer;
QutP, CondP : Double;
C: TDataSource;
begin

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.SQLQuery3.SQL.Text:= 'SELECT code_bvfac, montaht_bvfac FROM bonv_fac ORDER By code_bvfac';
    MainForm.SQLQuery3.Active:= true;

    C := TDataSource.Create(nil);
    try
      C.AutoEdit:= True;
      C.Enabled:=  True;
      C.DataSet := MainForm.SQLQuery3;
      C.Name:='CDataS';

       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;
       MainForm.SQLQuery.SQL.Text:= 'SELECT code_bvfacl, code_bvfac, code_p, qut_p, cond_p, prixht_p FROM bonv_fac_list ORDER BY code_bvfacl';
       MainForm.SQLQuery.Active:= true;

       MainForm.SQLQuery.MasterSource:=C;
       MainForm.SQLQuery.MasterFields:='code_bvfac';

       MainForm.SQLQuery.IndexFieldNames:= 'code_bvfac;code_bvfacl';
       MainForm.SQLQuery.UpdateOptions.KeyFields:= 'code_bvfac;code_bvfacl';

       MainForm.SQLQuery3.First;
       while NOT MainForm.SQLQuery3.Eof do
       begin

                 sumPrixInBon:=0;
                 MainForm.SQLQuery.First;
                 while NOT MainForm.SQLQuery.Eof do
                 begin
                   CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger;
                   PrixP:= getPrixP(CodeP);
                   QutP:=  MainForm.SQLQuery.FieldByName('qut_p').AsFloat;
                   CondP:= MainForm.SQLQuery.FieldByName('cond_p').AsFloat;

                   MainForm.SQLQuery.edit;
                   MainForm.SQLQuery.FieldByName('prixht_p').AsFloat:= PrixP;
                   MainForm.SQLQuery.Post;

                   sumPrixInBon:= sumPrixInBon + ((PrixP * QutP) * CondP );

                   MainForm.SQLQuery.next;
                 end;

         MainForm.SQLQuery3.edit;
         MainForm.SQLQuery3.FieldByName('montaht_bvfac').AsFloat:= sumPrixInBon;
         MainForm.SQLQuery3.Post;

         MainForm.SQLQuery3.next;

       end;

       MainForm.Bonv_livTable.Refresh;
       MainForm.SQLQuery.Refresh;

       MainForm.SQLQuery.MasterSource:=nil;
       MainForm.SQLQuery.MasterFields:='';

       MainForm.SQLQuery.IndexFieldNames:= '';
       MainForm.SQLQuery.UpdateOptions.KeyFields:='';
       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;

       MainForm.SQLQuery3.Active:= False;
       MainForm.SQLQuery3.SQL.Clear;

    finally
      C.Free;
    end;

end;

procedure CTRCalcPrixA();
Var PrixP, sumPrixInBon :Double;
CodeP : Integer;
QutP, CondP : Double;
C: TDataSource;
begin

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.SQLQuery3.SQL.Text:= 'SELECT code_bvctr, montaht_bvctr FROM bonv_ctr ORDER By code_bvctr';
    MainForm.SQLQuery3.Active:= true;

    C := TDataSource.Create(nil);
    try
      C.AutoEdit:= True;
      C.Enabled:=  True;
      C.DataSet := MainForm.SQLQuery3;
      C.Name:='CDataS';

       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;
       MainForm.SQLQuery.SQL.Text:= 'SELECT code_bvctrl, code_bvctr, code_p, qut_p, cond_p, prixht_p FROM bonv_ctr_list ORDER BY code_bvctrl';
       MainForm.SQLQuery.Active:= true;

       MainForm.SQLQuery.MasterSource:=C;
       MainForm.SQLQuery.MasterFields:='code_bvctr';

       MainForm.SQLQuery.IndexFieldNames:= 'code_bvctr;code_bvctrl';
       MainForm.SQLQuery.UpdateOptions.KeyFields:= 'code_bvctr;code_bvctrl';

       MainForm.SQLQuery3.First;
       while NOT MainForm.SQLQuery3.Eof do
       begin

                 sumPrixInBon:=0;
                 MainForm.SQLQuery.First;
                 while NOT MainForm.SQLQuery.Eof do
                 begin
                   CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger;
                   PrixP:= getPrixP(CodeP);
                   QutP:=  MainForm.SQLQuery.FieldByName('qut_p').AsFloat;
                   CondP:= MainForm.SQLQuery.FieldByName('cond_p').AsFloat;

                   MainForm.SQLQuery.edit;
                   MainForm.SQLQuery.FieldByName('prixht_p').AsFloat:= PrixP;
                   MainForm.SQLQuery.Post;

                   sumPrixInBon:= sumPrixInBon + ((PrixP * QutP) * CondP );

                   MainForm.SQLQuery.next;
                 end;

         MainForm.SQLQuery3.edit;
         MainForm.SQLQuery3.FieldByName('montaht_bvctr').AsFloat:= sumPrixInBon;
         MainForm.SQLQuery3.Post;

         MainForm.SQLQuery3.next;

       end;

       MainForm.Bonv_livTable.Refresh;
       MainForm.SQLQuery.Refresh;

       MainForm.SQLQuery.MasterSource:=nil;
       MainForm.SQLQuery.MasterFields:='';

       MainForm.SQLQuery.IndexFieldNames:= '';
       MainForm.SQLQuery.UpdateOptions.KeyFields:='';
       MainForm.SQLQuery.Active:= False;
       MainForm.SQLQuery.SQL.Clear;

       MainForm.SQLQuery3.Active:= False;
       MainForm.SQLQuery3.SQL.Clear;

    finally
      C.Free;
    end;

end;


procedure CalcPrixAchatInBonVentes();
begin


  DataModuleF.SQLQuery1.Active:= False;
  DataModuleF.SQLQuery1.SQL.Clear;
  DataModuleF.SQLQuery1.SQL.Text:= 'SELECT dbversion, appversion, firstrun FROM dbinfo WHERE hddserial ='''+ LoginF.GetWMIstring('Win32_PhysicalMedia','SerialNumber') +'''';
  DataModuleF.SQLQuery1.Active:= true;


 if (DataModuleF.SQLQuery1.FieldByName('dbversion').AsString = '1') AND (DataModuleF.SQLQuery1.FieldByName('firstrun').AsBoolean = True) then
 begin

       BLVCalcPrixA();
       FPVCalcPrixA();
       FVVCalcPrixA();
       CTRCalcPrixA();


 end;


  DataModuleF.SQLQuery1.Edit;
  DataModuleF.SQLQuery1.FieldByName('firstrun').AsBoolean := False;
  DataModuleF.SQLQuery1.Post;
  DataModuleF.SQLQuery1.Refresh;

  DataModuleF.SQLQuery1.Active:= False;
  DataModuleF.SQLQuery1.SQL.Clear;

end;

end.
