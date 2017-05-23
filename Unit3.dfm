object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Bulls and Cows'
  ClientHeight = 379
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object t_mot: TLabel
    Left = 183
    Top = 49
    Width = 54
    Height = 13
    Caption = 'Votre Mot :'
  end
  object t_caracteres: TLabel
    Left = 431
    Top = 49
    Width = 61
    Height = 13
    Caption = 'caractereres'
  end
  object t_bulls: TLabel
    Left = 183
    Top = 132
    Width = 21
    Height = 13
    Caption = 'Bulls'
  end
  object t_cows: TLabel
    Left = 183
    Top = 215
    Width = 26
    Height = 13
    Caption = 'Cows'
  end
  object t_essais: TLabel
    Left = 431
    Top = 132
    Width = 29
    Height = 13
    Caption = 'essais'
  end
  object t_etat: TLabel
    Left = 431
    Top = 215
    Width = 62
    Height = 13
    Caption = 'gagne/perdu'
  end
  object e_mot: TEdit
    Left = 264
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_bulls: TEdit
    Left = 264
    Top = 129
    Width = 32
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object e_cows: TEdit
    Left = 264
    Top = 212
    Width = 32
    Height = 21
    TabOrder = 2
  end
  object b_go: TButton
    Left = 87
    Top = 298
    Width = 75
    Height = 25
    Caption = 'GO'
    TabOrder = 3
    OnClick = b_goClick
  end
  object b_raz: TButton
    Left = 287
    Top = 298
    Width = 75
    Height = 25
    Caption = 'RAZ'
    TabOrder = 4
    OnClick = b_razClick
  end
  object b_quit: TButton
    Left = 487
    Top = 298
    Width = 75
    Height = 25
    Caption = 'Quitter'
    TabOrder = 5
    OnClick = b_quitClick
  end
  object m_mots: TMemo
    Left = 592
    Top = -2
    Width = 57
    Height = 64
    Lines.Strings = (
      'm_mots')
    ReadOnly = True
    TabOrder = 6
    Visible = False
  end
end
