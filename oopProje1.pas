unit oopProje1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, User, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TMainPage = class(TForm)
    txtName: TEdit;
    txtAge: TEdit;
    txtSurname: TEdit;
    btnSave: TButton;
    txtAddMoney: TEdit;
    listView: TListView;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnSetNonSelected: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnInfo: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure listViewClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSetNonSelectedClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
  private
    objUser : TUser;
    NextID: Integer;
    function GetNextUniqueID: Integer;
    procedure CheckMode;
    procedure SaveMode;
  public
    { Public declarations }
  end;

var
  MainPage: TMainPage;

implementation

{$R *.dfm}


//SÝLME BUTONU
procedure TMainPage.btnDeleteClick(Sender: TObject);
var
  SelectedItem : TListItem;
begin

  SelectedItem := listView.Selected;

  if Assigned(SelectedItem) then
  begin
    SelectedItem.Delete;
  end;

  SaveMode;
end;


//GÜNCELLEME BUTONU
procedure TMainPage.btnUpdateClick(Sender: TObject);
var
  SelectedItem: TListItem;
  newBalance : double;
begin

  objUser.setBalance(StrToFloat(txtAddMoney.Text));
  newBalance := objUser.getUserBalance;

  SelectedItem := listView.Selected;
  if Assigned(SelectedItem) then
  begin
    SelectedItem.SubItems[0] := UpperCase(Trim(txtName.Text));
    SelectedItem.SubItems[1] := UpperCase(Trim(txtSurname.Text));
    SelectedItem.SubItems[2] := Trim(txtAge.Text);
    SelectedItem.SubItems[3] := FloatToStr(newBalance);

    MessageDlg('Baþarýyla güncellendi!', mtInformation, [mbOK], 0);

    newBalance := 0;
  end;
end;


//KAYDETME BUTONU
procedure TMainPage.btnSaveClick(Sender: TObject);
var
  ListItem: TListItem;
  UniqueID: Integer;
begin

  UniqueID := GetNextUniqueID;

  objUser := TUser.Create(IntToStr(UniqueID), UpperCase(Trim(txtName.Text)), UpperCase(Trim(txtSurname.Text)), StrToInt(txtAge.Text));


  objUser.setBalance(StrToFloat(txtAddMoney.Text));

  ListItem := listView.Items.Add;
  ListItem.Caption := IntToStr(UniqueID);
  ListItem.SubItems.Add(objUser.getUserName);
  ListItem.SubItems.Add(objUser.getUserSurname);
  ListItem.SubItems.Add(IntToStr(objUser.getUserAge));
  ListItem.SubItems.Add(FloatToStr(objUser.getUserBalance));

//ShowMessage('User ID: ' + objUser.getUserID + #13#10 +
//      'Name: ' + objUser.getUserName + #13#10 +
//      'Surname: ' + objUser.getUserSurname + #13#10 +
//      'Age: ' + IntToStr(objUser.getUserAge) + #13#10 +
//      'Balance: ' + FloatToStr(objUser.getUserBalance));

//  txtName.Clear;
//  txtSurname.Clear;
//  txtAge.Clear;
//  txtAddMoney.Text := '0';

  SaveMode;


end;


//FORM YÜKLENÝNCE YAPILACAKLAR
procedure TMainPage.FormCreate(Sender: TObject);
begin
  listView.Columns.Add.Caption := 'ID';
  listView.Columns.Add.Caption := 'Ýsim';
  listView.Columns.Add.Caption := 'Soyisim';
  listView.Columns.Add.Caption := 'Yaþ';
  listView.Columns.Add.Caption := 'Bakiye';

  listView.Columns[0].Width := 50; // User ID
  listView.Columns[1].Width := 150; // Name
  listView.Columns[2].Width := 150; // Surname
  listView.Columns[3].Width := 50;  // Age
  listView.Columns[4].Width := 55; // Balance

  NextID := 101;
end;


//LÝSTEDEKÝ SEÇÝMÝ KALDIRMA
procedure TMainPage.btnSetNonSelectedClick(Sender: TObject);
begin

  listView.Selected := nil;

  SaveMode;

end;


//LÝSTEDE ELEMAN SEÇÝLDÝÐÝNDE
procedure TMainPage.listViewClick(Sender: TObject);
var
  SelectedItem: TListItem;
  currentBalance : double;
begin
  SelectedItem := listView.Selected;

  currentBalance := StrToFloat(SelectedItem.SubItems[3]);
  objUser.setBalanceFixed(currentBalance);

  if SelectedItem = nil then
    Exit;

  CheckMode;

  txtName.Text := SelectedItem.SubItems[0];
  txtSurname.Text := SelectedItem.SubItems[1];
  txtAge.Text := SelectedItem.SubItems[2];
end;


//OTOMATÝK ID
function TMainPage.GetNextUniqueID: Integer;
begin
  Result := NextID;
  Inc(NextID);
end;


//GÜNCELLEME MODU
procedure TMainPage.CheckMode;
begin

  txtAddMoney.Enabled := true;
  btnSave.Enabled := false;
  btnUpdate.Enabled := true;
  btnDelete.Enabled := true;
  btnSetNonSelected.Enabled := true;

  txtAddMoney.Text := '0';

end;


//KAYDETME MODU
procedure TMainPage.SaveMode;
begin

  txtName.Text := '';
  txtSurname.Text := '';
  txtAge.Text := '';
  txtAddMoney.Text := '0';

  txtAddMoney.Enabled := false;
  btnSave.Enabled := true;
  btnUpdate.Enabled := false;
  btnDelete.Enabled := false;
  btnSetNonSelected.Enabled := false;

end;


//BÝLGÝ BUTONU
procedure TMainPage.btnInfoClick(Sender: TObject);
begin

  ShowMessage(Format('Batuhan CAN %sbatuhancann.github.io', [sLineBreak, sLineBreak]));

end;

end.

