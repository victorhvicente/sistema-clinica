unit unitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, jpeg;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Paciente1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Paciente1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

uses unitCadastroPacientes, unitCadastroAgendamentos;

{$R *.dfm}

procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate; //Encerra o sistema ao clicar na opção sair.
end;

procedure TformPrincipal.Paciente1Click(Sender: TObject);
begin
  formCadastroPacientes.ShowModal; //exibe a janela do Cadastro de pacientes do sistema.
end;

procedure TformPrincipal.Agendamentos1Click(Sender: TObject);
begin
  formCadastroAgendamentos.ShowModal; //exibe a janela do Cadastro de Agendamentos do sistema.
end;

procedure TformPrincipal.BitBtn1Click(Sender: TObject);
begin
  formCadastroPacientes.ShowModal; //exibe a janela do Cadastro de pacientes do sistema.
end;

procedure TformPrincipal.BitBtn2Click(Sender: TObject);
begin
  formCadastroAgendamentos.ShowModal; //exibe a janela do Cadastro de agendamentos do sistema.
end;

end.

