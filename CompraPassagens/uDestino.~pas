unit uDestino;

interface

uses
  uProcuraPassagem;
  
type
  TDestino = class(TInterfacedObject, IProcuraPassagem)
    function ProcuraPassagem(const ALocalizacao: Integer): String;
  end;
implementation

function TDestino.ProcuraPassagem(const ALocalizacao: Integer): String;
begin
  if  ALocalizacao = 0 then
    Result := 'Florida';

  if  ALocalizacao = 1 then
    Result := 'Vancuver';

  if  ALocalizacao = 2 then
    Result := 'Curitiba';
end;

end.
