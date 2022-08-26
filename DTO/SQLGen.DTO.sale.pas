unit SQLGEN.DTO.SALE;

interface

uses
  SQLGen.DTO.User;

type
  TSALE = class
  private
    FID: integer;
    FUSER: tuser;
    FTOTAL: currency;
    FDTSALE: tdatetime;
    procedure SetID(const aValue: integer);
    procedure SetUSER(const aValue: tuser);
    procedure SetTOTAL(const aValue: currency);
    procedure SetDTSALE(const aValue: tdatetime);
  public
    constructor Create;
    destructor Destroy; override;
    property ID: integer read FID write SetID;
    property USER: tuser read FUSER write SetUSER;
    property TOTAL: currency read FTOTAL write SetTOTAL;
    property DTSALE: tdatetime read FDTSALE write SetDTSALE;
  end;

implementation

{  TSALE  }

constructor TSALE.Create;
begin

end;

destructor TSALE.Destroy;
begin

  inherited;
end;

procedure TSALE.SetID(const aValue: integer);
begin
  FID := aValue;
end;

procedure TSALE.SetUSER(const aValue: tuser);
begin
  FUSER := aValue;
end;

procedure TSALE.SetTOTAL(const aValue: currency);
begin
  FTOTAL := aValue;
end;

procedure TSALE.SetDTSALE(const aValue: tdatetime);
begin
  FDTSALE := aValue;
end;

end.
