object NotificationDocumentUpdateForm: TNotificationDocumentUpdateForm
  Left = 193
  Top = 124
  BorderStyle = bsToolWindow
  Caption = 'NotificationDocumentUpdateForm'
  ClientHeight = 161
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label10: TLabel
    Left = 32
    Top = 44
    Width = 104
    Height = 16
    Caption = #1058#1080#1087' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
  end
  object Label12: TLabel
    Left = 64
    Top = 76
    Width = 72
    Height = 16
    Caption = #1048#1079#1074#1077#1097#1077#1085#1080#1077
  end
  object Label1: TLabel
    Left = 72
    Top = 12
    Width = 64
    Height = 16
    Caption = #1044#1086#1082#1091#1084#1077#1085#1090
  end
  object Label3: TLabel
    Left = 105
    Top = 108
    Width = 32
    Height = 16
    Caption = #1044#1072#1090#1072
  end
  object DBTypeLookupComboboxEh: TDBLookupComboboxEh
    Left = 144
    Top = 40
    Width = 249
    Height = 24
    EmptyDataInfo.Font.Charset = RUSSIAN_CHARSET
    EmptyDataInfo.Font.Color = clRed
    EmptyDataInfo.Font.Height = -13
    EmptyDataInfo.Font.Name = 'Courier New'
    EmptyDataInfo.Font.Style = [fsBold]
    EmptyDataInfo.ParentFont = False
    EditButtons = <>
    KeyField = #1050#1083#1102#1095'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077
    ListSource = MSTypeDataSource
    TabOrder = 0
    Visible = True
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 132
    Width = 257
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 132
    Width = 121
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object DBNotificationLookupComboboxEh: TDBLookupComboboxEh
    Left = 144
    Top = 72
    Width = 249
    Height = 24
    EmptyDataInfo.Font.Charset = RUSSIAN_CHARSET
    EmptyDataInfo.Font.Color = clRed
    EmptyDataInfo.Font.Height = -13
    EmptyDataInfo.Font.Name = 'Courier New'
    EmptyDataInfo.Font.Style = [fsBold]
    EmptyDataInfo.ParentFont = False
    EditButton.Action = NotificationChose
    EditButton.Style = ebsEllipsisEh
    EditButton.Width = 50
    EditButtons = <>
    KeyField = #1050#1083#1102#1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    ListSource = MSNotificationDataSource
    TabOrder = 3
    Visible = True
  end
  object DBDocumentLookupComboboxEh: TDBLookupComboboxEh
    Left = 144
    Top = 8
    Width = 249
    Height = 24
    EmptyDataInfo.Font.Charset = RUSSIAN_CHARSET
    EmptyDataInfo.Font.Color = clRed
    EmptyDataInfo.Font.Height = -13
    EmptyDataInfo.Font.Name = 'Courier New'
    EmptyDataInfo.Font.Style = [fsBold]
    EmptyDataInfo.ParentFont = False
    EditButton.ShortCut = 0
    EditButton.Style = ebsEllipsisEh
    EditButton.Visible = False
    EditButton.Width = 50
    EditButtons = <>
    KeyField = #1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090
    ListField = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077'_'#1044#1086#1082#1091#1084#1077#1085#1090
    ListSource = MSDocumentDataSource
    TabOrder = 4
    Visible = True
  end
  object DBDateTimeEditEh1: TDBDateTimeEditEh
    Left = 144
    Top = 104
    Width = 249
    Height = 24
    DataField = #1044#1072#1090#1072'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    DataSource = MSNotificationDocumentDataSource
    DynProps = <>
    EditButtons = <>
    Kind = dtkDateEh
    TabOrder = 5
    Visible = True
  end
  object MSNotificationDocumentQuery: TMSQuery
    SQLInsert.Strings = (
      
        '{:RETURN_VALUE = CALL Archive.dbo."SDAC_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077'_Inser' +
        't";1(:'#1050#1083#1102#1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090', :'#1050#1083#1102#1095'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077', :'#1053#1086#1084#1077 +
        #1088'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1051#1080#1089#1090#1086#1074'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1044#1072 +
        #1090#1072'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077')}')
    SQLUpdate.Strings = (
      
        '{:RETURN_VALUE = CALL Archive.dbo."SDAC_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077'_Updat' +
        'e";1(:'#1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1050#1083#1102#1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1050#1083#1102#1095'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077 +
        #1085#1080#1077', :'#1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090', :'#1053#1086#1084#1077#1088'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1051#1080#1089#1090 +
        #1086#1074'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077', :'#1044#1072#1090#1072'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077')}')
    Connection = ArchiveDataModule.MSArchiveConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Archive.dbo."SDAC_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077'_Selec' +
        't";1(:'#1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077')}')
    BeforeUpdateExecute = MSNotificationDocumentQueryBeforeUpdateExecute
    AfterUpdateExecute = MSNotificationDocumentQueryAfterUpdateExecute
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = #1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
        ParamType = ptInput
      end>
    object MSNotificationDocumentQuery_: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationDocumentQuery_2: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090
    end
    object MSNotificationDocumentQuery__: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
      ReadOnly = True
    end
    object MSNotificationDocumentQuery__2: TIntegerField
      FieldName = #1053#1086#1084#1077#1088'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationDocumentQuery___: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1051#1080#1089#1090#1086#1074'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationDocumentQuery__3: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077
    end
    object MSNotificationDocumentQuery__4: TDateTimeField
      FieldName = #1044#1072#1090#1072'_'#1044#1086#1082#1091#1084#1077#1085#1090'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationDocumentQuery__5: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077
      ReadOnly = True
      Size = 200
    end
    object MSNotificationDocumentQuery_3: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
      ReadOnly = True
      Size = 200
    end
  end
  object MSNotificationDocumentDataSource: TMSDataSource
    DataSet = MSNotificationDocumentQuery
    Left = 8
    Top = 40
  end
  object MSNotificationQuery: TMSQuery
    Connection = ArchiveDataModule.MSArchiveConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Archive.dbo."SDAC_'#1048#1079#1074#1077#1097#1077#1085#1080#1077'_Select";1(:'#1050#1083#1102 +
        #1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077')}')
    Left = 8
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = #1050#1083#1102#1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
        ParamType = ptInput
      end>
    CommandStoredProcName = 'Archive.dbo.SDAC_'#1048#1079#1074#1077#1097#1077#1085#1080#1077'_Select;1'
    object MSNotificationQuery_: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
      ReadOnly = True
    end
    object MSNotificationQuery_2: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
      Size = 200
    end
    object MSNotificationQuery_3: TStringField
      FieldName = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationQuery__: TDateTimeField
      FieldName = #1044#1072#1090#1072'_'#1042#1099#1087#1091#1089#1082'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationQuery__2: TDateTimeField
      FieldName = #1044#1072#1090#1072'_'#1057#1088#1086#1082'_'#1048#1079#1074#1077#1097#1077#1085#1080#1077
    end
    object MSNotificationQuery_4: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    end
  end
  object MSNotificationDataSource: TMSDataSource
    DataSet = MSNotificationQuery
    Left = 8
    Top = 104
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coNone
        Items = <>
      end>
    Left = 40
    Top = 40
    StyleName = 'XP Style'
    object SaveNotificationDocument: TAction
      Category = 'Service'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1074#1077#1097#1077#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      OnExecute = SaveNotificationDocumentExecute
    end
    object NotificationChose: TAction
      Category = 'Notification'
      Caption = 'NotificationChose'
      OnExecute = NotificationChoseExecute
    end
  end
  object MSDocumentQuery: TMSQuery
    Connection = ArchiveDataModule.MSArchiveConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL Archive.dbo."SDAC_'#1044#1086#1082#1091#1084#1077#1085#1090'_Select";1(:'#1050#1083#1102#1095 +
        '_'#1044#1086#1082#1091#1084#1077#1085#1090')}')
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = #1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090
        ParamType = ptInput
      end>
    CommandStoredProcName = 'Archive.dbo.SDAC_'#1044#1086#1082#1091#1084#1077#1085#1090'_Select;1'
    object MSDocumentQuery_: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1044#1086#1082#1091#1084#1077#1085#1090
      ReadOnly = True
    end
    object MSDocumentQuery__: TStringField
      FieldName = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081'_'#1053#1086#1084#1077#1088'_'#1044#1086#1082#1091#1084#1077#1085#1090
    end
    object MSDocumentQuery_2: TStringField
      FieldName = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077'_'#1044#1086#1082#1091#1084#1077#1085#1090
    end
    object MSDocumentQuery__2: TDateTimeField
      FieldName = #1044#1072#1090#1072'_'#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'_'#1044#1086#1082#1091#1084#1077#1085#1090
    end
    object MSDocumentQuery__3: TDateTimeField
      FieldName = #1044#1072#1090#1072'_'#1057#1087#1080#1089#1072#1085#1080#1103'_'#1044#1086#1082#1091#1084#1077#1085#1090
    end
    object MSDocumentQuery__4: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1051#1080#1089#1090#1086#1074'_'#1044#1086#1082#1091#1084#1077#1085#1090
    end
    object MSDocumentQuery__5: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1042#1080#1076'_'#1044#1086#1082#1091#1084#1077#1085#1090
      ReadOnly = True
      Size = 100
    end
    object MSDocumentQuery_3: TStringField
      FieldName = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077'_'#1060#1086#1088#1084#1072#1090
      ReadOnly = True
      Size = 5
    end
    object MSDocumentQuery_4: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      ReadOnly = True
      Size = 200
    end
    object MSDocumentQuery__6: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'_'#1050#1086#1087#1080#1103
      ReadOnly = True
      Size = 200
    end
  end
  object MSDocumentDataSource: TMSDataSource
    DataSet = MSDocumentQuery
    Left = 40
    Top = 104
  end
  object MSTypeQuery: TMSQuery
    Connection = ArchiveDataModule.MSArchiveConnection
    SQL.Strings = (
      'select * from '#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077)
    Left = 72
    Top = 72
    object MSTypeQuery__: TIntegerField
      FieldName = #1050#1083#1102#1095'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077
      ReadOnly = True
    end
    object MSTypeQuery__2: TStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'_'#1058#1080#1087'_'#1048#1079#1084#1077#1085#1077#1085#1080#1077
      Size = 200
    end
  end
  object MSTypeDataSource: TMSDataSource
    DataSet = MSTypeQuery
    Left = 72
    Top = 104
  end
end
