unit uPassagemFactory;

interface

uses
  uCalculaPassagem,
  uTipoPassagem;
  
type
  TPassagemFactory = class
    class function GetInstance(const ATipoPassagem: TTipoPassagem): ICalculaPassagem;
  end;
  
implementation

uses
  uCabinePrincipal,
  uEconomicaPremium,
  uExecutiva,
  uPrimeiraClasse;

class function TPassagemFactory.GetInstance(const ATipoPassagem: TTipoPassagem): ICalculaPassagem;
begin
  case ATipoPassagem of
    tpCabinePrincipal: Result := TCabinePrincipal.Create;
    tpEconomicaPremium: Result := TEconomicaPremium.Create;
    tpExecutiva: Result := TExecutiva.Create;
    tpPrimeiraClasse: Result := TPrimeiraClasse.Create;
  end;
end;

end.
 
