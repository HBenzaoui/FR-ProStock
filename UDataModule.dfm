object DataModuleF: TDataModuleF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 778
  Width = 1100
  object Top5produitOLD: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      '-- This quiery will select the top 5 seled prudect '
      'SELECT  code_p, SUM(qut_p)'
      'FROM bonv_ctr_list'
      'GROUP BY code_p'
      'ORDER BY sum(qut_p) DESC LIMIT 5'
      ''
      '')
    Left = 914
    Top = 16
    object Top5produitOLDcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object Top5produitOLDsum: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'sum'
      Origin = 'sum'
      ReadOnly = True
    end
    object Top5produitOLDnomp: TStringField
      FieldKind = fkLookup
      FieldName = 'nomp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'nom_p'
      KeyFields = 'code_p'
      Size = 150
      Lookup = True
    end
  end
  object TopClient: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_c,'
      '             COUNT(code_c) AS best_client'
      '    FROM     bonv_fac '
      '    GROUP BY code_c'
      '    ORDER BY best_client DESC'
      '    LIMIT    1;')
    Left = 586
    Top = 18
    object TopClientcode_c: TIntegerField
      FieldName = 'code_c'
      Origin = 'code_c'
    end
    object TopClientbest_client: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'best_client'
      Origin = 'best_client'
      ReadOnly = True
    end
    object TopClientnomclient: TStringField
      FieldKind = fkLookup
      FieldName = 'nomclient'
      LookupDataSet = MainForm.ClientTable
      LookupKeyFields = 'code_c'
      LookupResultField = 'nom_c'
      KeyFields = 'code_c'
      Size = 100
      Lookup = True
    end
  end
  object TotalProduit: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT   SUM(qut_p) + SUM(qutini_p) as totat'
      'FROM produit')
    Left = 750
    Top = 76
    object TotalProduittotat: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totat'
      Origin = 'totat'
      ReadOnly = True
    end
  end
  object TopVerClient: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_c, MAX(montver_bvfac)'
      '    FROM     bonv_fac '
      '    GROUP BY code_c'
      '    ORDER BY MAX(montver_bvfac) DESC'
      '    LIMIT    1;')
    Left = 586
    Top = 74
  end
  object TopFour: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_f,'
      '             COUNT(code_f) AS best_four'
      '    FROM     bona_fac '
      '    GROUP BY code_f'
      '    ORDER BY best_four DESC'
      '    LIMIT    1;')
    Left = 666
    Top = 20
    object TopFourcode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object TopFourbest_four: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'best_four'
      Origin = 'best_four'
      ReadOnly = True
    end
  end
  object TopVerFour: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_c, MAX(montver_bvfac)'
      '    FROM     bonv_fac '
      '    GROUP BY code_c'
      '    ORDER BY MAX(montver_bvfac) DESC'
      '    LIMIT    1;')
    Left = 666
    Top = 74
  end
  object ToatalVerMonthVLIV: TFDQuery
    Connection = GstockdcConnection02
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtMemo
        TargetDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select to_char(date_bvliv,'#39'mm'#39') as mon,'
      '       extract(year from date_bvliv) as yyyy,'
      '       sum("montver_bvliv") as "sales"'
      'from bonv_liv WHERE valider_bvliv = true'
      ' group by 1,2')
    Left = 186
    Top = 434
    object ToatalVerMonthVLIVmon: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mon'
      Origin = 'mon'
      ReadOnly = True
      Size = 2
    end
    object ToatalVerMonthVLIVyyyy: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'yyyy'
      Origin = 'yyyy'
      ReadOnly = True
    end
    object ToatalVerMonthVLIVsales: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'sales'
      Origin = 'sales'
      ReadOnly = True
    end
  end
  object GstockdcConnection02: TFDConnection
    LoginPrompt = False
    Left = 69
    Top = 492
  end
  object ToatalVerMonthVCTR: TFDQuery
    Connection = GstockdcConnection02
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtMemo
        TargetDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select to_char(date_bvctr,'#39'mm'#39') as mon,'
      '       extract(year from date_bvctr) as yyyy,'
      '       sum("montver_bvctr") as "sales"'
      'from bonv_ctr WHERE valider_bvctr = true'
      ' group by 1,2')
    Left = 186
    Top = 546
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mon'
      Origin = 'mon'
      ReadOnly = True
      Size = 2
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'yyyy'
      Origin = 'yyyy'
      ReadOnly = True
    end
    object CurrencyField1: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'sales'
      Origin = 'sales'
      ReadOnly = True
    end
  end
  object ToatalVerMonthVFAC: TFDQuery
    Connection = GstockdcConnection02
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtMemo
        TargetDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select to_char(date_bvfac,'#39'mm'#39') as mon,'
      '       extract(year from date_bvfac) as yyyy,'
      '       sum("montver_bvfac") as "sales"'
      'from bonv_fac WHERE valider_bvfac = true'
      ' group by 1,2')
    Left = 186
    Top = 490
    object StringField2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mon'
      Origin = 'mon'
      ReadOnly = True
      Size = 2
    end
    object FloatField2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'yyyy'
      Origin = 'yyyy'
      ReadOnly = True
    end
    object CurrencyField2: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'sales'
      Origin = 'sales'
      ReadOnly = True
    end
  end
  object ToatalVerMonthAREC: TFDQuery
    Connection = GstockdcConnection02
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtMemo
        TargetDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select to_char(date_barec,'#39'mm'#39') as mon,'
      '       extract(year from date_barec) as yyyy,'
      '       sum("montver_barec") as "sales"'
      'from bona_rec WHERE valider_barec = true'
      ' group by 1,2')
    Left = 324
    Top = 444
    object StringField3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mon'
      Origin = 'mon'
      ReadOnly = True
      Size = 2
    end
    object FloatField3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'yyyy'
      Origin = 'yyyy'
      ReadOnly = True
    end
    object CurrencyField3: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'sales'
      Origin = 'sales'
      ReadOnly = True
    end
  end
  object ToatalVerMonthAFAC: TFDQuery
    Connection = GstockdcConnection02
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtMemo
        TargetDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select to_char(date_bafac,'#39'mm'#39') as mon,'
      '       extract(year from date_bafac) as yyyy,'
      '       sum("montver_bafac") as "sales"'
      'from bona_fac WHERE valider_bafac = true'
      ' group by 1,2')
    Left = 324
    Top = 500
    object StringField4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mon'
      Origin = 'mon'
      ReadOnly = True
      Size = 2
    end
    object FloatField4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'yyyy'
      Origin = 'yyyy'
      ReadOnly = True
    end
    object CurrencyField4: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'sales'
      Origin = 'sales'
      ReadOnly = True
    end
  end
  object Top5produit: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      '-- This quiery will select the top 5 seled prudect '
      '  SELECT code_p, SUM(total) as totalALL '
      '  FROM (   '
      
        '  SELECT code_p as code_p, SUM(qut_p) AS total FROM bonv_ctr_lis' +
        't d '
      '  INNER JOIN bonv_ctr p ON d.code_bvctr = p.code_bvctr '
      '  WHERE valider_bvctr = true  AND d.code_p <> 0'
      '  GROUP BY code_p,qut_p'
      
        '----------------------------------------------------------------' +
        '-------'
      '  UNION ALL '
      '  SELECT code_p, SUM(qut_p) as total FROM bonv_fac_list a'
      '  INNER JOIN bonv_fac c ON a.code_bvfac = c.code_bvfac '
      '  WHERE valider_bvfac = true AND a.code_p <> 0'
      '  GROUP BY code_p,qut_p'
      
        '----------------------------------------------------------------' +
        '-------'
      '  UNION ALL '
      '  SELECT code_p, SUM(qut_p) as total FROM Bonv_com_list e'
      '  INNER JOIN bonv_com f ON e.code_bvcom = f.code_bvcom '
      '  WHERE valider_bvcom = true AND e.code_p <> 0'
      '  GROUP BY code_p,qut_p'
      '      ) a '
      '      GROUP BY  code_p'#9' '
      '      ORDER BY  totalALL  DESC '
      '      LIMIT 5 ;')
    Left = 762
    Top = 12
    object IntegerField1: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'nomp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'nom_p'
      KeyFields = 'code_p'
      Size = 150
      Lookup = True
    end
    object Top5produittotalall: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totalall'
      Origin = 'totalall'
      ReadOnly = True
    end
  end
  object PSDBConfigConnection: TFDConnection
    Params.Strings = (
      'Database=PSDBConfig'
      'User_Name=postgres'
      'DriverID=pG'
      'LoginTimeout=15')
    LoginPrompt = False
    Left = 85
    Top = 22
  end
  object UsersTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_ur'
    Connection = PSDBConfigConnection
    SQL.Strings = (
      'SELECT * FROM users')
    Left = 80
    Top = 91
  end
  object CreateDBConfigTables: TFDScript
    SQLScripts = <
      item
        Name = 'CreateTable'
        SQL.Strings = (
          'CREATE TABLE "users" ('
          '"code_ur" int4 NOT NULL,'
          '"nom_ur" varchar(40) COLLATE "default",'
          '"password_ur" varchar(32) COLLATE "default",'
          '"bl_ur" bool,'
          '"fcv_ur" bool,'
          '"rgc_ur" bool,'
          '"br_ur" bool,'
          '"fca_ur" bool,'
          '"rgf_ur" bool,'
          '"caisse_ur" bool,'
          '"bank_ur" bool,'
          '"client_ur" bool,'
          '"four_ur" bool,'
          '"type_ur" int2 DEFAULT 0,'
          '"ctr_ur" bool,'
          '"produit_ur" bool,'
          '"famp_ur" bool,'
          '"sfamp_ur" bool,'
          '"mdpai_ur" bool,'
          '"cmpt_ur" bool,'
          '"unit_ur" bool,'
          '"local_ur" bool'
          ')'
          'WITH (OIDS=FALSE)'
          ';'
          ''
          ''
          'COMMENT ON COLUMN "users"."ctr_ur" IS '#39
          #39';'
          ''
          'CREATE TABLE dbinfo ('
          'id SERIAL NOT NULL CONSTRAINT id PRIMARY KEY ,'
          'dbversion VARCHAR,'
          'apptype CHAR,'
          'appversion VARCHAR,'
          'create_date TIMESTAMP,'
          'modified_date TIMESTAMP,'
          'activated boolean,'
          'appserial VARCHAR,'
          'appkey VARCHAR,'
          'hddserial varchar,'
          'developer VARCHAR,'
          'owner VARCHAR,'
          'firstrun boolean DEFAULT '#39't'#39' '
          ')'
          'WITH (OIDS=FALSE)'
          ';')
      end>
    Connection = PSDBConfigConnection
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 256
    Top = 42
  end
  object AddAdminUser: TFDScript
    SQLScripts = <
      item
        Name = 'AddAdmin'
        SQL.Strings = (
          
            'INSERT INTO "public"."users" ("code_ur", "nom_ur", "password_ur"' +
            ', "bl_ur", "fcv_ur", "rgc_ur", "br_ur", "fca_ur", "rgf_ur", "cai' +
            'sse_ur", "bank_ur", "client_ur", "four_ur", "type_ur", "ctr_ur",' +
            ' "produit_ur", "famp_ur", "sfamp_ur", "mdpai_ur", "cmpt_ur", "un' +
            'it_ur", "local_ur") VALUES ('#39'1'#39', '#39'Admin'#39', '#39'admin'#39', '#39't'#39', '#39't'#39', '#39't'#39 +
            ', '#39't'#39', '#39't'#39', '#39't'#39', '#39't'#39', '#39't'#39', '#39't'#39', '#39't'#39', '#39'0'#39', '#39't'#39', '#39't'#39', '#39't'#39', '#39't'#39', '#39't' +
            #39', '#39't'#39', '#39't'#39', '#39't'#39');')
      end>
    Connection = PSDBConfigConnection
    Params = <>
    Macros = <>
    Left = 388
    Top = 42
  end
  object UsersTableDs: TDataSource
    DataSet = UsersTable
    Left = 80
    Top = 152
  end
  object PZeroQCnotif: TFDQuery
    OnCalcFields = PZeroQCnotifCalcFields
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT code_p,refer_p,nom_p,qut_p,qutini_p,code_famp,code_sfamp,' +
        'code_l,code_u,code_f'
      'FROM produit WHERE (qut_p + qutini_p) <= 0')
    Left = 854
    Top = 252
    object PZeroQCnotifcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PZeroQCnotifnom_p: TWideStringField
      FieldName = 'nom_p'
      Origin = 'nom_p'
      Size = 8190
    end
    object PZeroQCnotifrefer_p: TWideStringField
      FieldName = 'refer_p'
      Origin = 'refer_p'
      Size = 8190
    end
    object PZeroQCnotifqut_p: TFloatField
      FieldName = 'qut_p'
      Origin = 'qut_p'
    end
    object PZeroQCnotifcode_famp: TIntegerField
      FieldName = 'code_famp'
      Origin = 'code_famp'
    end
    object PZeroQCnotifcode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object PZeroQCnotifcode_l: TIntegerField
      FieldName = 'code_l'
      Origin = 'code_l'
    end
    object PZeroQCnotifcode_sfamp: TIntegerField
      FieldName = 'code_sfamp'
      Origin = 'code_sfamp'
    end
    object PZeroQCnotifcode_u: TSmallintField
      FieldName = 'code_u'
      Origin = 'code_u'
    end
    object PZeroQCnotifqutini_p: TFloatField
      FieldName = 'qutini_p'
      Origin = 'qutini_p'
    end
    object PZeroQCnotifQutDispo: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'QutDispo'
      ProviderFlags = []
    end
    object PZeroQCnotiffamp: TStringField
      FieldKind = fkLookup
      FieldName = 'famp'
      LookupDataSet = MainForm.FamproduitTable
      LookupKeyFields = 'code_famp'
      LookupResultField = 'nom_famp'
      KeyFields = 'code_famp'
      Lookup = True
    end
    object PZeroQCnotifsfamp: TStringField
      FieldKind = fkLookup
      FieldName = 'sfamp'
      LookupDataSet = MainForm.SfamproduitTable
      LookupKeyFields = 'code_sfamp'
      LookupResultField = 'nom_sfamp'
      KeyFields = 'code_sfamp'
      Lookup = True
    end
    object PZeroQCnotifunit: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = MainForm.UniteTable
      LookupKeyFields = 'code_u'
      LookupResultField = 'nom_u'
      KeyFields = 'code_u'
      Lookup = True
    end
    object PZeroQCnotiffourp: TStringField
      FieldKind = fkLookup
      FieldName = 'fourp'
      LookupDataSet = MainForm.FournisseurTable
      LookupKeyFields = 'code_f'
      LookupResultField = 'nom_f'
      KeyFields = 'code_f'
      Lookup = True
    end
    object PZeroQCnotiflocal: TStringField
      FieldKind = fkLookup
      FieldName = 'local'
      LookupDataSet = MainForm.LocalisationTable
      LookupKeyFields = 'code_l'
      LookupResultField = 'nom_l'
      KeyFields = 'code_l'
      Lookup = True
    end
  end
  object PCloseZeroQCnotif: TFDQuery
    OnCalcFields = PCloseZeroQCnotifCalcFields
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT code_p,refer_p,nom_p,qut_p,qutini_p,code_famp,code_sfamp,' +
        'code_l,code_u,code_f,qutmin_p,alertqut_p'
      
        'FROM produit WHERE (qut_p + qutini_p) <= qutmin_p AND qutmin_p <' +
        '> 0'
      'OR ( (qut_p + qutini_p) <= alertqut_p AND alertqut_p <> 0)')
    Left = 852
    Top = 308
    object PCloseZeroQCnotifcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PCloseZeroQCnotifnom_p: TWideStringField
      FieldName = 'nom_p'
      Origin = 'nom_p'
      Size = 8190
    end
    object PCloseZeroQCnotifrefer_p: TWideStringField
      FieldName = 'refer_p'
      Origin = 'refer_p'
      Size = 8190
    end
    object PCloseZeroQCnotifqut_p: TFloatField
      FieldName = 'qut_p'
      Origin = 'qut_p'
    end
    object PCloseZeroQCnotifcode_famp: TIntegerField
      FieldName = 'code_famp'
      Origin = 'code_famp'
    end
    object PCloseZeroQCnotifalertqut_p: TIntegerField
      FieldName = 'alertqut_p'
      Origin = 'alertqut_p'
    end
    object PCloseZeroQCnotifcode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object PCloseZeroQCnotifcode_l: TIntegerField
      FieldName = 'code_l'
      Origin = 'code_l'
    end
    object PCloseZeroQCnotifcode_sfamp: TIntegerField
      FieldName = 'code_sfamp'
      Origin = 'code_sfamp'
    end
    object PCloseZeroQCnotifqutmin_p: TFloatField
      FieldName = 'qutmin_p'
      Origin = 'qutmin_p'
    end
    object PCloseZeroQCnotifcode_u: TSmallintField
      FieldName = 'code_u'
      Origin = 'code_u'
    end
    object PCloseZeroQCnotifqutini_p: TFloatField
      FieldName = 'qutini_p'
      Origin = 'qutini_p'
    end
    object PCloseZeroQCnotifQutDispo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'QutDispo'
    end
    object PCloseZeroQCnotiffamp: TStringField
      FieldKind = fkLookup
      FieldName = 'famp'
      LookupDataSet = MainForm.FamproduitTable
      LookupKeyFields = 'code_famp'
      LookupResultField = 'nom_famp'
      KeyFields = 'code_famp'
      Lookup = True
    end
    object PCloseZeroQCnotifsfamp: TStringField
      FieldKind = fkLookup
      FieldName = 'sfamp'
      LookupDataSet = MainForm.SfamproduitTable
      LookupKeyFields = 'code_sfamp'
      LookupResultField = 'nom_sfamp'
      KeyFields = 'code_sfamp'
      Lookup = True
    end
    object PCloseZeroQCnotifunit: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = MainForm.UniteTable
      LookupKeyFields = 'code_u'
      LookupResultField = 'nom_u'
      KeyFields = 'code_u'
      Lookup = True
    end
    object PCloseZeroQCnotiffourp: TStringField
      FieldKind = fkLookup
      FieldName = 'fourp'
      LookupDataSet = MainForm.FournisseurTable
      LookupKeyFields = 'code_f'
      LookupResultField = 'nom_f'
      KeyFields = 'code_f'
      Lookup = True
    end
    object PCloseZeroQCnotiflocal: TStringField
      FieldKind = fkLookup
      FieldName = 'local'
      LookupDataSet = MainForm.LocalisationTable
      LookupKeyFields = 'code_l'
      LookupResultField = 'nom_l'
      KeyFields = 'code_l'
      Lookup = True
    end
  end
  object PMoreMaxQCnotif: TFDQuery
    OnCalcFields = PMoreMaxQCnotifCalcFields
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT code_p,refer_p,nom_p,qut_p,qutini_p,code_famp,code_sfamp,' +
        'code_l,code_u,code_f,qutmax_p'
      
        ' FROM produit WHERE (qut_p + qutini_p) >= qutmax_p AND qutmax_p ' +
        '<> 0')
    Left = 852
    Top = 362
    object PMoreMaxQCnotifcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PMoreMaxQCnotifnom_p: TWideStringField
      FieldName = 'nom_p'
      Origin = 'nom_p'
      Size = 8190
    end
    object PMoreMaxQCnotifrefer_p: TWideStringField
      FieldName = 'refer_p'
      Origin = 'refer_p'
      Size = 8190
    end
    object PMoreMaxQCnotifqut_p: TFloatField
      FieldName = 'qut_p'
      Origin = 'qut_p'
    end
    object PMoreMaxQCnotifcode_famp: TIntegerField
      FieldName = 'code_famp'
      Origin = 'code_famp'
    end
    object PMoreMaxQCnotifcode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object PMoreMaxQCnotifcode_l: TIntegerField
      FieldName = 'code_l'
      Origin = 'code_l'
    end
    object PMoreMaxQCnotifcode_sfamp: TIntegerField
      FieldName = 'code_sfamp'
      Origin = 'code_sfamp'
    end
    object PMoreMaxQCnotifqutmax_p: TFloatField
      FieldName = 'qutmax_p'
      Origin = 'qutmax_p'
    end
    object PMoreMaxQCnotifcode_u: TSmallintField
      FieldName = 'code_u'
      Origin = 'code_u'
    end
    object PMoreMaxQCnotifqutini_p: TFloatField
      FieldName = 'qutini_p'
      Origin = 'qutini_p'
    end
    object PMoreMaxQCnotifQutDispo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'QutDispo'
    end
    object PMoreMaxQCnotiffamp: TStringField
      FieldKind = fkLookup
      FieldName = 'famp'
      LookupDataSet = MainForm.FamproduitTable
      LookupKeyFields = 'code_famp'
      LookupResultField = 'nom_famp'
      KeyFields = 'code_famp'
      Lookup = True
    end
    object PMoreMaxQCnotifsfamp: TStringField
      FieldKind = fkLookup
      FieldName = 'sfamp'
      LookupDataSet = MainForm.SfamproduitTable
      LookupKeyFields = 'code_sfamp'
      LookupResultField = 'nom_sfamp'
      KeyFields = 'code_sfamp'
      Lookup = True
    end
    object PMoreMaxQCnotifunit: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = MainForm.UniteTable
      LookupKeyFields = 'code_u'
      LookupResultField = 'nom_u'
      KeyFields = 'code_u'
      Lookup = True
    end
    object PMoreMaxQCnotiffourp: TStringField
      FieldKind = fkLookup
      FieldName = 'fourp'
      LookupDataSet = MainForm.FournisseurTable
      LookupKeyFields = 'code_f'
      LookupResultField = 'nom_f'
      KeyFields = 'code_f'
      Lookup = True
    end
    object PMoreMaxQCnotiflocal: TStringField
      FieldKind = fkLookup
      FieldName = 'local'
      LookupDataSet = MainForm.LocalisationTable
      LookupKeyFields = 'code_l'
      LookupResultField = 'nom_l'
      KeyFields = 'code_l'
      Lookup = True
    end
  end
  object PCloseDiedCnotif: TFDQuery
    OnCalcFields = PCloseDiedCnotifCalcFields
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT bona_rec_list.code_barec, bona_rec.num_barec,produit.refe' +
        'r_p, produit.nom_p,qutinstock_p,bona_rec_list.dateperiss_p,'
      
        '(bona_rec_list.dateperiss_p - CURRENT_DATE) AS daysleft,produit.' +
        'code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bona' +
        '_rec.code_f,produit.alertdays_p'
      'FROM bona_rec_list'
      'JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec'
      'JOIN produit as produit ON bona_rec_list.code_p = produit.code_p'
      'WHERE bona_rec.valider_barec = TRUE'
      'AND bona_rec_list.dateperiss_p is NOT NULL'
      'AND (bona_rec_list.dateperiss_p - CURRENT_DATE) <= alertdays_p'
      'AND (bona_rec_list.dateperiss_p - CURRENT_DATE) > 0'
      'AND qutinstock_p > 0'
      ''
      'UNION ALL'
      ''
      
        'SELECT bona_fac_list.code_bafac, bona_fac.num_bafac,produit.refe' +
        'r_p, produit.nom_p,qutinstock_p,bona_fac_list.dateperiss_p,'
      
        '(bona_fac_list.dateperiss_p - CURRENT_DATE) AS daysleft2,produit' +
        '.code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bon' +
        'a_fac.code_f,produit.alertdays_p'
      'FROM bona_fac_list'
      'JOIN bona_fac ON bona_fac.code_bafac = bona_fac_list.code_bafac'
      'JOIN produit as produit ON bona_fac_list.code_p = produit.code_p'
      'WHERE bona_fac.valider_bafac = TRUE'
      'AND bona_fac_list.dateperiss_p is NOT NULL'
      'AND (bona_fac_list.dateperiss_p - CURRENT_DATE) <= alertdays_p'
      'AND (bona_fac_list.dateperiss_p - CURRENT_DATE) > 0'
      'AND qutinstock_p > 0'
      ''
      'UNION ALL'
      ''
      
        'SELECT 0 as code_barec, '#39'-Sans Bon-'#39' as num_barec,refer_p, nom_p' +
        ',(qut_p + qutini_p) AS qutinstock_p, dateperiss_p,'
      
        '(produit.dateperiss_p - CURRENT_DATE) AS daysleft2,code_famp,cod' +
        'e_sfamp,code_l,code_u, code_f , alertdays_p'
      '  FROM produit'
      'WHERE dateperiss_p is NOT NULL'
      'AND (dateperiss_p - CURRENT_DATE) <= alertdays_p'
      'AND (dateperiss_p - CURRENT_DATE) > 0'
      'AND (qut_p + qutini_p) > 0'
      'AND perissable_p = TRUE'
      ''
      'ORDER BY daysleft ASC')
    Left = 854
    Top = 414
    object PCloseDiedCnotifcode_famp: TIntegerField
      FieldName = 'code_famp'
      Origin = 'code_famp'
    end
    object PCloseDiedCnotifcode_sfamp: TIntegerField
      FieldName = 'code_sfamp'
      Origin = 'code_sfamp'
    end
    object PCloseDiedCnotifcode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object PCloseDiedCnotifdateperiss_p: TDateField
      FieldName = 'dateperiss_p'
      Origin = 'dateperiss_p'
    end
    object PCloseDiedCnotifcode_u: TSmallintField
      FieldName = 'code_u'
      Origin = 'code_u'
    end
    object PCloseDiedCnotifcode_l: TIntegerField
      FieldName = 'code_l'
      Origin = 'code_l'
    end
    object PCloseDiedCnotifalertdays_p: TSmallintField
      FieldName = 'alertdays_p'
      Origin = 'alertdays_p'
    end
    object PCloseDiedCnotifdaysleft: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'daysleft'
      Origin = 'daysleft'
      ReadOnly = True
    end
    object PCloseDiedCnotiffamp: TStringField
      FieldKind = fkLookup
      FieldName = 'famp'
      LookupDataSet = MainForm.FamproduitTable
      LookupKeyFields = 'code_famp'
      LookupResultField = 'nom_famp'
      KeyFields = 'code_famp'
      Lookup = True
    end
    object PCloseDiedCnotifsfamp: TStringField
      FieldKind = fkLookup
      FieldName = 'sfamp'
      LookupDataSet = MainForm.SfamproduitTable
      LookupKeyFields = 'code_sfamp'
      LookupResultField = 'nom_sfamp'
      KeyFields = 'code_sfamp'
      Lookup = True
    end
    object PCloseDiedCnotifunit: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = MainForm.UniteTable
      LookupKeyFields = 'code_u'
      LookupResultField = 'nom_u'
      KeyFields = 'code_u'
      Lookup = True
    end
    object PCloseDiedCnotiffourp: TStringField
      FieldKind = fkLookup
      FieldName = 'fourp'
      LookupDataSet = MainForm.FournisseurTable
      LookupKeyFields = 'code_f'
      LookupResultField = 'nom_f'
      KeyFields = 'code_f'
      Lookup = True
    end
    object PCloseDiedCnotiflocal: TStringField
      FieldKind = fkLookup
      FieldName = 'local'
      LookupDataSet = MainForm.LocalisationTable
      LookupKeyFields = 'code_l'
      LookupResultField = 'nom_l'
      KeyFields = 'code_l'
      Lookup = True
    end
    object PCloseDiedCnotifcode_barec: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'code_barec'
      Origin = 'code_barec'
      ReadOnly = True
    end
    object PCloseDiedCnotifnum_barec: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_barec'
      Origin = 'num_barec'
      ReadOnly = True
      Size = 8190
    end
    object PCloseDiedCnotifqutinstock_p: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qutinstock_p'
      Origin = 'qutinstock_p'
      ReadOnly = True
    end
    object PCloseDiedCnotifrefer_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'refer_p'
      Origin = 'refer_p'
      ReadOnly = True
      Size = 8190
    end
    object PCloseDiedCnotifnom_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_p'
      Origin = 'nom_p'
      ReadOnly = True
      Size = 8190
    end
  end
  object PDiedCnotif: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT bona_rec_list.code_barec, bona_rec.num_barec,produit.refe' +
        'r_p, produit.nom_p, qutinstock_p,bona_rec_list.dateperiss_p,'
      
        '(bona_rec_list.dateperiss_p - CURRENT_DATE) AS daysleft,produit.' +
        'code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bona' +
        '_rec.code_f'
      'FROM bona_rec_list'
      'JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec'
      'JOIN produit as produit ON bona_rec_list.code_p = produit.code_p'
      'WHERE bona_rec.valider_barec = TRUE'
      'AND bona_rec_list.dateperiss_p is NOT NULL'
      'AND bona_rec_list.dateperiss_p <= CURRENT_DATE'
      'AND qutinstock_p > 0'
      'AND produit.perissable_p = TRUE'
      ''
      'UNION ALL'
      ''
      
        'SELECT bona_fac_list.code_bafac, bona_fac.num_bafac,produit.refe' +
        'r_p, produit.nom_p, qutinstock_p,bona_fac_list.dateperiss_p,'
      
        '(bona_fac_list.dateperiss_p - CURRENT_DATE) AS daysleft2,produit' +
        '.code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bon' +
        'a_fac.code_f'
      'FROM bona_fac_list'
      'JOIN bona_fac ON bona_fac.code_bafac = bona_fac_list.code_bafac'
      'JOIN produit as produit ON bona_fac_list.code_p = produit.code_p'
      'WHERE bona_fac.valider_bafac = TRUE'
      'AND bona_fac_list.dateperiss_p is NOT NULL'
      'AND bona_fac_list.dateperiss_p <= CURRENT_DATE'
      'AND qutinstock_p > 0'
      'AND produit.perissable_p = TRUE'
      ''
      'UNION ALL'
      ''
      
        'SELECT 0 as code_barec, '#39'-Sans Bon-'#39' as num_barec,refer_p, nom_p' +
        ',(qut_p + qutini_p) AS qutinstock_p, dateperiss_p,'
      
        '(produit.dateperiss_p - CURRENT_DATE) AS daysleft2,code_famp,cod' +
        'e_sfamp,code_l,code_u, code_f'
      '  FROM produit'
      'WHERE dateperiss_p is NOT NULL'
      'AND dateperiss_p <= CURRENT_DATE'
      'AND (qut_p + qutini_p) > 0'
      'AND perissable_p = TRUE'
      ''
      'ORDER BY daysleft DESC')
    Left = 852
    Top = 470
    object PDiedCnotifcode_famp: TIntegerField
      FieldName = 'code_famp'
      Origin = 'code_famp'
    end
    object PDiedCnotifcode_sfamp: TIntegerField
      FieldName = 'code_sfamp'
      Origin = 'code_sfamp'
    end
    object PDiedCnotifcode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object PDiedCnotifdateperiss_p: TDateField
      FieldName = 'dateperiss_p'
      Origin = 'dateperiss_p'
    end
    object PDiedCnotifcode_u: TSmallintField
      FieldName = 'code_u'
      Origin = 'code_u'
    end
    object PDiedCnotifcode_l: TIntegerField
      FieldName = 'code_l'
      Origin = 'code_l'
    end
    object PDiedCnotifdaysleft: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'daysleft'
      Origin = 'daysleft'
      ReadOnly = True
    end
    object PDiedCnotiflocal: TStringField
      FieldKind = fkLookup
      FieldName = 'local'
      LookupDataSet = MainForm.LocalisationTable
      LookupKeyFields = 'code_l'
      LookupResultField = 'nom_l'
      KeyFields = 'code_l'
      Lookup = True
    end
    object PDiedCnotiffourp: TStringField
      FieldKind = fkLookup
      FieldName = 'fourp'
      LookupDataSet = MainForm.FournisseurTable
      LookupKeyFields = 'code_f'
      LookupResultField = 'nom_f'
      KeyFields = 'code_f'
      Lookup = True
    end
    object PDiedCnotifunit: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = MainForm.UniteTable
      LookupKeyFields = 'code_u'
      LookupResultField = 'nom_u'
      KeyFields = 'code_u'
      Lookup = True
    end
    object PDiedCnotifsfamp: TStringField
      FieldKind = fkLookup
      FieldName = 'sfamp'
      LookupDataSet = MainForm.SfamproduitTable
      LookupKeyFields = 'code_sfamp'
      LookupResultField = 'nom_sfamp'
      KeyFields = 'code_sfamp'
      Lookup = True
    end
    object PDiedCnotiffamp: TStringField
      FieldKind = fkLookup
      FieldName = 'famp'
      LookupDataSet = MainForm.FamproduitTable
      LookupKeyFields = 'code_famp'
      LookupResultField = 'nom_famp'
      KeyFields = 'code_famp'
      Lookup = True
    end
    object PDiedCnotifcode_barec: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'code_barec'
      Origin = 'code_barec'
      ReadOnly = True
    end
    object PDiedCnotifnum_barec: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_barec'
      Origin = 'num_barec'
      ReadOnly = True
    end
    object PDiedCnotifqutinstock_p: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qutinstock_p'
      Origin = 'qutinstock_p'
      ReadOnly = True
    end
    object PDiedCnotifrefer_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'refer_p'
      Origin = 'refer_p'
      ReadOnly = True
      Size = 8190
    end
    object PDiedCnotifnom_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_p'
      Origin = 'nom_p'
      ReadOnly = True
      Size = 8190
    end
  end
  object PZeroQCnotifDS: TDataSource
    DataSet = PZeroQCnotif
    Left = 966
    Top = 250
  end
  object PCloseZeroQCnotifDS: TDataSource
    DataSet = PCloseZeroQCnotif
    Left = 968
    Top = 310
  end
  object PMoreMaxQCnotifDS: TDataSource
    DataSet = PMoreMaxQCnotif
    Left = 972
    Top = 360
  end
  object PCloseDiedCnotifDS: TDataSource
    DataSet = PCloseDiedCnotif
    Left = 972
    Top = 416
  end
  object PDiedCnotifDS: TDataSource
    DataSet = PDiedCnotif
    Left = 972
    Top = 468
  end
  object PerisablePListTable: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT code_bafac,code_p,code_p,code_p FROM bona_fac_list GROUP ' +
        'by code_bafac,code_p,code_p,code_p'
      'UNION ALL '
      
        'SELECT code_barec,code_p,code_p,code_p FROM bona_rec_list GROUP ' +
        'by code_barec,code_p,code_p,code_p')
    Left = 238
    Top = 152
    object PerisablePListTablecode_bafac: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'code_bafac'
      Origin = 'code_bafac'
      ReadOnly = True
    end
    object PerisablePListTablecode_p: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'code_p'
      Origin = 'code_p'
      ReadOnly = True
    end
    object PerisablePListTablecode_p_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'code_p_1'
      Origin = 'code_p'
      ReadOnly = True
    end
    object PerisablePListTablecode_p_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'code_p_2'
      Origin = 'code_p'
      ReadOnly = True
    end
  end
  object ChargesTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_ch'
    Connection = MainForm.GstockdcConnection
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideMemo
        TargetDataType = dtWideString
      end>
    SQL.Strings = (
      'SELECT * FROM charges')
    Left = 567
    Top = 253
    object ChargesTablecode_ch: TIntegerField
      FieldName = 'code_ch'
      Origin = 'code_ch'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ChargesTablenom_ch: TWideStringField
      DisplayWidth = 200
      FieldName = 'nom_ch'
      Origin = 'nom_ch'
      Size = 200
    end
    object ChargesTabledate_ch: TDateField
      FieldName = 'date_ch'
      Origin = 'date_ch'
    end
    object ChargesTabletime_ch: TTimeField
      FieldName = 'time_ch'
      Origin = 'time_ch'
    end
    object ChargesTablemontht_ch: TCurrencyField
      FieldName = 'montht_ch'
      Origin = 'montht_ch'
    end
    object ChargesTablemonttva_ch: TCurrencyField
      FieldName = 'monttva_ch'
      Origin = 'monttva_ch'
    end
    object ChargesTablemontttc_ch: TCurrencyField
      FieldName = 'montttc_ch'
      Origin = 'montttc_ch'
    end
    object ChargesTablenum_cheque_ch: TWideStringField
      DisplayWidth = 200
      FieldName = 'num_cheque_ch'
      Origin = 'num_cheque_ch'
      Size = 200
    end
    object ChargesTablecode_mdpai: TSmallintField
      FieldName = 'code_mdpai'
      Origin = 'code_mdpai'
    end
    object ChargesTablecode_cmpt: TSmallintField
      FieldName = 'code_cmpt'
      Origin = 'code_cmpt'
    end
    object ChargesTablecode_ur: TIntegerField
      FieldName = 'code_ur'
      Origin = 'code_ur'
    end
    object ChargesTabletimber_ch: TCurrencyField
      FieldName = 'timber_ch'
      Origin = 'timber_ch'
    end
    object ChargesTableCompte: TStringField
      FieldKind = fkLookup
      FieldName = 'Compte'
      LookupDataSet = MainForm.CompteTable
      LookupKeyFields = 'code_cmpt'
      LookupResultField = 'nom_cmpt'
      KeyFields = 'code_cmpt'
      Size = 50
      Lookup = True
    end
    object ChargesTablecode_cht: TSmallintField
      FieldName = 'code_cht'
      Origin = 'code_cht'
    end
    object ChargesTablecode_chst: TSmallintField
      FieldName = 'code_chst'
      Origin = 'code_chst'
    end
    object ChargesTableCHType: TStringField
      FieldKind = fkLookup
      FieldName = 'CHType'
      LookupDataSet = Charge_typeTable
      LookupKeyFields = 'code_cht'
      LookupResultField = 'nom_cht'
      KeyFields = 'code_cht'
      Size = 50
      Lookup = True
    end
    object ChargesTableCHSType: TStringField
      FieldKind = fkLookup
      FieldName = 'CHSType'
      LookupDataSet = Charge_s_typeTable
      LookupKeyFields = 'code_chst'
      LookupResultField = 'nom_chst'
      KeyFields = 'code_chst'
      Size = 50
      Lookup = True
    end
    object ChargesTablerefer_ch: TWideStringField
      FieldName = 'refer_ch'
      Origin = 'refer_ch'
      Size = 200
    end
    object ChargesTableAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'code_ur'
      Size = 50
      Lookup = True
    end
    object ChargesTableobser_ch: TWideStringField
      FieldName = 'obser_ch'
      Origin = 'obser_ch'
      Size = 200
    end
  end
  object Charge_typeTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_cht'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT * FROM charge_type')
    Left = 568
    Top = 303
    object Charge_typeTablecode_cht: TSmallintField
      FieldName = 'code_cht'
      Origin = 'code_cht'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Charge_typeTablenom_cht: TWideStringField
      FieldName = 'nom_cht'
      Origin = 'nom_cht'
      Size = 200
    end
  end
  object Charge_s_typeTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_chst'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT * FROM charge_s_type')
    Left = 568
    Top = 352
    object Charge_s_typeTablecode_chst: TSmallintField
      FieldName = 'code_chst'
      Origin = 'code_chst'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Charge_s_typeTablenom_chst: TWideStringField
      FieldName = 'nom_chst'
      Origin = 'nom_chst'
      Size = 8190
    end
  end
  object PertesTable: TFDQuery
    OnCalcFields = PertesTableCalcFields
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_pr'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT * FROM pertes')
    Left = 569
    Top = 428
    object PertesTablecode_pr: TIntegerField
      FieldName = 'code_pr'
      Origin = 'code_pr'
    end
    object PertesTabledate_pr: TDateField
      FieldName = 'date_pr'
      Origin = 'date_pr'
    end
    object PertesTabletime_pr: TTimeField
      FieldName = 'time_pr'
      Origin = 'time_pr'
    end
    object PertesTablecode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object PertesTablequt_p: TFloatField
      FieldName = 'qut_p'
      Origin = 'qut_p'
    end
    object PertesTableprixht_p: TCurrencyField
      FieldName = 'prixht_p'
      Origin = 'prixht_p'
    end
    object PertesTabletva_p: TSmallintField
      FieldName = 'tva_p'
      Origin = 'tva_p'
    end
    object PertesTablecode_ur: TIntegerField
      FieldName = 'code_ur'
      Origin = 'code_ur'
    end
    object PertesTablecode_prt: TSmallintField
      FieldName = 'code_prt'
      Origin = 'code_prt'
    end
    object PertesTablePRType: TStringField
      FieldKind = fkLookup
      FieldName = 'PRType'
      LookupDataSet = Perte_typeTable
      LookupKeyFields = 'code_prt'
      LookupResultField = 'nom_prt'
      KeyFields = 'code_prt'
      Size = 50
      Lookup = True
    end
    object PertesTablenomp: TStringField
      FieldKind = fkLookup
      FieldName = 'nomp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'nom_p'
      KeyFields = 'code_p'
      Size = 150
      Lookup = True
    end
    object PertesTablereferp: TStringField
      FieldKind = fkLookup
      FieldName = 'referp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'refer_p'
      KeyFields = 'code_p'
      Lookup = True
    end
    object PertesTableMontantHT: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MontantHT'
    end
    object PertesTableMontantTVA: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MontantTVA'
    end
    object PertesTableMontantTTC: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MontantTTC'
    end
    object PertesTableAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'code_ur'
      Size = 50
      Lookup = True
    end
    object PertesTablerefer_pr: TWideStringField
      FieldName = 'refer_pr'
      Origin = 'refer_pr'
      Size = 200
    end
    object PertesTablePrixATTC: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'PrixATTC'
    end
    object PertesTableobser_pr: TWideStringField
      FieldName = 'obser_pr'
      Origin = 'obser_pr'
      Size = 200
    end
  end
  object Perte_typeTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_prt'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT * FROM perte_type')
    Left = 571
    Top = 478
  end
  object Transfer_comptesTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    Connection = MainForm.GstockdcConnection
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideMemo
        TargetDataType = dtWideString
      end>
    SQL.Strings = (
      'SELECT * FROM transfer_comptes')
    Left = 364
    Top = 296
    object Transfer_comptesTablecode_transfer: TIntegerField
      FieldName = 'code_transfer'
      Origin = 'code_transfer'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Transfer_comptesTabledate_transfer: TDateField
      FieldName = 'date_transfer'
      Origin = 'date_transfer'
    end
    object Transfer_comptesTabletime_transfer: TTimeField
      FieldName = 'time_transfer'
      Origin = 'time_transfer'
    end
    object Transfer_comptesTablerefer_transfer: TWideStringField
      FieldName = 'refer_transfer'
      Origin = 'refer_transfer'
      Size = 8190
    end
    object Transfer_comptesTablemont_transfer: TCurrencyField
      FieldName = 'mont_transfer'
      Origin = 'mont_transfer'
    end
    object Transfer_comptesTablenum_cheque_transfer: TWideStringField
      FieldName = 'num_cheque_transfer'
      Origin = 'num_cheque_transfer'
      Size = 200
    end
    object Transfer_comptesTablecode_mdpai: TSmallintField
      FieldName = 'code_mdpai'
      Origin = 'code_mdpai'
    end
    object Transfer_comptesTablecode_cmpts: TSmallintField
      FieldName = 'code_cmpts'
      Origin = 'code_cmpts'
    end
    object Transfer_comptesTablecode_cmptd: TSmallintField
      FieldName = 'code_cmptd'
      Origin = 'code_cmptd'
    end
    object Transfer_comptesTablecode_ur: TIntegerField
      FieldName = 'code_ur'
      Origin = 'code_ur'
    end
    object Transfer_comptesTableCompteSource: TStringField
      FieldKind = fkLookup
      FieldName = 'CompteSource'
      LookupDataSet = MainForm.CompteTable
      LookupKeyFields = 'code_cmpt'
      LookupResultField = 'nom_cmpt'
      KeyFields = 'code_cmpts'
      Lookup = True
    end
    object Transfer_comptesTableCompteDis: TStringField
      FieldKind = fkLookup
      FieldName = 'CompteDis'
      LookupDataSet = MainForm.CompteTable
      LookupKeyFields = 'code_cmpt'
      LookupResultField = 'nom_cmpt'
      KeyFields = 'code_cmptd'
      Lookup = True
    end
    object Transfer_comptesTableAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'code_ur'
      Lookup = True
    end
    object Transfer_comptesTableobser_transfer: TWideStringField
      FieldName = 'obser_transfer'
      Origin = 'obser_transfer'
      Size = 200
    end
  end
  object PerissBona_recTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'dateperiss_p'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT bona_rec_list.code_barec, code_p,qutinstock_p,dateperiss_' +
        'p,(dateperiss_p - CURRENT_DATE) AS daysleft'
      'FROM bona_rec_list '
      'JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec'
      'WHERE bona_rec.valider_barec = TRUE'
      'AND dateperiss_p is NOT NULL'
      'AND dateperiss_p > CURRENT_DATE '
      'AND qutinstock_p > 0 '
      'AND code_p = 1'
      'ORDER BY dateperiss_p ;')
    Left = 753
    Top = 410
    object PerissBona_recTablecode_barec: TIntegerField
      FieldName = 'code_barec'
      Origin = 'code_barec'
    end
    object PerissBona_recTablecode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object PerissBona_recTablequtinstock_p: TFloatField
      FieldName = 'qutinstock_p'
      Origin = 'qutinstock_p'
    end
    object PerissBona_recTabledateperiss_p: TDateField
      FieldName = 'dateperiss_p'
      Origin = 'dateperiss_p'
    end
    object PerissBona_recTabledaysleft: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'daysleft'
      Origin = 'daysleft'
      ReadOnly = True
    end
    object PerissBona_recTablenumbrec: TStringField
      FieldKind = fkLookup
      FieldName = 'numbrec'
      LookupDataSet = MainForm.Bona_recTable
      LookupKeyFields = 'code_barec'
      LookupResultField = 'num_barec'
      KeyFields = 'code_barec'
      Lookup = True
    end
  end
  object PerissBona_facTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'dateperiss_p'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT bona_fac_list.code_bafac, code_p,qutinstock_p,dateperiss_' +
        'p,(dateperiss_p - CURRENT_DATE) AS daysleft'
      'FROM bona_fac_list'
      'JOIN bona_fac ON bona_fac.code_bafac = bona_fac_list.code_bafac'
      'WHERE bona_fac.valider_bafac = TRUE '
      'AND dateperiss_p is NOT NULL '
      'AND dateperiss_p > CURRENT_DATE'
      'AND qutinstock_p <> 0'
      'AND code_p = 1'
      'ORDER BY dateperiss_p'
      ' ')
    Left = 761
    Top = 470
    object PerissBona_facTablecode_bafac: TIntegerField
      FieldName = 'code_bafac'
      Origin = 'code_bafac'
    end
    object PerissBona_facTablecode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object PerissBona_facTablequtinstock_p: TFloatField
      FieldName = 'qutinstock_p'
      Origin = 'qutinstock_p'
    end
    object PerissBona_facTabledateperiss_p: TDateField
      FieldName = 'dateperiss_p'
      Origin = 'dateperiss_p'
    end
    object PerissBona_facTabledaysleft: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'daysleft'
      Origin = 'daysleft'
      ReadOnly = True
    end
    object PerissBona_facTablenumfac: TStringField
      FieldKind = fkLookup
      FieldName = 'numfac'
      LookupDataSet = MainForm.Bona_facTable
      LookupKeyFields = 'code_bafac'
      LookupResultField = 'num_bafac'
      KeyFields = 'code_bafac'
      Lookup = True
    end
  end
  object ClientSituationQR: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT  num_bvcom AS Num, Source,date_bvcom, time_bvcom, montttc' +
        '_bvcom AS Total, montver_bvcom AS Versemt, Rest, MP, code_ur AS ' +
        'Agent'
      'FROM'
      '('
      
        'SELECT code_c,num_bvcom,date_bvcom,time_bvcom,montttc_bvcom,mont' +
        'ver_bvcom,(montttc_bvcom - montver_bvcom) AS Rest,'#39'BL'#39' AS Source' +
        ', code_ur,'
      '  CASE BL.code_mdpai'
      '    WHEN  1 THEN '#39'Esp'#232'ce'#39
      '    WHEN  2 THEN '#39'Ch'#232'que'#39
      '    WHEN  3 THEN '#39#192' Terme'#39
      '    WHEN  4 THEN '#39'Virement'#39
      '    end AS MP'
      
        'FROM bonv_com BL where code_c = :CodeC AND date_bvcom BETWEEN :D' +
        'ateStartC AND :DateEndC'
      ''
      'UNION ALL'
      
        'SELECT code_c,num_bvfac,date_bvfac,time_bvfac,montttc_bvfac,mont' +
        'ver_bvfac,(montttc_bvfac - montver_bvfac) AS Rest,'#39'FV'#39' AS Source' +
        ', code_ur,'
      '  CASE FC.code_mdpai'
      '    WHEN  1 THEN '#39'Esp'#232'ce'#39
      '    WHEN  2 THEN '#39'Ch'#232'que'#39
      '    WHEN  3 THEN '#39#192' Terme'#39
      '    WHEN  4 THEN '#39'Virement'#39
      '    end'
      
        'FROM bonv_fac FC where code_c = :CodeC AND date_bvfac BETWEEN :D' +
        'ateStartC AND :DateEndC'
      ''
      'UNION ALL'
      
        'SELECT code_c,num_bvctr,date_bvctr,time_bvctr,montttc_bvctr,mont' +
        'ver_bvctr,(montttc_bvctr - montver_bvctr) AS Rest,'#39'CT'#39' AS Source' +
        ', code_ur,'
      '  '#39'Espace'#39
      
        'FROM bonv_ctr CT where code_c = :CodeC AND date_bvctr BETWEEN :D' +
        'ateStartC AND :DateEndC'
      ''
      'UNION ALL'
      
        'SELECT code_c,nom_rc,date_rc,time_rc,'#39'0'#39' ,montver_rc,(montver_rc' +
        ' * -1) AS rest, '#39'RC'#39' AS Source, code_ur,'
      '  CASE RG.code_mdpai'
      '    WHEN  1 THEN '#39'Esp'#232'ce'#39
      '    WHEN  2 THEN '#39'Ch'#232'que'#39
      '    WHEN  3 THEN '#39#192' Terme'#39
      '    WHEN  4 THEN '#39'Virement'#39
      '    end'
      
        'FROM regclient RG where code_c = :CodeC AND date_rc BETWEEN :Dat' +
        'eStartC AND :DateEndC AND bon_or_no_rc = 1'
      ')'
      'VT'
      '-- INNER JOIN client CL'
      '-- ON  CL.code_c = VT.code_c'
      '  ORDER BY date_bvcom,time_bvcom;')
    Left = 174
    Top = 638
    ParamData = <
      item
        Name = 'CODEC'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'DATESTARTC'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEENDC'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object ClientSituationQRnum: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'num'
      Origin = 'num'
      ReadOnly = True
      Size = 8190
    end
    object ClientSituationQRsource: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'source'
      Origin = 'source'
      ReadOnly = True
      Size = 32767
    end
    object ClientSituationQRdate_bvcom: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'date_bvcom'
      Origin = 'date_bvcom'
      ReadOnly = True
    end
    object ClientSituationQRtime_bvcom: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'time_bvcom'
      Origin = 'time_bvcom'
      ReadOnly = True
    end
    object ClientSituationQRtotal: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ReadOnly = True
    end
    object ClientSituationQRversemt: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'versemt'
      Origin = 'versemt'
      ReadOnly = True
    end
    object ClientSituationQRrest: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'rest'
      Origin = 'rest'
      ReadOnly = True
    end
    object ClientSituationQRmp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'mp'
      Origin = 'mp'
      ReadOnly = True
      Size = 32767
    end
    object ClientSituationQRagent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'agent'
      Origin = 'agent'
      ReadOnly = True
    end
    object ClientSituationQRAgentName: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentName'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'agent'
      Lookup = True
    end
  end
  object FourSituationQR: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT  num_barec AS Num, Source,date_barec, time_barec, montttc' +
        '_barec AS Total, montver_barec AS Versemt, Rest, MP, code_ur AS ' +
        'Agent'
      'FROM'
      '('
      
        'SELECT code_f,num_barec,date_barec,time_barec,montttc_barec,mont' +
        'ver_barec,(montttc_barec - montver_barec) AS Rest,'#39'BR'#39' AS Source' +
        ', code_ur,'
      '  CASE BR.code_mdpai'
      '    WHEN  1 THEN '#39'Esp'#232'ce'#39
      '    WHEN  2 THEN '#39'Ch'#232'que'#39
      '    WHEN  3 THEN '#39#192' Terme'#39
      '    WHEN  4 THEN '#39'Virement'#39
      '    end AS MP'
      
        'FROM bona_rec BR where code_f = :CodeF AND date_barec BETWEEN :D' +
        'ateStartF AND :DateEndF'
      ''
      'UNION ALL'
      
        'SELECT code_f,num_bafac,date_bafac,time_bafac,montttc_bafac,mont' +
        'ver_bafac,(montttc_bafac - montver_bafac) AS Rest,'#39'FA'#39' AS Source' +
        ', code_ur,'
      '  CASE FA.code_mdpai'
      '    WHEN  1 THEN '#39'Esp'#232'ce'#39
      '    WHEN  2 THEN '#39'Ch'#232'que'#39
      '    WHEN  3 THEN '#39#192' Terme'#39
      '    WHEN  4 THEN '#39'Virement'#39
      '    end'
      
        'FROM bona_fac FA where code_f = :CodeF AND date_bafac BETWEEN :D' +
        'ateStartF AND :DateEndF'
      ''
      'UNION ALL'
      
        'SELECT code_f,nom_rf,date_rf,time_rf,'#39'0'#39' ,montver_rf,(montver_rf' +
        ' * -1) AS rest, '#39'RF'#39' AS Source, code_ur,'
      '  CASE RF.code_mdpai'
      '    WHEN  1 THEN '#39'Esp'#232'ce'#39
      '    WHEN  2 THEN '#39'Ch'#232'que'#39
      '    WHEN  3 THEN '#39#192' Terme'#39
      '    WHEN  4 THEN '#39'Virement'#39
      '    end'
      
        'FROM regfournisseur RF where code_f = :CodeF AND date_rf BETWEEN' +
        ' :DateStartF AND :DateEndF AND bon_or_no_rf = 1'
      ')'
      'VT'
      '-- INNER JOIN fournisseur FR'
      '-- ON  CL.code_f = VT.code_f'
      '  ORDER BY date_barec,time_barec;')
    Left = 286
    Top = 638
    ParamData = <
      item
        Name = 'CODEF'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'DATESTARTF'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEENDF'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object WideStringField1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'num'
      Origin = 'num'
      ReadOnly = True
      Size = 8190
    end
    object WideStringField2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'source'
      Origin = 'source'
      ReadOnly = True
      Size = 32767
    end
    object DateField1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'date_barec'
      Origin = 'date_barec'
      ReadOnly = True
    end
    object TimeField1: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'time_barec'
      Origin = 'time_barec'
      ReadOnly = True
    end
    object CurrencyField5: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ReadOnly = True
    end
    object CurrencyField6: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'versemt'
      Origin = 'versemt'
      ReadOnly = True
    end
    object CurrencyField7: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'rest'
      Origin = 'rest'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'mp'
      Origin = 'mp'
      ReadOnly = True
      Size = 32767
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'agent'
      Origin = 'agent'
      ReadOnly = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentName'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'agent'
      Lookup = True
    end
  end
  object SQLQuery1: TFDQuery
    FilterOptions = [foCaseInsensitive]
    Connection = PSDBConfigConnection
    Left = 76
    Top = 216
  end
  object AltersDBInfoChangesFDScript: TFDScript
    SQLScripts = <
      item
        Name = 'AltersDBChanges'
        SQL.Strings = (
          ''
          'ALTER TABLE users ADD totaux_ur bool DEFAULT '#39't'#39';'
          ''
          'ALTER TABLE users ADD viewprixa_ur bool DEFAULT '#39'f'#39';'
          ''
          'ALTER TABLE users ADD stock_ur bool DEFAULT '#39't'#39';')
      end>
    Connection = PSDBConfigConnection
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 255
    Top = 100
  end
  object ProduitMovementQR: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT '
      
        '  '#39'BR'#39' AS Source, BR.num_barec AS Num, T.nom_f AS Tiers, BR.date' +
        '_barec as Date,'
      '  BR.time_barec as Time, (BRL.qut_p * BRL.cond_p) AS Qut,'
      
        '  BRL.prixht_p * -1 AS PrixUVA, ((BRL.qut_p * BRL.cond_p) * BRL.' +
        'prixht_p ) * -1 AS Montant, CAST(0 as MONEY) AS Marge, BR.code_u' +
        'r AS Agent'
      'FROM produit P'
      'INNER JOIN bona_rec_list BRL'
      '  ON P.code_p = BRL.code_p'
      'INNER JOIN bona_rec BR'
      '  ON BRL.code_barec = BR.code_barec'
      'INNER JOIN fournisseur AS T'
      '  ON BR.code_f = T.code_f'
      
        '  WHERE P.code_p = :CodeP AND BR.valider_barec = TRUE AND BR.dat' +
        'e_barec BETWEEN :DateStartP AND :DateEndP'
      ''
      ''
      'UNION ALL '
      'SELECT'
      
        '  '#39'FA'#39' AS Source, FA.num_bafac AS Num, T.nom_f AS Tiers, FA.date' +
        '_bafac as Date,'
      '  FA.time_bafac as Time, (FAL.qut_p * FAL.cond_p) AS Qut,'
      
        '  FAL.prixht_p * -1 AS PrixU, ((FAL.qut_p * FAL.cond_p) * FAL.pr' +
        'ixht_p ) * -1 AS Montant, CAST(0 as MONEY) AS Marge, FA.code_ur ' +
        'AS Agent'
      'FROM produit P'
      'INNER JOIN bona_fac_list FAL'
      '  ON P.code_p = FAL.code_p'
      'INNER JOIN bona_fac FA'
      '  ON FAL.code_bafac = FA.code_bafac'
      'INNER JOIN fournisseur AS T'
      '  ON FA.code_f = T.code_f'
      
        '  WHERE P.code_p = :CodeP AND FA.valider_bafac = TRUE AND FA.dat' +
        'e_bafac BETWEEN :DateStartP AND :DateEndP'
      ''
      'UNION ALL '
      'SELECT'
      
        '  '#39'BL'#39' AS Source, BL.num_bvcom AS Num, T.nom_c AS Tiers, BL.date' +
        '_bvcom as Date,'
      '  BL.time_bvcom as Time, (BLL.qut_p * BLL.cond_p) * -1 AS Qut,'
      
        '  BLL.prixvd_p AS PrixU, ((BLL.qut_p * BLL.cond_p) * BLL.prixvd_' +
        'p ) AS Montant, (BLL.prixvd_p - BLL.prixht_p) AS Marge, Bl.code_' +
        'ur AS Agent'
      'FROM produit P'
      'INNER JOIN Bonv_com_list BLL'
      '  ON P.code_p = BLL.code_p'
      'INNER JOIN bonv_com BL'
      '  ON BLL.code_bvcom = BL.code_bvcom'
      'INNER JOIN client AS T'
      '  ON BL.code_c = T.code_c'
      
        '  WHERE P.code_p = :CodeP AND BL.valider_bvcom = TRUE AND BL.dat' +
        'e_bvcom BETWEEN :DateStartP AND :DateEndP'
      ''
      'UNION ALL '
      'SELECT'
      
        '  '#39'FV'#39' AS Source, FV.num_bvfac AS Num, T.nom_c AS Tiers, FV.date' +
        '_bvfac as Date,'
      '  FV.time_bvfac as Time, (FVL.qut_p * FVL.cond_p) * -1 AS Qut,'
      
        '  FVL.prixvd_p AS PrixU, ((FVL.qut_p * FVL.cond_p) * FVL.prixvd_' +
        'p ) AS Montant, (FVL.prixvd_p - FVL.prixht_p) AS Marge, FV.code_' +
        'ur AS Agent'
      'FROM produit P'
      'INNER JOIN bonv_fac_list FVL'
      '  ON P.code_p = FVL.code_p'
      'INNER JOIN bonv_fac FV'
      '  ON FVL.code_bvfac = FV.code_bvfac'
      'INNER JOIN client AS T'
      '  ON FV.code_c = T.code_c'
      
        '  WHERE P.code_p = :CodeP AND FV.valider_bvfac = TRUE AND FV.dat' +
        'e_bvfac BETWEEN :DateStartP AND :DateEndP'
      ''
      'UNION ALL '
      'SELECT'
      
        '  '#39'CT'#39' AS Source, CT.num_bvctr AS Num, T.nom_c AS Tiers, CT.date' +
        '_bvctr as Date,'
      '  CT.time_bvctr as Time, (CTL.qut_p * CTL.cond_p) * -1 AS Qut,'
      
        '  CTL.prixvd_p AS PrixU, ((CTL.qut_p * CTL.cond_p) * CTL.prixvd_' +
        'p ) AS Montant, (CTL.prixvd_p - CTL.prixht_p) AS Marge, CT.code_' +
        'ur AS Agent'
      'FROM produit P'
      'INNER JOIN bonv_ctr_list CTL'
      '  ON P.code_p = CTL.code_p'
      'INNER JOIN bonv_ctr CT'
      '  ON CTL.code_bvctr= CT.code_bvctr'
      'INNER JOIN client AS T'
      '  ON CT.code_c = T.code_c'
      
        '  WHERE P.code_p = :CodeP AND CT.valider_bvctr = TRUE AND CT.dat' +
        'e_bvctr BETWEEN :DateStartP AND :DateEndP'
      ''
      'UNION ALL '
      
        '       SELECT '#39'PT'#39'                                      AS Sourc' +
        'e,'
      '              PT.refer_pr                               AS Num,'
      
        '              '#39'--Perte--'#39'                               AS Tiers' +
        ','
      '              PT.date_pr                                AS Date,'
      '              PT.time_pr                                AS Time,'
      '              (PT.qut_p) * -1                           AS Qut,'
      
        '              PT.prixht_p                               AS PrixU' +
        ','
      
        '              (PT.qut_p) * PT.prixht_p                  AS Monta' +
        'nt,'
      
        '              CAST(0 as MONEY)                          AS Marge' +
        ','
      '              PT.code_ur                                AS Agent'
      '       FROM produit P'
      '              INNER JOIN pertes PT ON PT.code_p = P.code_p'
      '       WHERE P.code_p = :CodeP'
      '         AND PT.date_pr BETWEEN :DateStartP AND :DateEndP'
      ''
      'ORDER BY Date ,Time ')
    Left = 392
    Top = 640
    ParamData = <
      item
        Name = 'CODEP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'DATESTARTP'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATEENDP'
        DataType = ftDate
        ParamType = ptInput
      end>
    object ProduitMovementQRsource: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'source'
      Origin = 'source'
      ReadOnly = True
      Size = 3
    end
    object ProduitMovementQRnum: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'num'
      Origin = 'num'
      ReadOnly = True
    end
    object ProduitMovementQRtiers: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tiers'
      Origin = 'tiers'
      ReadOnly = True
      Size = 8190
    end
    object ProduitMovementQRdate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'date'
      Origin = 'date'
      ReadOnly = True
    end
    object ProduitMovementQRtime: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'time'
      Origin = '"time"'
      ReadOnly = True
    end
    object ProduitMovementQRqut: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qut'
      Origin = 'qut'
      ReadOnly = True
    end
    object ProduitMovementQRprixuva: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'prixuva'
      Origin = 'prixuva'
      ReadOnly = True
    end
    object ProduitMovementQRmontant: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montant'
      Origin = 'montant'
      ReadOnly = True
    end
    object ProduitMovementQRmarge: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'marge'
      Origin = 'marge'
      ReadOnly = True
    end
    object ProduitMovementQRagent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'agent'
      Origin = 'agent'
      ReadOnly = True
    end
    object ProduitMovementQRAgentName: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentName'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'agent'
      Lookup = True
    end
  end
  object AllProduitMovementQR: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT'
      
        '  P.refer_p, P.nom_p, '#39'BR'#39' AS Source, BR.num_barec AS Num, T.nom' +
        '_f AS Tiers, BR.date_barec as Date,'
      '  BR.time_barec as Time, (BRL.qut_p * BRL.cond_p) AS Qut,'
      
        '  BRL.prixht_p AS PrixUVA, ((BRL.qut_p * BRL.cond_p) * BRL.prixh' +
        't_p ) * -1 AS Montant, CAST(0 as MONEY) AS Marge, BR.code_ur AS ' +
        'Agent'
      'FROM produit P'
      'INNER JOIN bona_rec_list BRL'
      '  ON P.code_p = BRL.code_p'
      'INNER JOIN bona_rec BR'
      '  ON BRL.code_barec = BR.code_barec'
      'INNER JOIN fournisseur AS T'
      '  ON BR.code_f = T.code_f'
      
        '  WHERE BR.valider_barec = TRUE AND BR.date_barec BETWEEN :DateS' +
        'tartP AND :DateEndP'
      ''
      ''
      'UNION ALL '
      'SELECT'
      
        '  P.refer_p, P.nom_p, '#39'FA'#39' AS Source, FA.num_bafac AS Num, T.nom' +
        '_f AS Tiers, FA.date_bafac as Date,'
      '  FA.time_bafac as Time, (FAL.qut_p * FAL.cond_p) AS Qut,'
      
        '  FAL.prixht_p AS PrixU, ((FAL.qut_p * FAL.cond_p) * FAL.prixht_' +
        'p ) * -1 AS Montant, CAST(0 as MONEY) AS Marge, FA.code_ur AS Ag' +
        'ent'
      'FROM produit P'
      'INNER JOIN bona_fac_list FAL'
      '  ON P.code_p = FAL.code_p'
      'INNER JOIN bona_fac FA'
      '  ON FAL.code_bafac = FA.code_bafac'
      'INNER JOIN fournisseur AS T'
      '  ON FA.code_f = T.code_f'
      
        '  WHERE FA.valider_bafac = TRUE AND FA.date_bafac BETWEEN :DateS' +
        'tartP AND :DateEndP'
      ''
      'UNION ALL'
      'SELECT'
      
        '  P.refer_p, P.nom_p, '#39'BL'#39' AS Source, BL.num_bvcom AS Num, T.nom' +
        '_c AS Tiers, BL.date_bvcom as Date,'
      '  BL.time_bvcom as Time, (BLL.qut_p * BLL.cond_p) * -1 AS Qut,'
      
        '  BLL.prixvd_p AS PrixU, ((BLL.qut_p * BLL.cond_p) * BLL.prixvd_' +
        'p ) AS Montant, (BLL.prixvd_p - BLL.prixht_p) AS Marge, Bl.code_' +
        'ur AS Agent'
      'FROM produit P'
      'INNER JOIN Bonv_com_list BLL'
      '  ON P.code_p = BLL.code_p'
      'INNER JOIN bonv_com BL'
      '  ON BLL.code_bvcom = BL.code_bvcom'
      'INNER JOIN client AS T'
      '  ON BL.code_c = T.code_c'
      
        '  WHERE BL.valider_bvcom = TRUE AND BL.date_bvcom BETWEEN :DateS' +
        'tartP AND :DateEndP'
      ''
      'UNION ALL'
      'SELECT'
      
        '  P.refer_p, P.nom_p, '#39'FV'#39' AS Source, FV.num_bvfac AS Num, T.nom' +
        '_c AS Tiers, FV.date_bvfac as Date,'
      '  FV.time_bvfac as Time, (FVL.qut_p * FVL.cond_p) * -1 AS Qut,'
      
        '  FVL.prixvd_p AS PrixU, ((FVL.qut_p * FVL.cond_p) * FVL.prixvd_' +
        'p ) AS Montant, (FVL.prixvd_p - FVL.prixht_p) AS Marge, FV.code_' +
        'ur AS Agent'
      'FROM produit P'
      'INNER JOIN bonv_fac_list FVL'
      '  ON P.code_p = FVL.code_p'
      'INNER JOIN bonv_fac FV'
      '  ON FVL.code_bvfac = FV.code_bvfac'
      'INNER JOIN client AS T'
      '  ON FV.code_c = T.code_c'
      
        '  WHERE FV.valider_bvfac = TRUE AND FV.date_bvfac BETWEEN :DateS' +
        'tartP AND :DateEndP'
      ''
      'UNION ALL'
      'SELECT'
      
        '  P.refer_p, P.nom_p, '#39'CT'#39' AS Source, CT.num_bvctr AS Num, T.nom' +
        '_c AS Tiers, CT.date_bvctr as Date,'
      '  CT.time_bvctr as Time, (CTL.qut_p * CTL.cond_p) * -1 AS Qut,'
      
        '  CTL.prixvd_p AS PrixU, ((CTL.qut_p * CTL.cond_p) * CTL.prixvd_' +
        'p ) AS Montant, (CTL.prixvd_p - CTL.prixht_p) AS Marge, CT.code_' +
        'ur AS Agent'
      'FROM produit P'
      'INNER JOIN bonv_ctr_list CTL'
      '  ON P.code_p = CTL.code_p'
      'INNER JOIN bonv_ctr CT'
      '  ON CTL.code_bvctr= CT.code_bvctr'
      'INNER JOIN client AS T'
      '  ON CT.code_c = T.code_c'
      
        '  WHERE CT.valider_bvctr = TRUE AND CT.date_bvctr BETWEEN :DateS' +
        'tartP AND :DateEndP'
      ''
      'UNION ALL '
      '       SELECT'
      '              P.refer_p,'
      '              P.nom_p,'
      
        '              '#39'PT'#39'                                      AS Sourc' +
        'e,'
      '              PT.refer_pr                               AS Num,'
      
        '              '#39'--Perte--'#39'                               AS Tiers' +
        ','
      '              PT.date_pr                                AS Date,'
      '              PT.time_pr                                AS Time,'
      '              (PT.qut_p) * -1                           AS Qut,'
      
        '              PT.prixht_p                               AS PrixU' +
        ','
      
        '              (PT.qut_p) * PT.prixht_p                  AS Monta' +
        'nt,'
      
        '              CAST(0 as MONEY)                          AS Marge' +
        ','
      '              PT.code_ur                                AS Agent'
      '       FROM produit P'
      '              INNER JOIN pertes PT ON PT.code_p = P.code_p'
      '       WHERE PT.date_pr BETWEEN :DateStartP AND :DateEndP'
      ''
      'ORDER BY Date ,Time ')
    Left = 516
    Top = 642
    ParamData = <
      item
        Name = 'DATESTARTP'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEENDP'
        DataType = ftDate
        ParamType = ptInput
      end>
    object AllProduitMovementQRrefer_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'refer_p'
      Origin = 'refer_p'
      ReadOnly = True
      Size = 8190
    end
    object AllProduitMovementQRnom_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_p'
      Origin = 'nom_p'
      ReadOnly = True
      Size = 8190
    end
    object AllProduitMovementQRsource: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'source'
      Origin = 'source'
      ReadOnly = True
      Size = 32767
    end
    object AllProduitMovementQRnum: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'num'
      Origin = 'num'
      ReadOnly = True
    end
    object AllProduitMovementQRtiers: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tiers'
      Origin = 'tiers'
      ReadOnly = True
      Size = 8190
    end
    object AllProduitMovementQRdate: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'date'
      Origin = 'date'
      ReadOnly = True
    end
    object AllProduitMovementQRtime: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'time'
      Origin = '"time"'
      ReadOnly = True
    end
    object AllProduitMovementQRqut: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qut'
      Origin = 'qut'
      ReadOnly = True
    end
    object AllProduitMovementQRprixuva: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'prixuva'
      Origin = 'prixuva'
      ReadOnly = True
    end
    object AllProduitMovementQRmontant: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montant'
      Origin = 'montant'
      ReadOnly = True
    end
    object AllProduitMovementQRmarge: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'marge'
      Origin = 'marge'
      ReadOnly = True
    end
    object AllProduitMovementQRagent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'agent'
      Origin = 'agent'
      ReadOnly = True
    end
    object AllProduitMovementQRAgentName: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentName'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'agent'
      Lookup = True
    end
  end
  object InventoryTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_i'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT'
      '  code_i,'
      '  num_i,'
      '  date_i,'
      '  time_i,'
      '  nom_i,'
      '  valider_i,'
      '  totalpgap_i,'
      '  nump_i || '#39' Sur '#39'||(SELECT COUNT(*) FROM produit) AS nump_i,'
      '  obser_i,'
      '  code_ur'
      'FROM inventory')
    Left = 572
    Top = 533
    object InventoryTablecode_i: TIntegerField
      FieldName = 'code_i'
      Origin = 'code_i'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object InventoryTablenum_i: TWideStringField
      FieldName = 'num_i'
      Origin = 'num_i'
    end
    object InventoryTabledate_i: TDateField
      FieldName = 'date_i'
      Origin = 'date_i'
    end
    object InventoryTabletime_i: TTimeField
      FieldName = 'time_i'
      Origin = 'time_i'
    end
    object InventoryTablenom_i: TWideStringField
      FieldName = 'nom_i'
      Origin = 'nom_i'
      Size = 200
    end
    object InventoryTablevalider_i: TBooleanField
      FieldName = 'valider_i'
      Origin = 'valider_i'
    end
    object InventoryTabletotalpgap_i: TFloatField
      FieldName = 'totalpgap_i'
      Origin = 'totalpgap_i'
    end
    object InventoryTablenump_i: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nump_i'
      Origin = 'nump_i'
      ReadOnly = True
      Size = 32767
    end
    object InventoryTableobser_i: TWideStringField
      FieldName = 'obser_i'
      Origin = 'obser_i'
      Size = 32767
    end
    object InventoryTableAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'code_ur'
      Lookup = True
    end
    object InventoryTablecode_u: TIntegerField
      FieldName = 'code_ur'
    end
  end
  object Inventory_listTable: TFDQuery
    IndexFieldNames = 'code_i'
    MasterSource = InventoryF.InvListDataS
    MasterFields = 'code_i'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT'
      '       IL.code_il, IL.code_i,IL.code_p, P.refer_p, P.nom_p,'
      '       (P.qut_p + P. qutini_p) AS quttheo_il, IL.qutphys_il,'
      
        '       ((P.qut_p + P. qutini_p) - qutphys_il) * -1 AS calcgap_il' +
        ','
      
        '       IL.gap_il, IL.prixht_p,IL.code_u, IL.code_l, U.nom_u, L.n' +
        'om_l'
      'FROM inventory_list IL'
      'LEFT JOIN produit P'
      '    ON IL.code_p = P.code_p'
      'LEFT JOIN unite U'
      '    ON IL.code_u = U.code_u'
      'LEFT JOIN localisation L'
      '    ON IL.code_l = L.code_l ')
    Left = 571
    Top = 586
    object Inventory_listTablecode_il: TIntegerField
      FieldName = 'code_il'
      Origin = 'code_il'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Inventory_listTablecode_i: TIntegerField
      FieldName = 'code_i'
      Origin = 'code_i'
    end
    object Inventory_listTablecode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object Inventory_listTablerefer_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'refer_p'
      Origin = 'refer_p'
      Size = 8190
    end
    object Inventory_listTablenom_p: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_p'
      Origin = 'nom_p'
      Size = 8190
    end
    object Inventory_listTablequttheo_il: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quttheo_il'
      Origin = 'quttheo_il'
      ReadOnly = True
    end
    object Inventory_listTablequtphys_il: TFloatField
      FieldName = 'qutphys_il'
      Origin = 'qutphys_il'
      OnChange = Inventory_listTablequtphys_ilChange
    end
    object Inventory_listTableprixht_p: TCurrencyField
      FieldName = 'prixht_p'
      Origin = 'prixht_p'
    end
    object Inventory_listTablecalcgap_il: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'calcgap_il'
      Origin = 'calcgap_il'
      ReadOnly = True
    end
    object Inventory_listTablegap_il: TFloatField
      FieldName = 'gap_il'
      Origin = 'gap_il'
    end
    object Inventory_listTablecode_u: TIntegerField
      FieldName = 'code_u'
      Origin = 'code_u'
    end
    object Inventory_listTablecode_l: TIntegerField
      FieldName = 'code_l'
      Origin = 'code_l'
    end
    object Inventory_listTablenom_u: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_u'
      Origin = 'nom_u'
      Size = 15
    end
    object Inventory_listTablenom_l: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_l'
      Origin = 'nom_l'
      Size = 30
    end
  end
  object Bona_comTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_bacom'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT *,'
      '  ((montttc_bacom)-(montht_bacom - remise_bacom)) AS MontantTVA,'
      '  (montttc_bacom - montver_bacom) AS MontantRes,'
      ' CASE'
      
        '    WHEN remise_bacom <> '#39'0'#39' AND montht_bacom <> '#39'0'#39'  THEN  ROUN' +
        'D( CAST (((remise_bacom / montht_bacom) * 100) as NUMERIC),2)'
      '    ELSE '#39'0'#39
      ' END AS RemisePerc,'
      '  (montht_bacom - remise_bacom) AS NeTHT'
      'FROM bona_com WHERE bon_or_no_bacom = true')
    Left = 467
    Top = 250
    object Bona_comTablecode_bacom: TIntegerField
      FieldName = 'code_bacom'
      Origin = 'code_bacom'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Bona_comTabledate_bacom: TDateField
      FieldName = 'date_bacom'
      Origin = 'date_bacom'
    end
    object Bona_comTabletime_bacom: TTimeField
      FieldName = 'time_bacom'
      Origin = 'time_bacom'
    end
    object Bona_comTablemontht_bacom: TCurrencyField
      FieldName = 'montht_bacom'
      Origin = 'montht_bacom'
    end
    object rr: TCurrencyField
      FieldName = 'montver_bacom'
      Origin = 'montver_bacom'
    end
    object Bona_comTablevalider_bacom: TBooleanField
      FieldName = 'valider_bacom'
      Origin = 'valider_bacom'
    end
    object Bona_comTablenum_bacom: TWideStringField
      FieldName = 'num_bacom'
      Origin = 'num_bacom'
    end
    object Bona_comTablefourbacom: TStringField
      FieldKind = fkLookup
      FieldName = 'fourbacom'
      LookupDataSet = MainForm.FournisseurTable
      LookupKeyFields = 'code_f'
      LookupResultField = 'nom_f'
      KeyFields = 'code_f'
      Size = 100
      Lookup = True
    end
    object Bona_comTablemonttc_bacom: TCurrencyField
      FieldName = 'montttc_bacom'
    end
    object Bona_comTableremise_bacom: TCurrencyField
      FieldName = 'remise_bacom'
      Origin = 'remise_bacom'
    end
    object Bona_comTablenum_cheque_bacom: TWideStringField
      FieldName = 'num_cheque_bacom'
      Origin = 'num_cheque_bacom'
      Size = 50
    end
    object Bona_comTablecode_mdpai: TSmallintField
      FieldName = 'code_mdpai'
      Origin = 'code_mdpai'
    end
    object Bona_comTablecode_cmpt: TSmallintField
      FieldName = 'code_cmpt'
      Origin = 'code_cmpt'
    end
    object Bona_comTableModePaie: TStringField
      FieldKind = fkLookup
      FieldName = 'ModePaie'
      LookupDataSet = MainForm.Mode_paiementTable
      LookupKeyFields = 'code_mdpai'
      LookupResultField = 'nom_mdpai'
      KeyFields = 'code_mdpai'
      Lookup = True
    end
    object Bona_comTableCompte: TStringField
      FieldKind = fkLookup
      FieldName = 'Compte'
      LookupDataSet = MainForm.CompteTable
      LookupKeyFields = 'code_cmpt'
      LookupResultField = 'nom_cmpt'
      KeyFields = 'code_cmpt'
      Size = 50
      Lookup = True
    end
    object Bona_comTablecode_f: TIntegerField
      FieldName = 'code_f'
      Origin = 'code_f'
    end
    object Bona_comTablecode_ur: TIntegerField
      FieldName = 'code_ur'
      Origin = 'code_ur'
    end
    object Bona_comTablebon_or_no_bacom: TBooleanField
      FieldName = 'bon_or_no_bacom'
      Origin = 'bon_or_no_bacom'
    end
    object Bona_comTableAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'code_ur'
      Size = 50
      Lookup = True
    end
    object Bona_comTableobser_bacom: TWideStringField
      FieldName = 'obser_bacom'
      Origin = 'obser_bacom'
      Size = 200
    end
    object Bona_comTablemontanttva: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montanttva'
      Origin = 'montanttva'
      ReadOnly = True
    end
    object Bona_comTablemontantres: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantres'
      Origin = 'montantres'
      ReadOnly = True
    end
    object Bona_comTableremiseperc: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'remiseperc'
      Origin = 'remiseperc'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object Bona_comTablenetht: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'netht'
      Origin = 'netht'
      ReadOnly = True
    end
  end
  object Bona_com_listTable: TFDQuery
    AfterRefresh = Bona_com_listTableAfterRefresh
    FilterOptions = [foCaseInsensitive]
    Indexes = <
      item
        Active = True
        Name = 'icode_p_balist'
        Fields = 'code_p'
      end
      item
        Active = True
        Name = 'icode_bacom_balist'
        Fields = 'code_bacom'
      end>
    IndexFieldNames = 'code_bacom;code_p;code_bacoml'
    MasterSource = BonComAListDataS
    MasterFields = 'code_bacom'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT BCAL.code_bacom,BCAL.code_bacoml,BCAL.qut_p,BCAL.cond_p,B' +
        'CAL.code_p,BCAL.tva_p,BCAL.prixht_p,P.nom_p as nomp, P.refer_p a' +
        's referp,'
      
        '  BCAL.prixvd_p,BCAL.prixvr_p,BCAL.prixvg_p,BCAL.prixva_p,BCAL.p' +
        'rixva2_p,BCAL.dateperiss_p,BCAL.qutinstock_p,'
      
        '  (((BCAL.prixht_p * BCAL.tva_p)/100)+BCAL.prixht_p) AS PrixATTC' +
        ','
      '  ((BCAL.prixht_p * BCAL.qut_p) * cond_p) AS MontantHT,'
      
        '  (((((BCAL.prixht_p * BCAL.tva_p)/100)+BCAL.prixht_p) * BCAL.qu' +
        't_p)*cond_p) AS MontantTTC,'
      
        '  (((((((BCAL.prixht_p * BCAL.tva_p)/100)+BCAL.prixht_p) * BCAL.' +
        'qut_p)*cond_p) )-(((BCAL.prixht_p * BCAL.qut_p) * cond_p))) AS M' +
        'ontantTVA,'
      '  ((BCAL.prixht_p * BCAL.qut_p)* cond_p) AS MontantAHT,'
      ' CASE'
      '      WHEN BCAL.prixvd_p <> '#39'0'#39' THEN'
      '    CASE WHEN BCAL.prixht_p <> '#39'0'#39
      
        '      THEN ( ((BCAL.prixvd_p - BCAL.prixht_p) / BCAL.prixht_p  )' +
        ' *100)'
      '      ELSE '#39'100'#39
      '    END'
      ' END AS MargeD,'
      ' CASE'
      '    WHEN BCAL.prixvr_p <> '#39'0'#39' THEN'
      '  CASE WHEN BCAL.prixht_p <> '#39'0'#39
      
        '    THEN ( ((BCAL.prixvr_p - BCAL.prixht_p) / BCAL.prixht_p  ) *' +
        '100)'
      '    ELSE '#39'100'#39
      '  END'
      ' END AS MargeR,'
      ' CASE'
      '    WHEN BCAL.prixvg_p <> '#39'0'#39' THEN'
      '  CASE WHEN BCAL.prixht_p <> '#39'0'#39
      
        '    THEN ( ((BCAL.prixvg_p - BCAL.prixht_p) / BCAL.prixht_p  ) *' +
        '100)'
      '    ELSE '#39'100'#39
      '  END'
      ' END AS MargeG,'
      '  CASE'
      '    WHEN BCAL.prixva_p <> '#39'0'#39' THEN'
      '  CASE WHEN BCAL.prixht_p <> '#39'0'#39
      
        '    THEN ( ((BCAL.prixva_p - BCAL.prixht_p) / BCAL.prixht_p  ) *' +
        '100)'
      '    ELSE '#39'100'#39
      '  END'
      ' END AS MargeA,'
      '  CASE'
      '    WHEN BCAL.prixva2_p <> '#39'0'#39' THEN'
      '  CASE WHEN BCAL.prixht_p <> '#39'0'#39
      
        '    THEN ( ((BCAL.prixva2_p - BCAL.prixht_p) / BCAL.prixht_p  ) ' +
        '*100)'
      '    ELSE '#39'100'#39
      '  END'
      ' END AS MargeA2'
      'FROM bona_com_list as BCAL'
      'INNER JOIN produit as P'
      '  ON BCAL.code_p = P.code_p ')
    Left = 469
    Top = 316
    object Bona_com_listTablecode_bacoml: TIntegerField
      FieldName = 'code_bacoml'
      Origin = 'code_bacoml'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Bona_com_listTablecode_bacom: TIntegerField
      FieldName = 'code_bacom'
      Origin = 'code_bacom'
    end
    object Bona_com_listTablequt_p: TFloatField
      FieldName = 'qut_p'
      Origin = 'qut_p'
      OnChange = Bona_com_listTablequt_pChange
    end
    object Bona_com_listTableprixht_p: TCurrencyField
      FieldName = 'prixht_p'
      Origin = 'prixht_p'
      OnChange = Bona_com_listTableprixht_pChange
    end
    object Bona_com_listTablecond_p: TIntegerField
      FieldName = 'cond_p'
      Origin = 'cond_p'
      OnChange = Bona_com_listTablecond_pChange
    end
    object Bona_com_listTablecode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object Bona_com_listTableprixvd_p: TCurrencyField
      FieldName = 'prixvd_p'
      Origin = 'prixvd_p'
    end
    object Bona_com_listTableprixvr_p: TCurrencyField
      FieldName = 'prixvr_p'
      Origin = 'prixvr_p'
    end
    object Bona_com_listTableprixvg_p: TCurrencyField
      FieldName = 'prixvg_p'
      Origin = 'prixvg_p'
    end
    object Bona_com_listTableprixva_p: TCurrencyField
      FieldName = 'prixva_p'
      Origin = 'prixva_p'
    end
    object Bona_com_listTableprixva2_p: TCurrencyField
      FieldName = 'prixva2_p'
      Origin = 'prixva2_p'
    end
    object Bona_com_listTabledateperiss_p: TDateField
      FieldName = 'dateperiss_p'
      Origin = 'dateperiss_p'
    end
    object Bona_com_listTablequtinstock_p: TFloatField
      FieldName = 'qutinstock_p'
      Origin = 'qutinstock_p'
    end
    object Bona_com_listTabletva_p: TSmallintField
      FieldName = 'tva_p'
      Origin = 'tva_p'
    end
    object Bona_com_listTablenomp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomp'
      Origin = 'nomp'
      Size = 8190
    end
    object Bona_com_listTablereferp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'referp'
      Origin = 'referp'
      Size = 8190
    end
    object Bona_com_listTableprixattc: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'prixattc'
      Origin = 'prixattc'
      ReadOnly = True
    end
    object Bona_com_listTablemontantht: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantht'
      Origin = 'montantht'
      ReadOnly = True
    end
    object Bona_com_listTablemontantttc: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantttc'
      Origin = 'montantttc'
      ReadOnly = True
    end
    object Bona_com_listTablemontanttva: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montanttva'
      Origin = 'montanttva'
      ReadOnly = True
    end
    object Bona_com_listTablemontantaht: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantaht'
      Origin = 'montantaht'
      ReadOnly = True
    end
    object Bona_com_listTablemarged: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'marged'
      Origin = 'marged'
      ReadOnly = True
    end
    object Bona_com_listTablemarger: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'marger'
      Origin = 'marger'
      ReadOnly = True
    end
    object Bona_com_listTablemargeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'margeg'
      Origin = 'margeg'
      ReadOnly = True
    end
    object Bona_com_listTablemargea: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'margea'
      Origin = 'margea'
      ReadOnly = True
    end
    object Bona_com_listTablemargea2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'margea2'
      Origin = 'margea2'
      ReadOnly = True
    end
  end
  object BonComAListDataS: TDataSource
    DataSet = Bona_comTable
    Left = 469
    Top = 372
  end
  object Bonv_comTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_bvcom'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT *,'
      '  ((montttc_bvcom)-(montht_bvcom - remise_bvcom)) AS MontantTVA,'
      '  (montttc_bvcom - montver_bvcom) AS MontantRes,'
      ' CASE'
      
        '    WHEN remise_bvcom <> '#39'0'#39' AND montht_bvcom <> '#39'0'#39' THEN  ROUND' +
        '( CAST (((remise_bvcom / montht_bvcom) * 100) as NUMERIC),2)'
      '    ELSE '#39'0'#39
      ' END AS RemisePerc,'
      '  (montht_bvcom - remise_bvcom) AS NeTHT'
      'FROM bonv_com')
    Left = 470
    Top = 429
    object Bonv_comTablecode_bvcom: TIntegerField
      FieldName = 'code_bvcom'
      Origin = 'code_bvcom'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Bonv_comTabledate_bvcom: TDateField
      FieldName = 'date_bvcom'
      Origin = 'date_bvcom'
    end
    object Bonv_comTabletime_bvcom: TTimeField
      FieldName = 'time_bvcom'
      Origin = 'time_bvcom'
    end
    object Bonv_comTablecode_c: TIntegerField
      FieldName = 'code_c'
      Origin = 'code_c'
    end
    object Bonv_comTablemontaht_bvcom: TCurrencyField
      FieldName = 'montaht_bvcom'
      Origin = 'montaht_bvcom'
    end
    object Bonv_comTablemontht_bvcom: TCurrencyField
      FieldName = 'montht_bvcom'
      Origin = 'montht_bvcom'
    end
    object Bonv_comTablemontver_bvcom: TCurrencyField
      FieldName = 'montver_bvcom'
      Origin = 'montver_bvcom'
    end
    object Bonv_comTablevalider_bvcom: TBooleanField
      FieldName = 'valider_bvcom'
      Origin = 'valider_bvcom'
    end
    object Bonv_comTablenum_bvcom: TWideStringField
      FieldName = 'num_bvcom'
      Origin = 'num_bvcom'
    end
    object Bonv_comTableclientbvcom: TStringField
      FieldKind = fkLookup
      FieldName = 'clientbvcom'
      LookupDataSet = MainForm.ClientTable
      LookupKeyFields = 'code_c'
      LookupResultField = 'nom_c'
      KeyFields = 'code_c'
      Size = 100
      Lookup = True
    end
    object Bonv_comTablemontttc_bvcom: TCurrencyField
      FieldName = 'montttc_bvcom'
      Origin = 'montttc_bvcom'
    end
    object Bonv_comTableremise_bvcom: TCurrencyField
      FieldName = 'remise_bvcom'
      Origin = 'remise_bvcom'
    end
    object Bonv_comTablenum_cheque_bvcom: TWideStringField
      FieldName = 'num_cheque_bvcom'
      Origin = 'num_cheque_bvcom'
      Size = 50
    end
    object Bonv_comTablecode_mdpai: TSmallintField
      FieldName = 'code_mdpai'
      Origin = 'code_mdpai'
    end
    object Bonv_comTablecode_cmpt: TSmallintField
      FieldName = 'code_cmpt'
      Origin = 'code_cmpt'
    end
    object Bonv_comTableModePaie: TStringField
      FieldKind = fkLookup
      FieldName = 'ModePaie'
      LookupDataSet = MainForm.Mode_paiementTable
      LookupKeyFields = 'code_mdpai'
      LookupResultField = 'nom_mdpai'
      KeyFields = 'code_mdpai'
      Lookup = True
    end
    object Bonv_comTableCompte: TStringField
      FieldKind = fkLookup
      FieldName = 'Compte'
      LookupDataSet = MainForm.CompteTable
      LookupKeyFields = 'code_cmpt'
      LookupResultField = 'nom_cmpt'
      KeyFields = 'code_cmpt'
      Size = 50
      Lookup = True
    end
    object Bonv_comTableNEWTTC: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'NEWTTC'
    end
    object Bonv_comTablecode_ur: TIntegerField
      FieldName = 'code_ur'
      Origin = 'code_ur'
    end
    object Bonv_comTablemarge_bvcom: TCurrencyField
      FieldName = 'marge_bvcom'
      Origin = 'marge_bvcom'
    end
    object Bonv_comTablemontanttva: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montanttva'
      Origin = 'montanttva'
      ReadOnly = True
    end
    object Bonv_comTablemontantres: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantres'
      Origin = 'montantres'
      ReadOnly = True
    end
    object Bonv_comTableremiseperc: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'remiseperc'
      Origin = 'remiseperc'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object Bonv_comTablenetht: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'netht'
      Origin = 'netht'
      ReadOnly = True
    end
    object Bonv_comTableobser_bvcom: TWideStringField
      FieldName = 'obser_bvcom'
      Origin = 'obser_bvcom'
      Size = 32767
    end
    object Bonv_comTableAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = UsersTable
      LookupKeyFields = 'code_ur'
      LookupResultField = 'nom_ur'
      KeyFields = 'code_ur'
      Lookup = True
    end
  end
  object Bonv_com_listTable: TFDQuery
    AfterRefresh = Bonv_com_listTableAfterRefresh
    FilterOptions = [foCaseInsensitive]
    Indexes = <
      item
        Active = True
        Name = 'icode_p_bvlist'
        Fields = 'code_p'
      end
      item
        Active = True
        Name = 'icode_bvcom_bvlist'
        Fields = 'code_bvcom'
      end>
    IndexFieldNames = 'code_bvcom;code_p;code_bvcoml'
    MasterSource = BonComVListDataS
    MasterFields = 'code_bvcom'
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT BLL.code_bvcom,BLL.code_bvcoml,BLL.qut_p,BLL.prixvd_p,BLL' +
        '.cond_p,BLL.code_p,BLL.tva_p,BLL.code_barec,P.prixht_p,P.nom_p a' +
        's nomp, P.refer_p as referp,'
      '  (((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) AS PrixVTTC,'
      '  ((BLL.prixvd_p * BLL.qut_p) * cond_p) AS MontantHT,'
      
        '  (((((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) * BLL.qut_p)' +
        '*cond_p) AS MontantTTC,'
      
        '  (((((((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) * BLL.qut_' +
        'p)*cond_p) )-(((BLL.prixvd_p * BLL.qut_p) * cond_p))) AS Montant' +
        'TVA,'
      '  ((P.prixht_p * BLL.qut_p)* cond_p) AS MontantAHT,'
      ' CASE'
      '      WHEN BLL.prixvd_p <> '#39'0'#39'  THEN'
      '    CASE WHEN ((P.prixht_p * BLL.qut_p)* cond_p) <> '#39'0'#39
      
        '      THEN ( ( (((BLL.prixvd_p * BLL.qut_p) * cond_p) - ((P.prix' +
        'ht_p * BLL.qut_p)* cond_p)) / ((P.prixht_p * BLL.qut_p)* cond_p)' +
        ' ) *100)'
      '      ELSE '#39'100'#39
      '    END'
      ' END AS Marge,'
      
        '  (((BLL.prixvd_p * BLL.qut_p) * cond_p) - ((P.prixht_p * BLL.qu' +
        't_p)* cond_p) ) AS MargeM'
      'FROM Bonv_com_list as BLL'
      'INNER JOIN produit as P'
      '  ON BLL.code_p = P.code_p ')
    Left = 471
    Top = 484
    object Bonv_com_listTablecode_bvcoml: TIntegerField
      FieldName = 'code_bvcoml'
      Origin = 'code_bvcoml'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Bonv_com_listTablecode_bvcom: TIntegerField
      Alignment = taCenter
      FieldName = 'code_bvcom'
      Origin = 'code_bvcom'
    end
    object Bonv_com_listTablequt_p: TFloatField
      FieldName = 'qut_p'
      Origin = 'qut_p'
      OnChange = Bonv_com_listTablequt_pChange
    end
    object Bonv_com_listTableprixvd_p: TCurrencyField
      FieldName = 'prixvd_p'
      Origin = 'prixvd_p'
      OnChange = Bonv_com_listTableprixvd_pChange
    end
    object Bonv_com_listTablecond_p: TIntegerField
      FieldName = 'cond_p'
      Origin = 'cond_p'
      OnChange = Bonv_com_listTablecond_pChange
    end
    object Bonv_com_listTablecode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object Bonv_com_listTabletva_p: TSmallintField
      FieldName = 'tva_p'
      Origin = 'tva_p'
    end
    object Bonv_com_listTablecode_barec: TIntegerField
      FieldName = 'code_barec'
      Origin = 'code_barec'
    end
    object Bonv_com_listTableprixvttc: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'prixvttc'
      Origin = 'prixvttc'
      ReadOnly = True
    end
    object Bonv_com_listTablemontantht: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantht'
      Origin = 'montantht'
      ReadOnly = True
    end
    object Bonv_com_listTablemontantttc: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantttc'
      Origin = 'montantttc'
      ReadOnly = True
    end
    object Bonv_com_listTablemontanttva: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montanttva'
      Origin = 'montanttva'
      ReadOnly = True
    end
    object Bonv_com_listTablemontantaht: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'montantaht'
      Origin = 'montantaht'
      ReadOnly = True
    end
    object Bonv_com_listTablemarge: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'marge'
      Origin = 'marge'
      ReadOnly = True
    end
    object Bonv_com_listTablemargem: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'margem'
      Origin = 'margem'
      ReadOnly = True
    end
    object Bonv_com_listTableprixht_p: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'prixht_p'
      Origin = 'prixht_p'
    end
    object Bonv_com_listTablenomp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomp'
      Origin = 'nomp'
      Size = 8190
    end
    object Bonv_com_listTablereferp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'referp'
      Origin = 'referp'
      Size = 8190
    end
  end
  object BonComVListDataS: TDataSource
    DataSet = Bonv_comTable
    Left = 469
    Top = 542
  end
end
