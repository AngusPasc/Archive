unit NotificationDocumentUpdateF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MSAccess, MemDS, DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, DBLookupEh, Buttons, ActnList, XPStyleActnCtrls, ActnMan;

type
  TNotificationDocumentUpdateForm = class(TForm)
    MSNotificationDocumentQuery: TMSQuery;
    MSNotificationDocumentDataSource: TMSDataSource;
    DBTypeLookupComboboxEh: TDBLookupComboboxEh;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBNotificationLookupComboboxEh: TDBLookupComboboxEh;
    Label12: TLabel;
    MSNotificationQuery: TMSQuery;
    MSNotificationDataSource: TMSDataSource;
    MSNotificationQuery_: TIntegerField;
    MSNotificationQuery_2: TStringField;
    MSNotificationQuery_3: TStringField;
    MSNotificationQuery__: TDateTimeField;
    MSNotificationQuery__2: TDateTimeField;
    MSNotificationQuery_4: TIntegerField;
    ActionManager1: TActionManager;
    SaveNotificationDocument: TAction;
    NotificationChose: TAction;
    MSDocumentQuery: TMSQuery;
    MSDocumentDataSource: TMSDataSource;
    MSDocumentQuery_: TIntegerField;
    MSDocumentQuery__: TStringField;
    MSDocumentQuery_2: TStringField;
    MSDocumentQuery__2: TDateTimeField;
    MSDocumentQuery__3: TDateTimeField;
    MSDocumentQuery__4: TIntegerField;
    MSDocumentQuery__5: TStringField;
    MSDocumentQuery_3: TStringField;
    MSDocumentQuery_4: TStringField;
    MSDocumentQuery__6: TStringField;
    DBDocumentLookupComboboxEh: TDBLookupComboboxEh;
    MSTypeQuery: TMSQuery;
    MSTypeDataSource: TMSDataSource;
    MSTypeQuery__: TIntegerField;
    MSTypeQuery__2: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    MSNotificationDocumentQuery_: TIntegerField;
    MSNotificationDocumentQuery_2: TIntegerField;
    MSNotificationDocumentQuery__: TIntegerField;
    MSNotificationDocumentQuery__2: TIntegerField;
    MSNotificationDocumentQuery___: TIntegerField;
    MSNotificationDocumentQuery__3: TIntegerField;
    MSNotificationDocumentQuery__4: TDateTimeField;
    MSNotificationDocumentQuery__5: TStringField;
    MSNotificationDocumentQuery_3: TStringField;
    procedure NotificationChoseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveNotificationDocumentExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MSNotificationDocumentQueryBeforeUpdateExecute(
      Sender: TCustomMSDataSet; StatementTypes: TStatementTypes;
      Params: TMSParams);
    procedure MSNotificationDocumentQueryAfterUpdateExecute(
      Sender: TCustomMSDataSet; StatementTypes: TStatementTypes;
      Params: TMSParams);
  private
    { Private declarations }
  public
    { Public declarations }
    keyDocumentNotification :Integer;
    keyDocument :Integer;
  end;

var
  NotificationDocumentUpdateForm: TNotificationDocumentUpdateForm;

implementation

uses NotificationF, ArchiveDataM;

{$R *.dfm}
procedure TNotificationDocumentUpdateForm.FormCreate(Sender: TObject);
begin
  keyDocumentNotification := 0;
end;

