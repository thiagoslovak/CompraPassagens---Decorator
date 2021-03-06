unit uOrigem;

interface

uses
  uProcuraPassagem,
  uTipoOrigem;
  
type
  TOrigem = class(TInterfacedObject, IProcuraPassagem)
    function ProcuraPassagem(const ALocalizacao: Integer): String;
  end;

implementation

function TOrigem.ProcuraPassagem(const ALocalizacao: Integer): String;
begin
  if ALocalizacao = 0 then
    Result := 'Maring?';

  if ALocalizacao = 1 then
    Result := 'S?o Paulo';

  if ALocalizacao = 2 then
    Result := 'Portugal';
end;

end.

