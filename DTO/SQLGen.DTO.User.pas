unit SQLGEN.DTO.USER;

interface 

type
  TUSER = class
  private
    FID: integer;
    FNAME: string;
    FBORN: tdate;
    procedure SetID(const aValue: integer);
    procedure SetNAME(const aValue: string);
    procedure SetBORN(const aValue: tdate);
  public
    constructor Create;
    destructor Destroy; override;
    property ID: integer read FID write SetID;
    property NAME: string read FNAME write SetNAME;
    property BORN: tdate read FBORN write SetBORN;
  end;

implementation

{  TUSER  }

constructor TUSER.Create;
begin

end;

destructor TUSER.Destroy;
begin

  inherited;
end;

procedure TUSER.SetID(const aValue: integer);
begin
  FID := aValue;
end;

procedure TUSER.SetNAME(const aValue: string);
begin
  FNAME := aValue;
end;

procedure TUSER.SetBORN(const aValue: tdate);
begin
  FBORN := aValue;
end;

end.
