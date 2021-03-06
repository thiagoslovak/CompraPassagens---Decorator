unit uTipoDestino;

interface

type
  TTipoDestinoType = (
    tdFlorida = 0,
    tdVancuver = 1,
    tdCuritiba = 2
  );                     

  TTipoDestino = class
    class function toType(const AValue: string): TTipoDestinoType;
    class function toValue(const AEnum: TTipoDestinoType): string;
    class function toValueDef(const AEnum: TTipoDestinoType; const ADef: string = ''): string;
    class function toText(const AValue: string): string; overload;
    class function toText(const AEnum: TTipoDestinoType): string; overload;
    class function toListText: string;
    class function toListValue: string;
  end;

implementation

uses
  SysUtils,
  StrUtils;

const
  ARRAY_VALUE: Array[TTipoDestinoType] of String = (
    'Florida',
    'Vancuver',
    'Curitiba'
  );

  ARRAY_TEXT: Array[TTipoDestinoType] of String = (
    'Florida',
    'Vancuver',
    'Curitiba'
  );

class function TTipoDestino.toListText: string;
var
 vEnum: TTipoDestinoType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoDestinoType) to High(TTipoDestinoType) do
  begin
    if vEnum <> Low(TTipoDestinoType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoDestino.toText(vEnum));
  end;
end;

class function TTipoDestino.toListValue: string;
var
 vEnum: TTipoDestinoType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoDestinoType) to High(TTipoDestinoType) do
  begin
    if vEnum <> Low(TTipoDestinoType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoDestino.toValue(vEnum));
  end;
end;

class function TTipoDestino.toText(const AEnum: TTipoDestinoType): string;
begin
  Result := ARRAY_TEXT[AEnum];
end;

class function TTipoDestino.toText(const AValue: string): string;
begin
  Result := TTipoDestino.toText(TTipoDestino.toType(AValue));
end;

class function TTipoDestino.toType(const AValue: string): TTipoDestinoType;
begin
  Result := TTipoDestinoType(AnsiIndexText(AValue,ARRAY_VALUE));
end;

class function TTipoDestino.toValue(const AEnum: TTipoDestinoType): string;
begin
  Result := ARRAY_VALUE[AEnum];
end;

class function TTipoDestino.toValueDef(const AEnum: TTipoDestinoType; const ADef: string): string;
begin
  if (AEnum < Low(TTipoDestinoType)) or
     (AEnum > High(TTipoDestinoType)) then
  begin
    Result := ADef;
    Exit;
  end;

  Result := ARRAY_VALUE[AEnum];
end;

end.
