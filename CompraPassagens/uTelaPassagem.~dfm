object Form1: TForm1
  Left = 332
  Top = 134
  Width = 978
  Height = 432
  Caption = 'Passagens A'#233'reas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDadosPessoais: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 393
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = edtNome
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
      FocusControl = edtSobrenome
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 22
      Height = 13
      Caption = 'Pa'#237's'
      FocusControl = edtPais
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = edtEmail
    end
    object Label5: TLabel
      Left = 8
      Top = 168
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = edtTelefone
    end
    object Label6: TLabel
      Left = 8
      Top = 208
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = edtEndereco
    end
    object edtNome: TDBEdit
      Left = 8
      Top = 24
      Width = 449
      Height = 21
      DataField = 'Nome'
      DataSource = dsDados
      TabOrder = 0
    end
    object edtSobrenome: TDBEdit
      Left = 8
      Top = 64
      Width = 449
      Height = 21
      DataField = 'Sobrenome'
      DataSource = dsDados
      TabOrder = 1
    end
    object edtPais: TDBEdit
      Left = 8
      Top = 104
      Width = 449
      Height = 21
      DataField = 'Pa'#237's'
      DataSource = dsDados
      TabOrder = 2
    end
    object edtEmail: TDBEdit
      Left = 8
      Top = 144
      Width = 449
      Height = 21
      DataField = 'Email'
      DataSource = dsDados
      TabOrder = 3
    end
    object edtTelefone: TDBEdit
      Left = 8
      Top = 184
      Width = 134
      Height = 21
      DataField = 'Telefone'
      DataSource = dsDados
      TabOrder = 4
    end
    object edtEndereco: TDBEdit
      Left = 8
      Top = 224
      Width = 449
      Height = 21
      DataField = 'Endereco'
      DataSource = dsDados
      TabOrder = 5
    end
    object grdDadosPassageiro: TDBGrid
      Left = 1
      Top = 256
      Width = 479
      Height = 136
      Align = alBottom
      DataSource = dsDados
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sobrenome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pa'#237's'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Visible = True
        end>
    end
  end
  object pnlPassagem: TPanel
    Left = 481
    Top = 0
    Width = 481
    Height = 393
    Align = alRight
    TabOrder = 1
    object Label7: TLabel
      Left = 308
      Top = 304
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
    end
    object Label8: TLabel
      Left = 303
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Origem:'
    end
    object Label9: TLabel
      Left = 300
      Top = 144
      Width = 39
      Height = 13
      Caption = 'Destino:'
    end
    object rdgTipoPassagem: TRadioGroup
      Left = 24
      Top = 272
      Width = 137
      Height = 105
      Caption = 'Tipo da Passagem'
      Items.Strings = (
        'Cabine Principal'
        'Econ'#244'mica Premium'
        'Executiva'
        'Primeira Classe')
      TabOrder = 0
    end
    object btnCalcular: TBitBtn
      Left = 245
      Top = 352
      Width = 163
      Height = 25
      Caption = 'Calcular'
      TabOrder = 1
      OnClick = btnCalcularClick
    end
    object btnProcurar: TBitBtn
      Left = 245
      Top = 192
      Width = 163
      Height = 25
      Caption = 'Procurar '
      TabOrder = 2
      OnClick = btnProcurarClick
    end
    object rdpOrigem: TRadioGroup
      Left = 24
      Top = 8
      Width = 137
      Height = 97
      Caption = 'Origem:'
      Items.Strings = (
        'Maring'#225
        'S'#227'o Paulo '
        'Portugal')
      TabOrder = 3
      OnClick = rdpOrigemClick
    end
    object rdgDestino: TRadioGroup
      Left = 24
      Top = 120
      Width = 137
      Height = 97
      Caption = 'Destino:'
      Items.Strings = (
        'Florida'
        'Vancuver '
        'Curitiba ')
      TabOrder = 4
      OnClick = rdgDestinoClick
    end
    object EditOrigem: TEdit
      Left = 192
      Top = 48
      Width = 249
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object EditDestino: TEdit
      Left = 192
      Top = 162
      Width = 249
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object EditPreco: TEdit
      Left = 264
      Top = 320
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 344
    object cdsDadosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object cdsDadosSobrenome: TStringField
      FieldName = 'Sobrenome'
      Size = 30
    end
    object cdsDadosPas: TStringField
      FieldName = 'Pa'#237's'
      Size = 30
    end
    object cdsDadosEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object cdsDadosTelefone: TIntegerField
      FieldName = 'Telefone'
    end
    object cdsDadosEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object cdsDadosPreco: TFloatField
      FieldName = 'Preco'
    end
    object cdsDadosOrigem: TStringField
      FieldName = 'Origem'
      Size = 50
    end
    object cdsDadosDestino: TStringField
      FieldName = 'Destino'
      Size = 50
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 56
    Top = 344
  end
end
