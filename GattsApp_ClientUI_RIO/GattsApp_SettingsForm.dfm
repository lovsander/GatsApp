object SettingsForm: TSettingsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 427
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 470
    Height = 105
    Align = alTop
    Caption = #1055#1086#1080#1089#1082' '#1089#1077#1088#1074#1077#1088#1072
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 64
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 19
      Top = 43
      Width = 44
      Height = 19
      Caption = #1040#1076#1088#1077#1089
    end
    object Label2: TLabel
      Left = 226
      Top = 43
      Width = 37
      Height = 19
      Caption = #1055#1086#1088#1090
    end
    object meAddrSrv: TMaskEdit
      Left = 77
      Top = 40
      Width = 112
      Height = 27
      EditMask = '!099.099.099.099;1; '
      MaxLength = 15
      TabOrder = 0
      Text = '   .   .   .   '
    end
    object mePortSrv: TMaskEdit
      Left = 277
      Top = 40
      Width = 52
      Height = 27
      EditMask = '!0999;1; '
      MaxLength = 4
      TabOrder = 1
      Text = '8080'
    end
    object bApplyAddrSrv: TButton
      Left = 346
      Top = 38
      Width = 103
      Height = 31
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = bApplyAddrSrvClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 470
    Height = 105
    Align = alTop
    Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1080' '#1094#1074#1077#1090#1072
    TabOrder = 1
    ExplicitTop = 111
    ExplicitWidth = 376
    object cbStyles: TComboBox
      AlignWithMargins = True
      Left = 19
      Top = 32
      Width = 310
      Height = 27
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      Sorted = True
      TabOrder = 0
      Text = #1057#1090#1080#1083#1080
    end
    object bApplyStyle: TButton
      Left = 346
      Top = 25
      Width = 103
      Height = 31
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = bApplyStyleClick
    end
  end
  object bClose: TButton
    Left = 0
    Top = 356
    Width = 470
    Height = 71
    Align = alBottom
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
    ModalResult = 8
    TabOrder = 2
    ExplicitTop = 568
    ExplicitWidth = 376
  end
end