procedure TNotificationDocumentUpdateForm.FormShow(Sender: TObject);
begin

  MSNotificationQuery.Close();
  MSNotificationQuery.Open();

  MSTypeQuery.Close();
  MSTypeQuery.Open();

  MSNotificationDocumentQuery.Close();
  MSNotificationDocumentQuery.ParamByName('����_��������_���������').Value := keyDocumentNotification;
  MSNotificationDocumentQuery.Open();

  if (keyDocumentNotification = 0) then
  begin
    MSDocumentQuery.Close();
    MSDocumentQuery.ParamByName('����_��������').Value := keyDocument;
    MSDocumentQuery.Open();
    MSNotificationDocumentQuery.Insert();
  end
  else
  begin
    MSDocumentQuery.Close();
    MSDocumentQuery.ParamByName('����_��������').Value := MSNotificationDocumentQuery.FieldByName('����_��������').AsInteger;
    MSDocumentQuery.Open();
    MSNotificationQuery.Locate('����_���������', MSNotificationDocumentQuery.FieldByName('����_���������').AsInteger, [loCaseInsensitive, loPartialKey]);
    MSTypeQuery.Locate('����_���_���������', MSNotificationDocumentQuery.FieldByName('����_���_���������').AsInteger, [loCaseInsensitive, loPartialKey]);
    MSNotificationDocumentQuery.Edit();
  end;
  MSDocumentQuery.Locate('����_��������', keyDocument, [loCaseInsensitive, loPartialKey]);
  DBDocumentLookupComboboxEh.KeyValue := MSDocumentQuery.FieldByName('����_��������').AsInteger;
  DBTypeLookupComboboxEh.KeyValue := MStypeQuery.FieldByName('����_���_���������').AsInteger;
  DBNotificationLookupComboboxEh.KeyValue := MSNotificationQuery.FieldByName('����_���������').AsInteger;
end;

procedure TNotificationDocumentUpdateForm.NotificationChoseExecute(
  Sender: TObject);
begin
  NotificationForm := TNotificationForm.Create(Self);
  if (NotificationForm.ShowModal() = mrOk) Then
  begin
    MSNotificationQuery.Refresh();
    MSNotificationQuery.Locate('����_���������', NotificationForm.MSNotificationQuery.FieldByName('����_���������').AsInteger, [loCaseInsensitive, loPartialKey]);
    DBNotificationLookupComboboxEh.KeyValue := MSNotificationQuery.FieldByName('����_���������').AsInteger;
  end;
  NotificationForm.Destroy();
end;

procedure TNotificationDocumentUpdateForm.SaveNotificationDocumentExecute(
  Sender: TObject);
begin
    //if (Length(DBNameEditEh.Text) = 0) then
    //  raise Exception.Create('�� ��������� ���� ''������������''');

    ArchiveDataModule.MSArchiveConnection.StartTransaction();
    try
      MSNotificationDocumentQuery.FieldByName('����_���������').AsInteger := MSNotificationQuery.FieldByName('����_���������').AsInteger;
      MSNotificationDocumentQuery.FieldByName('����_��������').AsInteger := MSDocumentQuery.FieldByName('����_��������').AsInteger;
      MSNotificationDocumentQuery.FieldByName('����_���_���������').AsInteger := MSTypeQuery.FieldByName('����_���_���������').AsInteger;
      MSNotificationDocumentQuery.Post();
      ArchiveDataModule.MSArchiveConnection.Commit();
    except
      ArchiveDataModule.MSArchiveConnection.Rollback();
      raise;
    end;
end;

procedure TNotificationDocumentUpdateForm.BitBtn1Click(Sender: TObject);
begin
    try
      SaveNotificationDocument.Execute();
    except
    on CommonException: Exception do
    begin
      ShowMessage(CommonException.Message);
      ModalResult := mrNone;
    end;
  end;
end;
procedure TNotificationDocumentUpdateForm.MSNotificationDocumentQueryBeforeUpdateExecute(
  Sender: TCustomMSDataSet; StatementTypes: TStatementTypes;
  Params: TMSParams);
begin
    Params.ParamByName('RETURN_VALUE').ParamType := ptResult;
    Params.ParamByName('RETURN_VALUE').DataType := ftInteger;
end;

procedure TNotificationDocumentUpdateForm.MSNotificationDocumentQueryAfterUpdateExecute(
  Sender: TCustomMSDataSet; StatementTypes: TStatementTypes;
  Params: TMSParams);
begin
  if Not(stRefresh in StatementTypes) then begin
    keyDocumentNotification := Params.ParamByName('RETURN_VALUE').AsInteger;
    if stInsert in StatementTypes then begin
        Sender.FieldByName('����_��������_���������').ReadOnly := False;
      try
        Sender.FieldByName('����_��������_���������').NewValue := keyDocumentNotification;
      finally
        Sender.FieldByName('����_��������_���������').ReadOnly := True;
      end;
    end;
  end;
end;

end.
