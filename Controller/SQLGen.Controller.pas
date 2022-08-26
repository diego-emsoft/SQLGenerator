unit SQLGen.Controller;

interface

uses
{(*}
  SQLGen.DTO.User,
  SQLGen.DTO.Product,
  SQLGen.DTO.sale,
  SQLGen.DTO.itemsale,
  SQLGen.Command,
  SQLGen.Command.interfaces,
  SQLGen.Controller.Interfaces;
{*)}

type
  TSQLGenController = class(TInterfacedObject, iControllerSQLGen)
  private
    FUser: iCommand<TUser>;
    FProduct: iCommand<TProduct>;
    FSale: iCommand<TSale>;
    FItemSale: iCommand<TITEMSALE>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerSQLGen;
    function User: iCommand<TUser>;
    function Product: iCommand<TProduct>;
    function Sale: iCommand<TSale>;
    function ItemSale: iCommand<TITEMSALE>;
  end;

implementation

{ TSQLGenController }

constructor TSQLGenController.Create;
begin
  //
end;

destructor TSQLGenController.Destroy;
begin

  inherited;
end;

function TSQLGenController.ItemSale: iCommand<TITEMSALE>;
begin
  if not Assigned(FItemSale) then
    FItemSale := TCommand<TITEMSALE>.New;
  Result := FItemSale;
end;

class function TSQLGenController.New: iControllerSQLGen;
begin
  Result := Self.Create;
end;

function TSQLGenController.Product: iCommand<TProduct>;
begin
  if not Assigned(FProduct) then
    FProduct := TCommand<TPRODUCT>.New;
  Result := FProduct;
end;

function TSQLGenController.Sale: iCommand<TSale>;
begin
  if not Assigned(FSale) then
    FSale := TCommand<TSALE>.New;
  Result := FSale;
end;

function TSQLGenController.User: iCommand<TUser>;
begin
  if not Assigned(FUser) then
    FUser := TCommand<TUSER>.New;
  Result := FUser;
end;

end.

