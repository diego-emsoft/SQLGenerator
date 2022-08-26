unit SQLGEN.DTO.PRODUCT;

interface 

type
  TPRODUCT = class
  private
    FID: integer;
    FNAME: string;
    FPRICE: currency;
    FQUANTITY: integer;
    procedure SetID(const aValue: integer);
    procedure SetNAME(const aValue: string);
    procedure SetPRICE(const aValue: currency);
    procedure SetQUANTITY(const aValue: integer);
  public
    constructor Create;
    destructor Destroy; override;
    property ID: integer read FID write SetID;
    property NAME: string read FNAME write SetNAME;
    property PRICE: currency read FPRICE write SetPRICE;
    property QUANTITY: integer read FQUANTITY write SetQUANTITY;
  end;

implementation

{  TPRODUCT  }

constructor TPRODUCT.Create;
begin

end;

destructor TPRODUCT.Destroy;
begin

  inherited;
end;

procedure TPRODUCT.SetID(const aValue: integer);
begin
  FID := aValue;
end;

procedure TPRODUCT.SetNAME(const aValue: string);
begin
  FNAME := aValue;
end;

procedure TPRODUCT.SetPRICE(const aValue: currency);
begin
  FPRICE := aValue;
end;

procedure TPRODUCT.SetQUANTITY(const aValue: integer);
begin
  FQUANTITY := aValue;
end;

end.
