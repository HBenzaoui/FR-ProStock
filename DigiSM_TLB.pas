unit DigiSM_TLB;

{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.

{$WRITEABLECONST ON}

interface

uses Windows, ActiveX, Classes, Graphics, StdVCL;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DigiSMMajorVersion = 1;
  DigiSMMinorVersion = 5;

  CLASS_Scale: TGUID = '{F1769267-487E-4BBE-844B-43C0532AE43D}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IScale = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Scale = IScale;


// *********************************************************************//
// Interface: IScale
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87CC1522-827C-4862-9DD2-9853F7D776BA}
// *********************************************************************//
  IScale = interface(IDispatch)
    ['{87CC1522-827C-4862-9DD2-9853F7D776BA}']
    function OpenConnect: Integer; safecall;
    function CloseConnect: Integer; safecall;
    function SendPLU: Integer; safecall;
    function ClearPLU: Integer; safecall;
    function SendMsg: Integer; safecall;
    function ClearMsg: Integer; safecall;
    function SendButton: Integer; safecall;
    function ClearButton: Integer; safecall;
    function SendIngredient: Integer; safecall;
    function ClearIngredient: Integer; safecall;
    function SendDateTime: Integer; safecall;
    function ResultDescription(Value: Integer): WideString; safecall;
    procedure About; safecall;
    function Get_ScaleIP: WideString; safecall;
    procedure Set_ScaleIP(const Value: WideString); safecall;
    function Get_ScalePort: Integer; safecall;
    procedure Set_ScalePort(Value: Integer); safecall;
    function Get_ScaleTimeOut: Integer; safecall;
    procedure Set_ScaleTimeOut(Value: Integer); safecall;
    function Get_PLUType: Integer; safecall;
    procedure Set_PLUType(Value: Integer); safecall;
    function Get_PLUNo: Integer; safecall;
    procedure Set_PLUNo(Value: Integer); safecall;
    function Get_PLUName: WideString; safecall;
    procedure Set_PLUName(const Value: WideString); safecall;
    function Get_UnitPrice: Integer; safecall;
    procedure Set_UnitPrice(Value: Integer); safecall;
    function Get_ShelfLife: Integer; safecall;
    procedure Set_ShelfLife(Value: Integer); safecall;
    function Get_SellBy: Integer; safecall;
    procedure Set_SellBy(Value: Integer); safecall;
    function Get_ItemCode: WideString; safecall;
    procedure Set_ItemCode(const Value: WideString); safecall;
    function Get_GroupCode: Integer; safecall;
    procedure Set_GroupCode(Value: Integer); safecall;
    function Get_TareWeight: Integer; safecall;
    procedure Set_TareWeight(Value: Integer); safecall;
    function Get_ButtonNo: Integer; safecall;
    procedure Set_ButtonNo(Value: Integer); safecall;
    function Get_MsgNo: Integer; safecall;
    procedure Set_MsgNo(Value: Integer); safecall;
    function Get_MsgName: WideString; safecall;
    procedure Set_MsgName(const Value: WideString); safecall;
    function Get_LabelFormat: WideString; safecall;
    procedure Set_LabelFormat(const Value: WideString); safecall;
    function Get_BarCodeFormat: Integer; safecall;
    procedure Set_BarCodeFormat(Value: Integer); safecall;
    function Get_Date: WideString; safecall;
    procedure Set_Date(const Value: WideString); safecall;
    function Get_Time: WideString; safecall;
    procedure Set_Time(const Value: WideString); safecall;
    function Get_LabelFont: WideString; safecall;
    procedure Set_LabelFont(const Value: WideString); safecall;
    function Get_IngredientNo: Integer; safecall;
    procedure Set_IngredientNo(Value: Integer); safecall;
    function Get_IngredientName: WideString; safecall;
    procedure Set_IngredientName(const Value: WideString); safecall;
    function Get_RaiseException: WordBool; safecall;
    procedure Set_RaiseException(Value: WordBool); safecall;
    function Get_ResultCode: Integer; safecall;
    function Get_LastError: Integer; safecall;
    procedure Set_LastError(Value: Integer); safecall;
    function Get_Version: WideString; safecall;
    property ScaleIP: WideString read Get_ScaleIP write Set_ScaleIP;
    property ScalePort: Integer read Get_ScalePort write Set_ScalePort;
    property ScaleTimeOut: Integer read Get_ScaleTimeOut write Set_ScaleTimeOut;
    property PLUType: Integer read Get_PLUType write Set_PLUType;
    property PLUNo: Integer read Get_PLUNo write Set_PLUNo;
    property PLUName: WideString read Get_PLUName write Set_PLUName;
    property UnitPrice: Integer read Get_UnitPrice write Set_UnitPrice;
    property ShelfLife: Integer read Get_ShelfLife write Set_ShelfLife;
    property SellBy: Integer read Get_SellBy write Set_SellBy;
    property ItemCode: WideString read Get_ItemCode write Set_ItemCode;
    property GroupCode: Integer read Get_GroupCode write Set_GroupCode;
    property TareWeight: Integer read Get_TareWeight write Set_TareWeight;
    property ButtonNo: Integer read Get_ButtonNo write Set_ButtonNo;
    property MsgNo: Integer read Get_MsgNo write Set_MsgNo;
    property MsgName: WideString read Get_MsgName write Set_MsgName;
    property LabelFormat: WideString read Get_LabelFormat write Set_LabelFormat;
    property BarCodeFormat: Integer read Get_BarCodeFormat write Set_BarCodeFormat;
    property Date: WideString read Get_Date write Set_Date;
    property Time: WideString read Get_Time write Set_Time;
    property LabelFont: WideString read Get_LabelFont write Set_LabelFont;
    property IngredientNo: Integer read Get_IngredientNo write Set_IngredientNo;
    property IngredientName: WideString read Get_IngredientName write Set_IngredientName;
    property RaiseException: WordBool read Get_RaiseException write Set_RaiseException;
    property ResultCode: Integer read Get_ResultCode;
    property LastError: Integer read Get_LastError write Set_LastError;
    property Version: WideString read Get_Version;
  end;

// *********************************************************************//
// The Class CoScale provides a Create and CreateRemote method to
// create instances of the default interface IScale exposed by
// the CoClass Scale. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoScale = class
    class function Create: IScale;
  end;

implementation

uses ComObj;

class function CoScale.Create: IScale;
begin
  Result := CreateComObject(CLASS_Scale) as IScale;
end;



end.
