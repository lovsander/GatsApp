object GattsAppMainForm: TGattsAppMainForm
  Left = 0
  Top = 0
  Caption = 'GattsAppMainForm'
  ClientHeight = 442
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object userPanel: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 35
    Align = alTop
    Caption = #1070#1076#1080#1085#1072' '#1042#1072#1083#1077#1085#1090#1080#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bConn: TButton
      Left = 39
      Top = 1
      Width = 72
      Height = 33
      Align = alLeft
      Caption = 'Connect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bConnClick
      ExplicitLeft = 1
    end
    object bSettings: TBitBtn
      Left = 1
      Top = 1
      Width = 38
      Height = 33
      Align = alLeft
      Cancel = True
      DoubleBuffered = False
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000918468FF918468FF918468FF918468FF8074
        5BFF746A54FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF918468FF81755DFF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF81755DFF746A54FF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF82775DFF746A54FF746A54FF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000918468FF918468FF84785FFF746A54FF746A54FF746A54FF746A
        54FF746A54FF746A54FF746A54FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF00000000000000009184
        68FF918468FF918468FF867A60FF746A54FF746A54FF746A54FF746A54FF746A
        54FF746A54FF746A54FF746A54FF746A54FF746A54FF0000000000000000746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FF918468FF918468FF9184
        68FF918468FF887C62FF948A75FFA29882FFAEA490FFB0A692FFB0A692FFAEA4
        90FFA29882FF8D836FFF756B55FF746A54FF746A54FF746A54FF746A54FF746A
        54FF746A54FF746A54FF746A54FF000000000000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FF918468FF918468FF9184
        68FFA29882FFD2CCC1FFCFC9BEFFB0A692FFB0A692FFB0A692FFB0A692FFB0A6
        92FFB0A692FFB0A692FFA89E8AFF837964FF746A54FF746A54FF746A54FF746A
        54FF746A54FF746A54FF746A54FF000000000000000000000000000000000000
        0000918468FF918468FF918468FF918468FF918468FF918468FF918468FFAEA4
        90FFDAD6CDFFDEDAD2FFDEDAD2FFB7AE9CFFACA28EFFA79D88FFA79D88FFACA2
        8EFFB0A692FFB0A692FFB0A692FFAEA490FF8B816CFF746A54FF746A54FF746A
        54FF746A54FF746A54FF746A54FF746A54FF0000000000000000000000009184
        68FF918468FF918468FF918468FF918468FF918468FF918468FFA59B87FFDDD8
        D0FFDEDAD2FFDEDAD2FFCCC6B9FF918774FF746A54FF746A54FF746A54FF746A
        54FF857B66FFA49A84FFB0A692FFB0A692FFAEA490FF837964FF746A54FF746A
        54FF746A54FF746A54FF746A54FF746A54FF746A54FF00000000000000000000
        0000918468FF918468FF918468FF918468FF918468FF918468FFD4CFC5FFDEDA
        D2FFDEDAD2FFBFB8A9FF746A54FF746A54FF746A54FF746A54FF746A54FF746A
        54FF746A54FF746A54FF9C927DFFB0A692FFB0A692FFA89E8AFF746A54FF746A
        54FF746A54FF746A54FF746A54FF746A54FF0000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FFB0A692FFDEDAD2FFDEDA
        D2FFCCC6B9FF746A54FF746A54FF8C8765FFCDD893FFE5F7A5FFE5F7A5FFCDD8
        93FF8C8765FF746A54FF746A54FFA59B87FFB0A692FFB0A692FF8B816CFF746A
        54FF746A54FF746A54FF746A54FF000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FFCAC4B6FFDEDAD2FFDEDA
        D2FF999180FF746A54FF8A8563FFE5F7A5FFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFE5F7A5FF8A8563FF746A54FF867D68FFB0A692FFB0A692FFA09681FF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FFD7D2C9FFDEDAD2FFDAD6
        CDFF746A54FF746A54FFCBD592FFECFFAAFFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFECFFAAFFCBD592FF746A54FF746A54FFAEA490FFB0A692FFAAA08BFF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FFDEDAD2FFDEDAD2FFCFCB
        C0FF746A54FF746A54FFE1F0A1FFECFFAAFFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFECFFAAFFDFEFA0FF746A54FF746A54FFA79D88FFB0A692FFB0A692FF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FFDEDAD2FFDEDAD2FFCFCB
        C0FF746A54FF746A54FFE1F0A1FFECFFAAFFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFECFFAAFFDFEFA0FF746A54FF746A54FFCBD592FFD6E29AFFD6E29AFF746A
        54FF746A54FF746A54FF00000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FFD7D2C9FFDEDAD2FFDAD6
        CDFF746A54FF746A54FFCBD592FFECFFAAFFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFECFFAAFFCBD592FF746A54FF746A54FFE9FBA7FFECFFAAFFE2F3A3FF746A
        54FF746A54FF7E725AFF00000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FFCAC4B6FFDEDAD2FFDEDA
        D2FF999180FF746A54FF8A8563FFE5F7A5FFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFE5F7A5FF8A8563FF746A54FF9FA073FFECFFAAFFECFFAAFFCFDA95FF746A
        54FF84785FFF918468FF00000000000000000000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FFB0A692FFDEDAD2FFDEDA
        D2FFCCC6B9FF746A54FF746A54FF8C8765FFCFDA95FFE5F7A5FFE5F7A5FFCDD8
        93FF8C8765FF746A54FF746A54FFD7E59BFFECFFAAFFECFFAAFFA7A978FF867A
        60FF918468FF918468FF918468FF000000000000000000000000000000000000
        0000918468FF918468FF918468FF918468FF918468FF918468FFD4CFC5FFDEDA
        D2FFDEDAD2FFBFB8A9FF746A54FF746A54FF746A54FF746A54FF746A54FF746A
        54FF746A54FF746A54FFC5CF8EFFECFFAAFFECFFAAFFDDEC9FFF867A60FF9184
        68FF918468FF918468FF918468FF918468FF0000000000000000000000009184
        68FF918468FF918468FF918468FF918468FF918468FF918468FFA59B87FFDDD8
        D0FFDEDAD2FFDEDAD2FFCCC6B9FF9B9A70FF746A54FF746A54FF746A54FF746A
        54FF9B9A70FFD6E29AFFECFFAAFFECFFAAFFE9FBA7FFA2A375FF918468FF9184
        68FF918468FF918468FF918468FF918468FF918468FF00000000000000000000
        0000918468FF918468FF918468FF918468FF918468FF918468FF918468FFAEA4
        90FFDDD8D0FFDEDAD2FFE4EBC0FFECFFAAFFE5F7A5FFDAE99DFFDAE99DFFE5F7
        A5FFECFFAAFFECFFAAFFECFFAAFFE9FBA7FFB2B780FF918468FF918468FF9184
        68FF918468FF918468FF918468FF918468FF0000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FF918468FF918468FF9184
        68FFA59B87FFD4CFC5FFEBFDACFFECFFAAFFECFFAAFFECFFAAFFECFFAAFFECFF
        AAFFECFFAAFFECFFAAFFE1F0A1FFA7A978FF918468FF918468FF918468FF9184
        68FF918468FF918468FF918468FF000000000000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FF918468FF918468FF9184
        68FF918468FF928569FFBABB86FFD6E29AFFE7F9A6FFECFFAAFFECFFAAFFE7F9
        A6FFD6E29AFFB5BA82FF928569FF918468FF918468FF918468FF918468FF9184
        68FF918468FF918468FF918468FF000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF00000000000000009184
        68FF918468FF918468FF918468FF918468FF918468FF928569FF928569FF9184
        68FF918468FF918468FF918468FF918468FF918468FF00000000000000009184
        68FF918468FF918468FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000918468FF918468FF918468FF918468FF918468FF918468FF9184
        68FF918468FF918468FF918468FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF918468FF918468FF9184
        68FF918468FF918468FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF918468FF918468FF9184
        68FF918468FF918468FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000918468FF918468FF918468FF918468FF918468FF9184
        68FF918468FF918468FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000918468FF918468FF918468FF918468FF9184
        68FF918468FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ModalResult = 5
      TabOrder = 1
      OnClick = bSettingsClick
      ExplicitLeft = -15
      ExplicitTop = -4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 313
    Height = 374
    Align = alLeft
    Caption = #1087#1072#1085#1077#1083#1100' '#1074#1099#1079#1086#1074#1086#1074
    TabOrder = 1
    object Panel8: TPanel
      Left = 1
      Top = 42
      Width = 311
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      Caption = #1057#1086#1073#1088#1072#1085#1080#1077' '#1074' '#1079#1072#1083#1077' '#1089#1091#1076#1077#1073#1085#1099#1093' '#1079#1072#1089#1077#1076#1072#1085#1080#1081' '#8470'1'
      TabOrder = 0
      object BitBtn4: TBitBtn
        Left = 272
        Top = 1
        Width = 38
        Height = 39
        Align = alRight
        Cancel = True
        DoubleBuffered = False
        Glyph.Data = {
          360F0000424D360F0000000000003600000028000000200000001E0000000100
          200000000000000F000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B2FAFFF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF3F33AEFFFFFFFFFFFFFFFFFFFFFFFFFF443AB1FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFF8A84CBFF2C1CACFFFFFFFFFFFFFFFFFFFFFFFFFF3B2FAFFFEEED
          F7FFA19CD3FF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF3B2F
          AFFFFFFFFFFF4A40B3FF4A40B3FF3B2FAFFFFFFFFFFF4A40B3FF4A40B3FF3225
          ACFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF3B2FAFFFFFFFFFFFEEEDF7FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF372AAEFFE6E5F3FF4A40B3FFEEED
          F7FFFFFFFFFFFFFFFFFF443AB1FF4A40B3FF4A40B3FF4A40B3FF443AB1FFFFFF
          FFFFFFFFFFFF8A84CBFF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF665EBDFFFFFFFFFF443AB1FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFB9B6DEFF4A40B3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FF4A40B3FFFFFFFFFFFFFF
          FFFFFFFFFFFFD5D2EAFF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FFB9B6DEFFFFFFFFFF443AB1FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFE6E5F3FF4A40B3FFEEED
          F7FFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF3F33AEFFFFFF
          FFFFFFFFFFFF847EC9FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEEEDF7FF4A40B3FFE6E5F3FFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFF4A40B3FF3F33
          AEFFFFFFFFFF4A40B3FF4A40B3FF443AB1FFFFFFFFFF443AB1FF4A40B3FF372A
          AEFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB9B6DEFF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFF9893D1FF3F33AEFFFFFFFFFFFFFFFFFFFFFFFFFF443AB1FFFFFF
          FFFF847EC9FF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF5148B7FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3B2FAFFF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FFA19CD3FFD5D2EAFF847EC9FF4A40B3FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF3F33
          AEFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF3B2F
          AFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFC6C4E5FF4A40B3FF6D66BEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF9893
          D1FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF3225ACFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF3F33AEFFFFFFFFFFFFFFFFFF4A40B3FFD5D2
          EAFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF3225ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FFB9B6DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEEDF7FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF3225
          ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF9999E4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF9999E4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF9999E4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D66BEFF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF443A
          B1FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5148B7FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F33
          AEFF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5148B7FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ModalResult = 5
        TabOrder = 0
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 311
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      Caption = #1057#1086#1073#1088#1072#1085#1080#1077' '#1074' '#1079#1072#1083#1077' '#1089#1091#1076#1077#1073#1085#1099#1093' '#1079#1072#1089#1077#1076#1072#1085#1080#1081' '#8470'1'
      TabOrder = 1
      object BitBtn5: TBitBtn
        Left = 272
        Top = 1
        Width = 38
        Height = 39
        Align = alRight
        Cancel = True
        DoubleBuffered = False
        Glyph.Data = {
          360F0000424D360F0000000000003600000028000000200000001E0000000100
          200000000000000F000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B2FAFFF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF3F33AEFFFFFFFFFFFFFFFFFFFFFFFFFF443AB1FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFF8A84CBFF2C1CACFFFFFFFFFFFFFFFFFFFFFFFFFF3B2FAFFFEEED
          F7FFA19CD3FF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF3B2F
          AFFFFFFFFFFF4A40B3FF4A40B3FF3B2FAFFFFFFFFFFF4A40B3FF4A40B3FF3225
          ACFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF3B2FAFFFFFFFFFFFEEEDF7FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF372AAEFFE6E5F3FF4A40B3FFEEED
          F7FFFFFFFFFFFFFFFFFF443AB1FF4A40B3FF4A40B3FF4A40B3FF443AB1FFFFFF
          FFFFFFFFFFFF8A84CBFF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF665EBDFFFFFFFFFF443AB1FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFB9B6DEFF4A40B3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FF4A40B3FFFFFFFFFFFFFF
          FFFFFFFFFFFFD5D2EAFF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FFB9B6DEFFFFFFFFFF443AB1FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFE6E5F3FF4A40B3FFEEED
          F7FFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF3F33AEFFFFFF
          FFFFFFFFFFFF847EC9FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEEEDF7FF4A40B3FFE6E5F3FFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFF4A40B3FF3F33
          AEFFFFFFFFFF4A40B3FF4A40B3FF443AB1FFFFFFFFFF443AB1FF4A40B3FF372A
          AEFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB9B6DEFF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFF9893D1FF3F33AEFFFFFFFFFFFFFFFFFFFFFFFFFF443AB1FFFFFF
          FFFF847EC9FF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF5148B7FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3B2FAFFF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FFA19CD3FFD5D2EAFF847EC9FF4A40B3FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF3F33
          AEFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF3B2F
          AFFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFC6C4E5FF4A40B3FF6D66BEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF9893
          D1FFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF3225ACFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF3F33AEFFFFFFFFFFFFFFFFFF4A40B3FFD5D2
          EAFFFFFFFFFFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FFFFFFFFFFFFFFFFFF4A40B3FF443AB1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FF3225ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4A40B3FFB9B6DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEEDF7FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF3225
          ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF9999E4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF9999E4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF9999E4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
          F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D66BEFF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF443A
          B1FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5148B7FF4A40
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F33
          AEFF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5148B7FF4A40
          B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40B3FF4A40
          B3FF4A40B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ModalResult = 5
        TabOrder = 0
      end
    end
    object Button1: TButton
      Left = 1
      Top = 343
      Width = 311
      Height = 30
      Align = alBottom
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 2
    end
    object Button2: TButton
      Left = 1
      Top = 313
      Width = 311
      Height = 30
      Align = alBottom
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
      TabOrder = 3
    end
    object Button3: TButton
      Left = 1
      Top = 283
      Width = 311
      Height = 30
      Align = alBottom
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 409
    Width = 852
    Height = 33
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 313
    Top = 35
    Width = 539
    Height = 374
    Align = alClient
    Caption = 'Panel4'
    Color = clCream
    ParentBackground = False
    TabOrder = 3
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 537
      Height = 331
      Align = alClient
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Panel10: TPanel
      Left = 1
      Top = 332
      Width = 537
      Height = 41
      Align = alBottom
      Caption = 'Panel10'
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 1
      object Edit1: TEdit
        Left = 1
        Top = 1
        Width = 463
        Height = 39
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
        ExplicitHeight = 41
      end
      object bSend: TButton
        Left = 464
        Top = 1
        Width = 72
        Height = 39
        Align = alRight
        Caption = 'Send'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bSendClick
      end
    end
  end
end
