object DataModuleF: TDataModuleF
  OldCreateOrder = False
  Height = 515
  Width = 619
  object Top5produit: TFDQuery
    Active = True
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      '-- This quiery will select the top 5 seled prudect '
      'SELECT  code_p, SUM(qut_p)'
      'FROM bonv_ctr_list'
      'GROUP BY code_p'
      'ORDER BY sum(qut_p) DESC LIMIT 5'
      ''
      '')
    Left = 460
    Top = 32
    object Top5produitcode_p: TIntegerField
      FieldName = 'code_p'
      Origin = 'code_p'
    end
    object Top5produitsum: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'sum'
      Origin = 'sum'
      ReadOnly = True
    end
    object Top5produitnomp: TStringField
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
    Active = True
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_c,'
      '             COUNT(code_c) AS best_client'
      '    FROM     bonv_fac '
      '    GROUP BY code_c'
      '    ORDER BY best_client DESC'
      '    LIMIT    1;')
    Left = 36
    Top = 88
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
    Active = True
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT   SUM(qut_p) as totat'
      'FROM produit')
    Left = 460
    Top = 176
    object TotalProduittotat: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totat'
      Origin = 'totat'
      ReadOnly = True
    end
  end
  object TopVerClient: TFDQuery
    Active = True
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_c, MAX(montver_bvfac)'
      '    FROM     bonv_fac '
      '    GROUP BY code_c'
      '    ORDER BY MAX(montver_bvfac) DESC'
      '    LIMIT    1;')
    Left = 36
    Top = 144
  end
  object TopFour: TFDQuery
    Active = True
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_f,'
      '             COUNT(code_f) AS best_four'
      '    FROM     bona_fac '
      '    GROUP BY code_f'
      '    ORDER BY best_four DESC'
      '    LIMIT    1;')
    Left = 116
    Top = 90
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
    Active = True
    Connection = MainForm.GstockdcConnection
    SQL.Strings = (
      'SELECT       code_c, MAX(montver_bvfac)'
      '    FROM     bonv_fac '
      '    GROUP BY code_c'
      '    ORDER BY MAX(montver_bvfac) DESC'
      '    LIMIT    1;')
    Left = 116
    Top = 144
  end
  object ToatalVerMonthVLIV: TFDQuery
    Active = True
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
      'from bonv_liv'
      'group by 1,2')
    Left = 236
    Top = 312
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
    Params.Strings = (
      'CharacterSet=SQL_ASCII'
      'ConnectionDef=GSTOCKDC')
    Connected = True
    LoginPrompt = False
    Left = 91
    Top = 336
  end
  object ToatalVerMonthVCTR: TFDQuery
    Active = True
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
      'from bonv_ctr'
      'group by 1,2')
    Left = 236
    Top = 424
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
    Active = True
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
      'from bonv_fac'
      'group by 1,2')
    Left = 236
    Top = 368
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
    Active = True
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
      'from bona_rec'
      'group by 1,2')
    Left = 476
    Top = 320
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
    Active = True
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
      'from bona_fac'
      'group by 1,2')
    Left = 476
    Top = 376
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
end
