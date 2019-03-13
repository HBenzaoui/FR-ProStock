unit PLU;

interface
uses
  Classes;

type

  SMDiscount = record
    //DiscountNo: Integer;
    StartDate: Integer;
    StartTime: Integer;
    EndDate: Integer;
    EndTime: Integer;
    FirstLIM: Integer;
    Within1stLIM: Integer;
    SecondLIM: Integer;
    Within2ndLIM: Integer;
    DisType: Integer;
    MarkDown: Integer;
  end;

  SM_EANData = record
    ItemCode: array[0..9] of AnsiChar;
    BarCodeType: Integer;
    BarRightData: Integer;
  end;

//SM 电子秤 带字体的文本结构
  SM_ASCII_TXT = record
    TwsFontSize: Integer; //字体
    TxtValue: array[0..99] of AnsiChar; //文本内容
  end;


  MutilBarcode = record
    MutilBarFunc: Integer;
    MutilBarData: array[0..48] of AnsiChar;
    MutilBarType: Integer;
  end;


  LabelPLU = record
    PLUNo: Integer; //PLU No.
    WeightUnit: Integer; //Item Property(0--Weight;1--Non-weight)
    UPriceOverride: Integer; //Unit Price Override(0--Inhibit;1--Allow)
    UPrice: Integer; //Unit Price
    LabelFormat1: Integer; //Label Format 1
    LabelFormat2: Integer; //Label Format 2
    BarFormat: Integer; //Barcode Format
    EANFlags: integer; //EAN Flags
    EAN_Data: SM_EANData; //EAN Data
    MG: Integer; //Main Group
    SBDate: Integer; //Sell by Date
    UBDate: Integer; //Used by Date
    Cost: Integer; //Cost
    Tare: Integer; //Tare
    QTY: Integer; //Quantity
    TaxNo: integer;
    Traceability: integer;
    TraceabilityL: integer;
    MBarcode1: MutilBarcode; //Multi Barcode 1
    Discount: SMDiscount; //Discount
    Commodity: array[0..3] of SM_ASCII_TXT; //4 Lines Max, 100 Characters each line
    Ingredient: array[0..14] of SM_ASCII_TXT; //15 Lines Max, 100 Characters each line
    SPMessage: array[0..29] of SM_ASCII_TXT; //30 Lines Max, 100 Characters each line
  end;

  PLabelPLU = ^LabelPLU;


  ReceiptPLU = record
    PLUNo: Integer; //PLU No.
    WeightUnit: Integer; //Item Property (0--Weight;1--Non-Weight)
    UPriceOverride: Integer; //Unit Price Override(0--Inhibit;1--Allow)
    UPrice: Integer; //Unit Price
    MG: Integer; //Main Group
    Cost: Integer; //Cost
    Tare: Integer; //Tare
    QTY: Integer; //Quantity
    CustomDisc: Integer; //Member Price
    Discount: SMDiscount; //Discount
    Commodity: array[0..99] of AnsiChar; //Item Commodity
    BCC: Integer;
  end;
  PReceiptPLU = ^ReceiptPLU;

implementation


end.

