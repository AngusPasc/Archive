unit ArchiveMainF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MSAccess, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, SdacVcl,
  MSTransaction, Menus, ComCtrls, ToolWin, ActnList, ImgList, PropStorageEh,
  ActnMan, ActnCtrls, XPStyleActnCtrls;

type
  TArchiveMainForm = class(TForm)
    MSPermissionQuery: TMSQuery;
    MainMenu1: TMainMenu;
    ImageList34: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    ImageList16: TImageList;
    MSPermissionQueryHAS_PERM: TIntegerField;
    N4: TMenuItem;
    GuideOrganization1: TMenuItem;
    N3: TMenuItem;
    JournalDocument1: TMenuItem;
    ActionManager: TActionManager;
    Connect: TAction;
    Exit: TAction;
    JournalDocument: TAction;
    GuideOrganization: TAction;
    ActionToolBar1: TActionToolBar;
    GuideKindDocument: TAction;
    JournalNotification: TAction;
    procedure ConnectExecute(Sender: TObject);
    procedure GuideOrganizationExecute(Sender: TObject);
    procedure JournalDocumentExecute(Sender: TObject);
    procedure GuideKindDocumentExecute(Sender: TObject);
    procedure JournalNotificationExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArchiveMainForm: TArchiveMainForm;

implementation

uses ArchiveDataM, OrganizationF, JournalDocumentF, KindDocumentF,
  NotificationF;

{$R *.dfm}

procedure TArchiveMainForm.ConnectExecute(Sender: TObject);
begin
  ArchiveDataModule.MSArchiveConnection.Connect;
end;

procedure TArchiveMainForm.GuideOrganizationExecute(Sender: TObject);
begin
    if (ArchiveDataModule.HasPermission('Archive.dbo.�����������', 'OBJECT', 'SELECT')) then
    begin
      OrganizationForm := TOrganizationForm.Create(Application);
      OrganizationForm.ShowModal();
      OrganizationForm.Destroy();
    end
    else
    begin
      raise Exception.Create('������������ ���� ��� ��������� ����������� ���������');
    end
end;

procedure TArchiveMainForm.JournalDocumentExecute(Sender: TObject);
begin
  if (ArchiveDataModule.HasPermission('Archive.dbo.��������', 'OBJECT', 'SELECT')) then
  begin
    if (JournalDocumentForm = nil) then
      JournalDocumentForm := TJournalDocumentForm.Create(Application);
    JournalDocumentForm.Show();
  end
  else
  begin
    raise Exception.Create('������������ ���� ��� ��������� ������� ����������');
  end
end;

procedure TArchiveMainForm.GuideKindDocumentExecute(Sender: TObject);
begin
    if (ArchiveDataModule.HasPermission('Archive.dbo.���_��������', 'OBJECT', 'SELECT')) then
    begin
      KindDocumentForm := TKindDocumentForm.Create(Self);
      KindDocumentForm.ShowModal();
      KindDocumentForm.Destroy();
    end
    else
    begin
      raise Exception.Create('������������ ���� ��� ��������� ����������� ����� ���������');
    end
end;

procedure TArchiveMainForm.JournalNotificationExecute(Sender: TObject);
begin
  if (ArchiveDataModule.HasPermission('Archive.dbo.��������', 'OBJECT', 'SELECT')) then
  begin
    NotificationForm := TNotificationForm.Create(Self);
    NotificationForm.ShowModal();
    NotificationForm.Destroy();
  end
  else
  begin
    raise Exception.Create('������������ ���� ��� ��������� ������� ����������');
  end
end;

end.
