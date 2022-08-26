unit SQLGen.Command;

interface

uses
  SQLGen.Command.interfaces, System.SysUtils, System.Rtti;

type
  TCommand<T: class, constructor> = class(TInterfacedObject, iCommand<T>)
  private
    FEntity: T;
    FSQL: string;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand<T>;
    function Insert(aEntity: T): string;
    function Update(aEntity: T): string;
    function Select(aEntity: T): string;
    function Delete(aEntity: T): string;
    function Associations(aEntity: T): string;
  end;

implementation

{ TCommand<T> }

function TCommand<T>.Associations(aEntity: T): string;
begin

end;

constructor TCommand<T>.Create;
begin
  FEntity := T.Create;
end;

function TCommand<T>.Delete(aEntity: T): string;
begin

end;

destructor TCommand<T>.Destroy;
begin
  FreeAndNil(FEntity);
  inherited;
end;

function TCommand<T>.Insert(aEntity: T): string;
var
  aContexto: TRttiContext;
  aTipo: TRttiType;
  aField: TRttiField;
  aTableName: string;
begin
//INSERT INTO USER (id, name, born) VALUES (null, "Diego","1987-03-03")
  aContexto := TRttiContext.Create;
  try
    aTipo := aContexto.GetType(aEntity.ClassInfo);

    aTableName := 'USER';

    Result := 'INSERT INTO ' + aTableName + ' (';

    for aField in aTipo.GetFields do
    begin
      Result := Result + Copy(aField.Name, Pos('F', aField.Name) + 1, Length(aField.Name)) + ', ';
    end;

    Result := Copy(Result, 0, Length(Result) - 2);

    Result := Result + ') VALUES (';

    for aField in aTipo.GetFields do
    begin
      if aField.FieldType.ToString.ToUpper = 'INTEGER' then
        if StrToInt(aField.GetValue(Pointer(aEntity)).ToString) < 1 then
          Result := Result + 'Null, '
        else
          Result := Result + aField.GetValue(Pointer(aEntity)).ToString + ', ';

      if aField.FieldType.ToString.ToUpper = 'STRING' then
        Result := Result + QuotedStr(aField.GetValue(Pointer(aEntity)).ToString) + ', ';

      if aField.FieldType.ToString.ToUpper = 'TDATE' then
        Result := Result + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(aField.GetValue(Pointer(aEntity)).ToString))) + ', ';
//      Result := Result + aField.FieldType.ToString + ',';
    end;

    Result := Copy(Result, 0, Length(Result) - 2);
    Result := Result + ')';
  finally
    aContexto.Free;
  end;
end;

class function TCommand<T>.New: iCommand<T>;
begin
  Result := Self.Create;
end;

function TCommand<T>.Select(aEntity: T): string;
begin

end;

function TCommand<T>.Update(aEntity: T): string;
begin

end;

end.
