unit User;

interface
type TUser = class(TObject)

  private
    fID : string;
    fName : string;
    fSurname : string;
    fAge : Integer;
    fBalance : double;
  public
    constructor Create(sID : string; sName : string; sSurname : string; iAge : Integer);
    function getUserID: string;
    function getUserName: string;
    function getUserSurname: string;
    function getUserAge: Integer;


    procedure setBalance(dBalance : double);
    procedure setBalanceFixed(dBalance : double);
    function getUserBalance : double;


end;

implementation

{ TUser }

constructor TUser.Create(sID : string; sName : string; sSurname : string; iAge : Integer);
begin
  fID := sID;
  fName := sName;
  fSurname := sSurname;
  fAge := iAge;

  fBalance := 00.00;

end;

procedure TUser.setBalance(dBalance : double);
begin
  fBalance := fBalance + dBalance;
end;

procedure TUser.setBalanceFixed(dBalance : double);
begin
  fBalance := dBalance;
end;

function TUser.getUserBalance : double;
begin
  Result := fBalance;
end;

function TUser.getUserID : string;
begin
  Result := fID;
end;

function TUser.getUserName: string;
begin
  Result := fName;
end;

function TUser.getUserSurname: string;
begin
  Result := fSurname;
end;

function TUser.getUserAge: Integer;
begin
  Result := fAge;
end;

end.
