unit ScaleAPI;

interface
uses
  WinSock,PLU,
//  SalesReceipt,Stock,
//  ScaleData,Password,
//  PreSetKey,Traceability,
  ShopName
//  ,FlexiBarcode,
//  SalesTotal
  ;

function ConnectScale(scaleIP: AnsiString; PortNo: Integer): TSocket; stdcall; external 'bin/B100.dll';
function CloseConnect(s: TSocket): Integer; stdcall; external 'bin/B100.dll';
//PLU File
function SendRPlu(s: TSocket; PLUData: PReceiptPLU): Integer; stdcall; external 'bin/B100.dll';
function SendLPlu(s: TSocket; PLUData: PLabelPLU): Integer; stdcall; external 'bin/B100.dll';
function RDPluFAsReceipt(s: TSocket; RecordNo: Integer; RPLUData: PReceiptPLU): Integer; stdcall; external 'B100.dll';
function RDPluFAsLabel(s: TSocket; RecordNo: Integer; LPLUData: PLabelPLU): Integer; stdcall; external 'bin/B100.dll';
//Receipt Detail
//function ReadReceiptDetail(s: TSocket; RecordNo: Integer;ReceiptData: PReceiptDetail): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelReceiptDetailRD(s: TSocket; RecordNo: Integer): Integer; stdcall; external 'SMScaleAPI.dll';
//Receipt Total
//function ReadReceiptTotal(s: TSocket; RecordNo: Integer; ReceiptData: PReceiptTotal): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelReceiptTotalRD(s: TSocket; RecordNo: Integer): Integer; stdcall; external 'SMScaleAPI.dll';
//Label Transaction
//function ReadPLUTTLTrans(s: TSocket; RecordNo: Integer;PLUTTLTrans: PPlu_T_Transaction): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelPLUTTLTrans(s: TSocket; RecordNo: Integer): Integer; stdcall; external 'SMScaleAPI.dll';
//Stock Operation file
//function ReadStock(s: TSocket; RecordNo: Integer; StockOpt: PStockRecord): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelStockRD(s: TSocket; RecordNo: Integer): Integer; stdcall; external 'SMScaleAPI.dll';
//Sync Time
function SyncDateTime(s: TSocket): Integer; stdcall; external 'bin/B100.dll';
//Read Scale Info.
//function ReadScaleData(s: TSocket; RecordNo: Integer; ScaleInfo: PScaleInfo): Integer; stdcall; external 'SMScaleAPI.dll';
//Password File
//function ReadPassword(s: TSocket; RecordNo: Integer; ppwd: PSMPwd): Integer; stdcall; external 'SMScaleAPI.dll';
//function SendPassword(s: TSocket; ppwd: PSMPwd): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelPassword(s: TSocket): Integer; stdcall; external 'SMScaleAPI.dll';
//Preset Key
//function ReadPreSetKey(s: TSocket; RecordNo: Integer; ppsk: PPSKey): Integer; stdcall; external 'SMScaleAPI.dll';
//function SendPresetKey(s: TSocket; ppsk: PPSKey): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelPSKFile(s: TSocket): Integer; stdcall; external 'SMScaleAPI.dll';
//Transaction
//function ReadTraceability(s: TSocket; RecordNo: Integer; pTraceability: PTrace): Integer; stdcall; external 'SMScaleAPI.dll';
//function SendTraceability(s: TSocket; pTraceability: PTrace): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelPSKFile(s: TSocket): Integer; stdcall; external 'SMScaleAPI.dll';
//Store Name
function ReadShopName(s: TSocket; RecordNo: Integer; pshopname: PShpName): Integer; stdcall; external 'bin/B100.dll';
function SendShopName(s: TSocket; pshopname: PShpName): Integer; stdcall; external 'bin/B100.dll';
function DelSHPFile(s: TSocket): Integer; stdcall; external 'bin/B100.dll';
//Custom Barocode
//function ReadFlexiBarcode(s: TSocket; RecordNo: Integer; pFlxBar: PFlexiBar): Integer; stdcall; external 'SMScaleAPI.dll';
//function SendFlexiBarcode(s: TSocket; pFlxBar: PFlexiBar): Integer; stdcall; external 'SMScaleAPI.dll';
//function DelSHPFile(s: TSocket): Integer; stdcall; external 'SMScaleAPI.dll';
//Sales Daily
//function ReadSalesDaily(s: TSocket; RecordNo: Integer; pSalesD: PSalesDaily): Integer; stdcall; external 'SMScaleAPI.dll';

implementation

end.

 