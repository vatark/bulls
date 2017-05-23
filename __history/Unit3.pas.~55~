unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    e_mot: TEdit;
    t_mot: TLabel;
    t_caracteres: TLabel;
    t_bulls: TLabel;
    t_cows: TLabel;
    e_cows: TEdit;
    e_bulls: TEdit;
    b_go: TButton;
    b_raz: TButton;
    b_quit: TButton;
    t_essais: TLabel;
    t_etat: TLabel;
    m_mots: TMemo;
    procedure b_quitClick(Sender: TObject);
    procedure b_razClick(Sender: TObject);
    procedure b_goClick(Sender: TObject);
    procedure verifyBuffsAndCows();
    procedure initGame();
    procedure FormActivate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;
  mot: string;
  essais: integer;

implementation

{$R *.dfm}

procedure TForm3.b_goClick(Sender: TObject);
var
  i: Integer;
  minuscule: bool;
  erreur: string;
begin
  minuscule:=true;
  erreur:='';

  for i := 1 to length(e_mot.Text) do
  begin
    if ((e_mot.text[i] < 'a') or (e_mot.Text[i] > 'z')) then
      minuscule:=false;
  end;

  if length(e_mot.Text) > length(mot) then
    erreur := erreur + 'Votre mot est trop long !' + #13#10;

  if length(e_mot.Text) < length(mot) then
    erreur := erreur + 'Votre mot est trop court !' + #13#10;

  if not minuscule then
    erreur := erreur + 'Votre mot comporte des majuscules ou des caractères spéciaux !' + #13#10;

  if erreur = '' then
  begin
    verifyBuffsAndCows();
  end
  else
    ShowMessage(erreur);

  e_mot.SetFocus();
end;

procedure TForm3.initGame;
begin
  t_etat.Caption:='';
  e_bulls.Text:='';
  e_cows.Text:='';
  e_mot.Text:='';
  m_mots.lines.LoadFromFile('mots.txt');
  mot:=m_mots.Lines[random(m_mots.Lines.Count)];
  t_caracteres.Caption:=inttostr(length(mot)) + ' caractères';
  case length(mot) of
    3: essais:=4;
    4: essais:=7;
    5: essais:=10;
    6: essais:=16;
    7: essais:=20;
  end;
  t_essais.Caption:=inttostr(essais) + ' essais';
  e_mot.SetFocus();
end;

procedure TForm3.verifyBuffsAndCows;
var
  i, j, bulls, cows: Integer;
begin
  bulls:=0;
  cows:=0;

  for i := 1 to length(e_mot.Text) do
  begin
    if mot[i] = e_mot.Text[i] then
      cows:=cows+1;

    for j := 1 to length(e_mot.Text) do
    begin
      if (mot[j] = e_mot.Text[i]) and (mot[i] <> e_mot.Text[i]) then
        bulls:=bulls+1;
    end;
  end;
    if cows = length(e_mot.Text) then
      t_etat.Caption:='Gagné !'
    else
      begin
        essais:=essais-1;
        t_essais.Caption:= inttostr(essais) + ' essais';
        if essais <= 0 then
          t_etat.Caption:='Perdu...';
      end;


  e_cows.Text:=inttostr(cows);
  e_bulls.Text:=inttostr(bulls);

end;

procedure TForm3.b_quitClick(Sender: TObject);
begin
  close;
end;

procedure TForm3.b_razClick(Sender: TObject);
begin
  initGame();
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  initGame();
end;

end.
