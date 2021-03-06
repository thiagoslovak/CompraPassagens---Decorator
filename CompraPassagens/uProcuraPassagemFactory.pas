unit uProcuraPassagemFactory;

interface

uses
  uCalculaPassagem,
  uTipoPassagem,
  uTipoDestino,
  uTipoOrigem,
  uProcuraPassagem;

type
  TProcuraPassagemFactory = class
    class function GetInstanceOrigem(const ATipoOrigem: TTipoOrigemType): IProcuraPassagem;
    class function GetInstanceDestino(const ATipoDestino: TTipoDestinoType): IProcuraPassagem;
  end;

implementation

uses
  uOrigem,
  uDestino;

class function TProcuraPassagemFactory.GetInstanceOrigem(const ATipoOrigem: TTipoOrigemType): IProcuraPassagem;
begin
  case ATipoOrigem of
    toMaringa: Result := TOrigem.Create;
    toSaoPaulo: Result := TOrigem.Create;
    toPortugal: Result := TOrigem.Create;
  end;
end;

class function TProcuraPassagemFactory.GetInstanceDestino(const ATipoDestino: TTipoDestinoType): IProcuraPassagem;
begin
  case ATipoDestino of
    tdFlorida: Result := TDestino.Create;
    tdVancuver: Result := TDestino.Create;
    tdCuritiba: Result := TDestino.Create;
  end;
end;

end.

