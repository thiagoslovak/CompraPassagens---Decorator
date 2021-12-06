unit uPassagem;

interface

uses
  SysUtils,
  uCalculaPassagem,
  uTipoPassagem,
  uTipoDestino,
  uTipoOrigem,
  uProcuraPassagem;

type
  TPassagem = class

  private
    FCalculaPassagem: ICalculaPassagem;
    FPassagemOrigem: IProcuraPassagem;
    FPassagemDestino: IProcuraPassagem;

  public
    constructor CreateCalculaPassaem(const ATipoPassagem: TTipoPassagem);
    constructor CreateProcuraPassagemOrigem(ATipoOrigem: TTipoOrigemType);
    constructor CreatePorcuraPassagemDestino(const ATipoDestino: TTipoDestinoType);
    function IsValorPassagem(const AValorPassagem: Double): Double;
    function IsProcuraPassagemOrigem(const AOrigem: Integer): String;
    function IsProcuraPassagemDestino(const ADestino: Integer): String;
  end;

implementation

uses
  uPassagemFactory,
  uProcuraPassagemFactory;

constructor TPassagem.CreateCalculaPassaem(const ATipoPassagem: TTipoPassagem);
begin
  Self.FCalculaPassagem := TPassagemFactory.GetInstance(ATipoPassagem);
end;

function TPassagem.IsProcuraPassagemOrigem(const AOrigem: Integer): String;
begin
  Result := Self.FPassagemOrigem.ProcuraPassagem(AOrigem);
end;

function TPassagem.IsProcuraPassagemDestino(const ADestino: Integer): String;
begin
  Result := Self.FPassagemDestino.ProcuraPassagem(ADestino);
end;

function TPassagem.IsValorPassagem(const AValorPassagem: Double): Double;
begin
  Result := Self.FCalculaPassagem.CalcularValor(AValorPassagem);
end;

constructor TPassagem.CreateProcuraPassagemOrigem(ATipoOrigem: TTipoOrigemType);
begin
  Self.FPassagemOrigem := TProcuraPassagemFactory.GetInstanceOrigem(ATipoOrigem);
end;

constructor TPassagem.CreatePorcuraPassagemDestino(const ATipoDestino: TTipoDestinoType);
begin
  Self.FPassagemDestino := TProcuraPassagemFactory.GetInstanceDestino(ATipoDestino)
end;

end.
