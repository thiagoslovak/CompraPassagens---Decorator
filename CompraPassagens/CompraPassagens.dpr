program CompraPassagens;

uses
  ExceptionLog,
  Forms,
  uTelaPassagem in 'uTelaPassagem.pas' {Form1},
  uCalculaPassagem in 'uCalculaPassagem.pas',
  uCabinePrincipal in 'uCabinePrincipal.pas',
  uEconomicaPremium in 'uEconomicaPremium.pas',
  uExecutiva in 'uExecutiva.pas',
  uPrimeiraClasse in 'uPrimeiraClasse.pas',
  uTipoPassagem in 'uTipoPassagem.pas',
  uPassagemFactory in 'uPassagemFactory.pas',
  uPassagem in 'uPassagem.pas',
  uProcuraPassagem in 'uProcuraPassagem.pas',
  uDestino in 'uDestino.pas',
  uOrigem in 'uOrigem.pas',
  uTipoOrigem in 'uTipoOrigem.pas',
  uTipoDestino in 'uTipoDestino.pas',
  uProcuraPassagemFactory in 'uProcuraPassagemFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
