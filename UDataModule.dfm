object DataModuleF: TDataModuleF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 665
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
    Top = 490
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
      '  WHERE valider_bvctr = true '
      '  GROUP BY code_p,qut_p'
      
        '----------------------------------------------------------------' +
        '-------'
      '  UNION ALL '
      '  SELECT code_p, SUM(qut_p) as total FROM bonv_fac_list a'
      '  INNER JOIN bonv_fac c ON a.code_bvfac = c.code_bvfac '
      '  WHERE valider_bvfac = true '
      '  GROUP BY code_p,qut_p'
      
        '----------------------------------------------------------------' +
        '-------'
      '  UNION ALL '
      '  SELECT code_p, SUM(qut_p) as total FROM bonv_liv_list e'
      '  INNER JOIN bonv_liv f ON e.code_bvliv = f.code_bvliv '
      '  WHERE valider_bvliv = true '
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
      'DriverID=pG')
    Connected = True
    LoginPrompt = False
    Left = 77
    Top = 22
  end
  object UsersTable: TFDQuery
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'code_ur'
    Connection = PSDBConfigConnection
    SQL.Strings = (
      'SELECT * FROM users')
    Left = 94
    Top = 113
  end
  object CreatAndaddAdmin: TFDScript
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
          ''
          ';'
          'COMMENT ON COLUMN "users"."ctr_ur" IS '#39
          #39';')
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
end
