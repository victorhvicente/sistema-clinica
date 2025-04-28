unit unitCadastroPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, Buttons, DB;

type
  TformCadastroPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbID: TDBEdit;
    dbNome: TDBEdit;
    dbCPF: TDBEdit;
    dbCelular: TDBEdit;
    dbData: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    txtBusca: TEdit;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnPesquisar: TBitBtn;
    btnLimparCampos: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;

    procedure AD(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dbNomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure txtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure txtBuscaChange(Sender: TObject);

    procedure limparTela;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLimparCamposClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure txtBuscaEnter(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  formCadastroPacientes: TformCadastroPacientes;

implementation

uses unitDM;

{$R *.dfm}

procedure TformCadastroPacientes.AD(Sender: TObject);
begin
  DM.tbPaciente.Filtered := false;
  DM.tbPaciente.Filter := 'nome LIKE ' + QuotedStr('*' + txtBusca.Text + '*');
  DM.tbPaciente.Filtered := true;
end;

procedure TformCadastroPacientes.btnNovoClick(Sender: TObject);
begin
  DM.tbPaciente.Insert;
  if (DM.tbPaciente.State in [dsInsert]) then
  begin
    limparTela;
    dbCPF.SetFocus;
  end;
end;

procedure TformCadastroPacientes.btnAlterarClick(Sender: TObject);
begin
  DM.tbPaciente.Edit;
  dbCPF.SetFocus;
end;

procedure TformCadastroPacientes.dbNomeKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TformCadastroPacientes.btnExcluirClick(Sender: TObject);
begin
  DM.tbPaciente.Delete;
end;

procedure TformCadastroPacientes.txtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TformCadastroPacientes.txtBuscaChange(Sender: TObject);
begin

  DM.tbPaciente.Filtered := false;
  DM.tbPaciente.Filter := 'nome LIKE ' + QuotedStr('*' + txtBusca.Text + '*');
  DM.tbPaciente.Filtered := true;
end;

procedure TformCadastroPacientes.limparTela;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
      TDBEdit(Components[i]).Clear;
  end;
end;

procedure TformCadastroPacientes.btnPesquisarClick(Sender: TObject);
begin
   txtBusca.setfocus;
end;

procedure TformCadastroPacientes.FormShow(Sender: TObject);
begin
  limparTela;
   if not(DM.conexao.Connected) then
    DM.conexao.Connected := True;

  if not (DM.tbPaciente.Active) then
    DM.tbPaciente.Open;
end;

procedure TformCadastroPacientes.btnLimparCamposClick(Sender: TObject);
begin
   limparTela;
end;

procedure TformCadastroPacientes.btnCancelarClick(Sender: TObject);
begin
   DM.tbPaciente.Cancel;
end;

procedure TformCadastroPacientes.btnSalvarClick(Sender: TObject);
begin
    if(DM.tbPaciente.State in [dsInsert, dsEdit]) then
       DM.tbPaciente.Post;
end;

procedure TformCadastroPacientes.txtBuscaEnter(Sender: TObject);
begin
 txtBusca.Text := '';
end;

end.

