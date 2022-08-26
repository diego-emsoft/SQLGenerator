program SQLGen;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  System.StartUpCopy,
  FMX.Forms,
  SQLGen.View.Main in 'View\SQLGen.View.Main.pas' {Form1},
  SQLGen.DTO.itemsale in 'DTO\SQLGen.DTO.itemsale.pas',
  SQLGen.DTO.Product in 'DTO\SQLGen.DTO.Product.pas',
  SQLGen.DTO.sale in 'DTO\SQLGen.DTO.sale.pas',
  SQLGen.DTO.User in 'DTO\SQLGen.DTO.User.pas',
  SQLGen.Command.interfaces in 'Source\SQLGen.Command.interfaces.pas',
  SQLGen.Command in 'Source\SQLGen.Command.pas',
  SQLGen.Controller in 'Controller\SQLGen.Controller.pas',
  SQLGen.Controller.Interfaces in 'Controller\SQLGen.Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
