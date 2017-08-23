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
    Left = 83
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
    object UsersTablecode_ur: TIntegerField
      FieldName = 'code_ur'
      Origin = 'code_ur'
    end
    object UsersTablenom_ur: TWideStringField
      FieldName = 'nom_ur'
      Origin = 'nom_ur'
      Size = 40
    end
    object UsersTablepassword_ur: TWideStringField
      FieldName = 'password_ur'
      Origin = 'password_ur'
      Size = 32
    end
    object UsersTablebl_ur: TBooleanField
      FieldName = 'bl_ur'
      Origin = 'bl_ur'
    end
    object UsersTablefcv_ur: TBooleanField
      FieldName = 'fcv_ur'
      Origin = 'fcv_ur'
    end
    object UsersTablergc_ur: TBooleanField
      FieldName = 'rgc_ur'
      Origin = 'rgc_ur'
    end
    object UsersTablebr_ur: TBooleanField
      FieldName = 'br_ur'
      Origin = 'br_ur'
    end
    object UsersTablefca_ur: TBooleanField
      FieldName = 'fca_ur'
      Origin = 'fca_ur'
    end
    object UsersTablergf_ur: TBooleanField
      FieldName = 'rgf_ur'
      Origin = 'rgf_ur'
    end
    object UsersTablecaisse_ur: TBooleanField
      FieldName = 'caisse_ur'
      Origin = 'caisse_ur'
    end
    object UsersTablebank_ur: TBooleanField
      FieldName = 'bank_ur'
      Origin = 'bank_ur'
    end
    object UsersTableclient_ur: TBooleanField
      FieldName = 'client_ur'
      Origin = 'client_ur'
    end
    object UsersTablefour_ur: TBooleanField
      FieldName = 'four_ur'
      Origin = 'four_ur'
    end
    object UsersTabletype_ur: TSmallintField
      FieldName = 'type_ur'
      Origin = 'type_ur'
    end
    object UsersTablectr_ur: TBooleanField
      FieldName = 'ctr_ur'
      Origin = 'ctr_ur'
    end
    object UsersTableproduit_ur: TBooleanField
      FieldName = 'produit_ur'
      Origin = 'produit_ur'
    end
    object UsersTablefamp_ur: TBooleanField
      FieldName = 'famp_ur'
      Origin = 'famp_ur'
    end
    object UsersTablesfamp_ur: TBooleanField
      FieldName = 'sfamp_ur'
      Origin = 'sfamp_ur'
    end
    object UsersTablemdpai_ur: TBooleanField
      FieldName = 'mdpai_ur'
      Origin = 'mdpai_ur'
    end
    object UsersTablecmpt_ur: TBooleanField
      FieldName = 'cmpt_ur'
      Origin = 'cmpt_ur'
    end
    object UsersTableunit_ur: TBooleanField
      FieldName = 'unit_ur'
      Origin = 'unit_ur'
    end
    object UsersTablelocal_ur: TBooleanField
      FieldName = 'local_ur'
      Origin = 'local_ur'
    end
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
      
        'SELECT bona_rec_list.code_barec, bona_rec.num_barec, bona_rec_li' +
        'st.code_p,qutinstock_p,bona_rec_list.dateperiss_p,'
      
        '(bona_rec_list.dateperiss_p - CURRENT_DATE) AS daysleft,produit.' +
        'code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bona' +
        '_rec.code_f,produit.alertdays_p'
      'FROM bona_rec_list '
      'JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec'
      
        'JOIN produit as produit ON bona_rec_list.code_p = produit.code_p' +
        ' '
      'WHERE bona_rec.valider_barec = TRUE'
      'AND bona_rec_list.dateperiss_p is NOT NULL'
      'AND (bona_rec_list.dateperiss_p - CURRENT_DATE) <= alertdays_p'
      'AND (bona_rec_list.dateperiss_p - CURRENT_DATE) > 0'
      'AND qutinstock_p > 0 '
      'AND bona_rec_list.code_p = 1'
      ''
      'UNION ALL '
      ''
      
        'SELECT bona_fac_list.code_bafac, bona_fac.num_bafac, bona_fac_li' +
        'st.code_p,qutinstock_p,bona_fac_list.dateperiss_p,'
      
        '(bona_fac_list.dateperiss_p - CURRENT_DATE) AS daysleft2,produit' +
        '.code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bon' +
        'a_fac.code_f,produit.alertdays_p'
      'FROM bona_fac_list'
      'JOIN bona_fac ON bona_fac.code_bafac = bona_fac_list.code_bafac'
      
        'JOIN produit as produit ON bona_fac_list.code_p = produit.code_p' +
        ' '
      'WHERE bona_fac.valider_bafac = TRUE '
      'AND bona_fac_list.dateperiss_p is NOT NULL '
      'AND (bona_fac_list.dateperiss_p - CURRENT_DATE) <= alertdays_p'
      'AND (bona_fac_list.dateperiss_p - CURRENT_DATE) > 0'
      'AND qutinstock_p > 0'
      'AND bona_fac_list.code_p = 1'
      'ORDER BY daysleft DESC')
    Left = 854
    Top = 414
    object PCloseDiedCnotifcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
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
    object PCloseDiedCnotifnomp: TStringField
      FieldKind = fkLookup
      FieldName = 'nomp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'nom_p'
      KeyFields = 'code_p'
      Size = 150
      Lookup = True
    end
    object PCloseDiedCnotifreferp: TStringField
      FieldKind = fkLookup
      FieldName = 'referp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'refer_p'
      KeyFields = 'code_p'
      Lookup = True
    end
  end
  object PDiedCnotif: TFDQuery
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      
        'SELECT bona_rec_list.code_barec, bona_rec.num_barec, bona_rec_li' +
        'st.code_p,qutinstock_p,bona_rec_list.dateperiss_p,'
      
        '(bona_rec_list.dateperiss_p - CURRENT_DATE) AS daysleft,produit.' +
        'code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bona' +
        '_rec.code_f'
      'FROM bona_rec_list '
      'JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec'
      
        'JOIN produit as produit ON bona_rec_list.code_p = produit.code_p' +
        ' '
      'WHERE bona_rec.valider_barec = TRUE'
      'AND bona_rec_list.dateperiss_p is NOT NULL'
      'AND bona_rec_list.dateperiss_p <= CURRENT_DATE '
      'AND qutinstock_p > 0 '
      'AND produit.perissable_p = TRUE '
      'AND bona_rec_list.code_p = 1'
      ''
      'UNION ALL '
      ''
      
        'SELECT bona_fac_list.code_bafac, bona_fac.num_bafac, bona_fac_li' +
        'st.code_p,qutinstock_p,bona_fac_list.dateperiss_p,'
      
        '(bona_fac_list.dateperiss_p - CURRENT_DATE) AS daysleft2,produit' +
        '.code_famp,produit.code_sfamp,produit.code_l,produit.code_u, bon' +
        'a_fac.code_f'
      'FROM bona_fac_list'
      'JOIN bona_fac ON bona_fac.code_bafac = bona_fac_list.code_bafac'
      
        'JOIN produit as produit ON bona_fac_list.code_p = produit.code_p' +
        ' '
      'WHERE bona_fac.valider_bafac = TRUE '
      'AND bona_fac_list.dateperiss_p is NOT NULL '
      'AND bona_fac_list.dateperiss_p <= CURRENT_DATE'
      'AND qutinstock_p > 0'
      'AND produit.perissable_p = TRUE '
      'AND bona_fac_list.code_p = 1'
      'ORDER BY daysleft DESC')
    Left = 852
    Top = 470
    object PDiedCnotifcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
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
    object PDiedCnotifnomp: TStringField
      FieldKind = fkLookup
      FieldName = 'nomp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'nom_p'
      KeyFields = 'code_p'
      Size = 150
      Lookup = True
    end
    object PDiedCnotifreferp: TStringField
      FieldKind = fkLookup
      FieldName = 'referp'
      LookupDataSet = MainForm.ProduitTable
      LookupKeyFields = 'code_p'
      LookupResultField = 'refer_p'
      KeyFields = 'code_p'
      Size = 50
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
end
