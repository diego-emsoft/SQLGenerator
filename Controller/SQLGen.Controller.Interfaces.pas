unit SQLGen.Controller.Interfaces;

interface

uses
{(*}
  SQLGen.DTO.User,
  SQLGen.DTO.Product,
  SQLGen.DTO.sale,
  SQLGen.DTO.itemsale,
  SQLGen.Command.interfaces;
{*)}

type
  iControllerSQLGen = interface
    ['{16C98E4A-A1D4-49AC-A85D-4DD76B10E46A}']
    function User: iCommand<TUser>;
    function Product: iCommand<TProduct>;
    function Sale: iCommand<TSale>;
    function ItemSale: iCommand<TITEMSALE>;
  end;

implementation

end.

