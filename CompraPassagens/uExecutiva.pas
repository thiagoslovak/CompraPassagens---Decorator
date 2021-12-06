unit uExecutiva;

interface

uses
  uCalculaPassagem;
  
type
  TExecutiva = class(TInterfacedObject, ICalculaPassagem)
    function CalcularValor(const AValorPassagem: Double): Double;
  end;

var
  vgValorCabinePrincipal: Double;

implementation

function TExecutiva.CalcularValor(const AValorPassagem: Double): Double;
begin
  Result := 0;

  if AValorPassagem = 0 then
    Exit;

  vgValorCabinePrincipal := 500;
  Result := AValorPassagem + vgValorCabinePrincipal;
end;

end.

