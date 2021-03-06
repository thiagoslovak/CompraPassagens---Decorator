unit uTelaPassagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBClient, ExtCtrls, Grids, DBGrids,
  Buttons;

type
  TForm1 = class(TForm)
    pnlDadosPessoais: TPanel;
    pnlPassagem: TPanel;
    rdgTipoPassagem: TRadioGroup;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosNome: TStringField;
    cdsDadosSobrenome: TStringField;
    cdsDadosPas: TStringField;
    cdsDadosEmail: TStringField;
    cdsDadosTelefone: TIntegerField;
    cdsDadosEndereco: TStringField;
    Label1: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtSobrenome: TDBEdit;
    Label3: TLabel;
    edtPais: TDBEdit;
    Label4: TLabel;
    edtEmail: TDBEdit;
    Label5: TLabel;
    edtTelefone: TDBEdit;
    Label6: TLabel;
    edtEndereco: TDBEdit;
    grdDadosPassageiro: TDBGrid;
    cdsDadosPreco: TFloatField;
    Label7: TLabel;
    cdsDadosOrigem: TStringField;
    cdsDadosDestino: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    btnCalcular: TBitBtn;
    btnProcurar: TBitBtn;
    rdpOrigem: TRadioGroup;
    rdgDestino: TRadioGroup;
    EditOrigem: TEdit;
    EditDestino: TEdit;
    EditPreco: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdgDestinoClick(Sender: TObject);
    procedure rdpOrigemClick(Sender: TObject);
  end;

var
  Form1: TForm1;
  vgValorOrigem: Integer;
  vgValorDestino: Integer;
  vgValorTotal: Integer;

implementation

uses
  uTipoPassagem,
  uPassagem,
  uTipoDestino,
  uTipoOrigem;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  cdsDados.ApplyUpdates(0)
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  vCalculaPassagem: TPassagem;
begin
  vCalculaPassagem := TPassagem.CreateCalculaPassaem(
    TTipoPassagem(rdgTipoPassagem.ItemIndex)
  );
  
  try
    EditPreco.Text := IntToStr(vgValorTotal);
    EditPreco.Text := FloatToStr(vCalculaPassagem.IsValorPassagem(StrToFloat(EditPreco.Text)));
  finally
    vCalculaPassagem.Free;
  end;
end;

procedure TForm1.btnProcurarClick(Sender: TObject);
begin
  vgValorTotal := vgValorOrigem + vgValorDestino;
  EditPreco.Text := IntToStr(vgValorTotal);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cdsdados.CreateDataSet;
end;

procedure TForm1.rdgDestinoClick(Sender: TObject);
var
  vProcuraPassagemDestino: TPassagem;
begin
  vProcuraPassagemDestino := TPassagem.CreatePorcuraPassagemDestino(
    TTipoDestinoType(rdgDestino.ItemIndex)
  );

  try
    EditDestino.Text := vProcuraPassagemDestino.IsProcuraPassagemDestino(rdgDestino.ItemIndex);
    if  EditDestino.Text = 'Florida' then
      vgValorDestino := 2500;

    if  EditDestino.Text = 'Vancuver' then
      vgValorDestino := 3000;

    if  EditDestino.Text = 'Curitiba' then
      vgValorDestino := 200;
  finally
    vProcuraPassagemDestino.Free;
  end;
end;

procedure TForm1.rdpOrigemClick(Sender: TObject);
var
  vProcuraPassagemOrigem: TPassagem;
begin
  vProcuraPassagemOrigem := TPassagem.CreateProcuraPassagemOrigem(
    TTipoOrigemType(rdpOrigem.ItemIndex)
  );

  try
    EditOrigem.Text := vProcuraPassagemOrigem.IsProcuraPassagemOrigem(rdpOrigem.ItemIndex);
    if  EditOrigem.Text = 'Maring?' then
      vgValorOrigem := 100;

    if  EditOrigem.Text = 'S?o Paulo' then
      vgValorOrigem := 250;

    if  EditOrigem.Text = 'Portugal' then
      vgValorOrigem := 2000;
  finally
    vProcuraPassagemOrigem.Free;
  end;
end;

end.


