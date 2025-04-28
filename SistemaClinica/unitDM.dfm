object DM: TDM
  OldCreateOrder = False
  Left = 290
  Top = 134
  Height = 204
  Width = 289
  object conexao: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'clinica'
    User = 'root'
    Protocol = 'mysql-5'
    Left = 24
    Top = 32
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 104
    Top = 104
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 192
    Top = 104
  end
  object tbPaciente: TZTable
    Connection = conexao
    AfterInsert = tbPacienteAfterInsert
    Active = True
    TableName = 'paciente'
    Left = 104
    Top = 32
    object tbPacienteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object tbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Required = True
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 15
    end
  end
  object tbAgendamento: TZTable
    Connection = conexao
    Active = True
    TableName = 'agendamento'
    Left = 200
    Top = 32
    object tbAgendamentoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object tbAgendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Required = True
    end
    object tbAgendamentodata_agendamento: TDateField
      FieldName = 'data_agendamento'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object tbAgendamentohora_agendamento: TStringField
      FieldName = 'hora_agendamento'
      Required = True
      EditMask = '!90:00;1;_'
      Size = 8
    end
    object tbAgendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamentomedico: TStringField
      FieldName = 'medico'
      Required = True
      Size = 30
    end
  end
end
