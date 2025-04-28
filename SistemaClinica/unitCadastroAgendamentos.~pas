unit unitCadastroAgendamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, Grids, DBGrids, DB;

type
  TformCadastroAgendamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbID: TDBEdit;
    Label5: TLabel;
    comboBoxNome: TDBLookupComboBox;
    Label3: TLabel;
    data_agendamento: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnLimparCampos: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure limparTela;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLimparCamposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroAgendamentos: TformCadastroAgendamentos;

implementation

uses unitDM;

{$R *.dfm}

procedure TformCadastroAgendamentos.btnNovoClick(Sender: TObject);
begin
   limparTela;
  // Garante que o dataset esteja aberto
  if not (DM.tbAgendamento.Active) then
    DM.tbAgendamento.Open;

  // Insere um novo registro
  DM.tbAgendamento.Insert;

end;

procedure TformCadastroAgendamentos.btnSalvarClick(Sender: TObject);
begin
   if (DM.tbAgendamento.State in [dsInsert, dsEdit]) then
   begin
      DM.tbAgendamento.Post;
   end;
end;

procedure TformCadastroAgendamentos.limparTela;
var
  i: Integer;
begin
   for i := 0 to ComponentCount - 1 do
    begin
       if Components[i] is TDBEdit then
          TDBEdit(Components[i]).Clear;
    end;
end;

procedure TformCadastroAgendamentos.FormShow(Sender: TObject);
begin
   limparTela;
   comboBoxNome.setFocus;
end;

procedure TformCadastroAgendamentos.btnAlterarClick(Sender: TObject);
begin
   DM.tbAgendamento.Edit;
   data_agendamento.setFocus;
end;

procedure TformCadastroAgendamentos.btnExcluirClick(Sender: TObject);
begin
   DM.tbAgendamento.Delete;
end;

procedure TformCadastroAgendamentos.btnCancelarClick(Sender: TObject);
begin
   DM.tbAgendamento.Cancel;
end;

procedure TformCadastroAgendamentos.btnLimparCamposClick(Sender: TObject);
begin
   limparTela;
end;

end.
