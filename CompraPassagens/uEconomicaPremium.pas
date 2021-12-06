unit uEconomicaPremium;

interface

uses
  uCalculaPassagem;
  
type
  TEconomicaPremium = class(TInterfacedObject, ICalculaPassagem)
    function CalcularValor(const AValorPassagem: Double): Double;
  end;

var
  vgValorCabinePrincipal: Double;  

implementation

function TEconomicaPremium.CalcularValor(const AValorPassagem: Double): Double;
begin
  Result := 0;
  
  if AValorPassagem = 0 then
    Exit;

  vgValorCabinePrincipal := 250;
  Result := AValorPassagem + vgValorCabinePrincipal;
end;

end.

