unit uCabinePrincipal;

interface

uses
  uCalculaPassagem;
  
type
  TCabinePrincipal = class(TInterfacedObject, ICalculaPassagem)
    function CalcularValor(const AValorPassagem: Double): Double;
  end;

var
  vgValorCabinePrincipal: Double;

implementation

function TCabinePrincipal.CalcularValor(const AValorPassagem: Double): Double;
begin
  Result := 0;

  if AValorPassagem = 0 then
    Exit;

  vgValorCabinePrincipal := 200;
  Result := AValorPassagem + vgValorCabinePrincipal;
end;

end.
