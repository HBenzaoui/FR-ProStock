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
end
