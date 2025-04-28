unit unitDM;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZAbstractConnection, ZConnection;

type
  TDM = class(TDataModule)
    conexao: TZConnection;
    dsPaciente: TDataSource;
    dsAgendamento: TDataSource;
    tbPaciente: TZTable;
    tbAgendamento: TZTable;
    tbPacienteid: TIntegerField;
    tbPacientenome: TStringField;
    tbPacientecelular: TStringField;
    tbPacientedata_cadastro: TDateField;
    tbPacientecpf: TStringField;
    tbAgendamentoid: TIntegerField;
    tbAgendamentoid_paciente: TIntegerField;
    tbAgendamentodata_agendamento: TDateField;
    tbAgendamentohora_agendamento: TStringField;
    tbAgendamentoespecialidade: TStringField;
    tbAgendamentomedico: TStringField;
    procedure tbPacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.tbPacienteAfterInsert(DataSet: TDataSet);
begin
   tbPacientedata_cadastro.Value := Date();
end;

end.
