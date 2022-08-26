unit SQLGEN.DTO.ITEMSALE;

interface

uses
  SQLGen.DTO.sale, SQLGen.DTO.Product;

type
  TITEMSALE = class
  private
    FID: integer;
    FPRODUCT: tproduct;
    FQUANTITY: integer;
    FTOTAL: currency;
    FSALE: tsale;
    procedure SetID(const aValue: integer);
    procedure SetPRODUCT(const aValue: tproduct);
    procedure SetQUANTITY(const aValue: integer);
    procedure SetTOTAL(const aValue: currency);
    procedure SetSALE(const aValue: tsale);
  public
    constructor Create;
    destructor Destroy; override;
    property ID: integer read FID write SetID;
    property PRODUCT: tproduct read FPRODUCT write SetPRODUCT;
    property QUANTITY: integer read FQUANTITY write SetQUANTITY;
    property TOTAL: currency read FTOTAL write SetTOTAL;
    property SALE: tsale read FSALE write SetSALE;
  end;

implementation

{  TITEMSALE  }

constructor TITEMSALE.Create;
begin

end;

destructor TITEMSALE.Destroy;
begin

  inherited;
end;

procedure TITEMSALE.SetID(const aValue: integer);
begin
  FID := aValue;
end;

procedure TITEMSALE.SetPRODUCT(const aValue: tproduct);
begin
  FPRODUCT := aValue;
end;

procedure TITEMSALE.SetQUANTITY(const aValue: integer);
begin
  FQUANTITY := aValue;
end;

procedure TITEMSALE.SetTOTAL(const aValue: currency);
begin
  FTOTAL := aValue;
end;

procedure TITEMSALE.SetSALE(const aValue: tsale);
begin
  FSALE := aValue;
end;

end.
