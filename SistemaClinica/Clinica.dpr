program Clinica;

uses
  Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadastroPacientes in 'unitCadastroPacientes.pas' {formCadastroPacientes},
  unitCadastroAgendamentos in 'unitCadastroAgendamentos.pas' {formCadastroAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadastroPacientes, formCadastroPacientes);
  Application.CreateForm(TformCadastroAgendamentos, formCadastroAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
