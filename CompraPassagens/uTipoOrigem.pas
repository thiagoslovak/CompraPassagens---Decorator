unit uTipoOrigem;

interface

type
  TTipoOrigemType = (
    toMaringa = 0,
    toSaoPaulo = 1,
    toPortugal = 2
  );

  TTipoOrigem = class
    class function toType(const AValue: string): TTipoOrigemType;
    class function toValue(const AEnum: TTipoOrigemType): string;
    class function toValueDef(const AEnum: TTipoOrigemType; const ADef: string = ''): string;
    class function toText(const AValue: string): string; overload;
    class function toText(const AEnum: TTipoOrigemType): string; overload;
    class function toListText: string;
    class function toListValue: string;
  end;

implementation

uses
  SysUtils,
  StrUtils;

const
  ARRAY_VALUE: Array[TTipoOrigemType] of String = (
    'Maringa',
    'S?o Paulo',
    'Portugal'
  );

  ARRAY_TEXT: Array[TTipoOrigemType] of String = (
    'Maringa',
    'S?o Paulo',
    'Portugal'
  );

class function TTipoOrigem.toListText: string;
var
 vEnum: TTipoOrigemType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoOrigemType) to High(TTipoOrigemType) do
  begin
    if vEnum <> Low(TTipoOrigemType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoOrigem.toText(vEnum));
  end;
end;

class function TTipoOrigem.toListValue: string;
var
 vEnum: TTipoOrigemType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoOrigemType) to High(TTipoOrigemType) do
  begin
    if vEnum <> Low(TTipoOrigemType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoOrigem.toValue(vEnum));
  end;
end;

class function TTipoOrigem.toText(const AEnum: TTipoOrigemType): string;
begin
  Result := ARRAY_TEXT[AEnum];
end;

class function TTipoOrigem.toText(const AValue: string): string;
begin
  Result := TTipoOrigem.toText(TTipoOrigem.toType(AValue));
end;

class function TTipoOrigem.toType(const AValue: string): TTipoOrigemType;
begin
  Result := TTipoOrigemType(AnsiIndexText(AValue,ARRAY_VALUE));
end;

class function TTipoOrigem.toValue(const AEnum: TTipoOrigemType): string;
begin
  Result := ARRAY_VALUE[AEnum];
end;

class function TTipoOrigem.toValueDef(const AEnum: TTipoOrigemType; const ADef: string): string;
begin
  if (AEnum < Low(TTipoOrigemType)) or
     (AEnum > High(TTipoOrigemType)) then
  begin
    Result := ADef;
    Exit;
  end;

  Result := ARRAY_VALUE[AEnum];
end;

end.
