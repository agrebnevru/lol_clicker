unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormMain = class(TForm)
    Timer1: TTimer;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure RunApplication;
    procedure MinimizeApp(WindName: string);
    procedure SetZeroZeroCoondinate(WindName: string);
    procedure MouseClick(x, y: integer; WindName: string);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  handl: HWND;
  PathToPatcher, WindowNamePatcher, WindowNameLogIn, WindowNameClient: string;
  WaitingTime: integer;

implementation

{$R *.dfm}
{
  630,500 - Нажимаем кнопку play для запуска лаунчера (ввода логина)
  877,326 - Координаты поля для ввода логина
  877,387 - Координаты поля для ввода пароля
  1110,427 - Кнопка Log In
  636,44 - Кнопка Play
  325,235 - Выбираем игру с компом
  943,713 - Нажимаем криейт
  250,680 - поле пароля
  625,730 - Создать игру
  890,155 - Добавить бота кнопка
  857,493 - Создать игру кнопка
  320,250 - первый герой
  870,505 - Lock IN - кнопка
}

procedure TFormMain.RunApplication;
begin
  WinExec(PAnsiChar(PathToPatcher), SW_ShowNormal);
end;

procedure TFormMain.MinimizeApp(WindName: string);
begin
  handl := FindWindow(nil, PChar(WindowNamePatcher));
  if handl <> 0 then
    PostMessage(handl, WM_SYSCOMMAND, SC_MINIMIZE, 0)
  else
    ShowMessage('ERROR: Не удалось свернуть приложение Patcher.');
end;

procedure TFormMain.SetZeroZeroCoondinate(WindName: string);
begin
  handl := FindWindow(nil, PChar(WindowNamePatcher));
  if handl <> 0 then
    SetWindowPos(handl, HWND_BOTTOM, 1, 1, 0, 0, SWP_nosize)
  else
    ShowMessage('ERROR: Не удалось выставить координаты в 0.');
end;

procedure TFormMain.MouseClick(x, y: integer; WindName: string);
begin
  handl := FindWindow(nil, PChar(WindowNamePatcher));
  if handl <> 0 then
    SetWindowPos(handl, HWND_BOTTOM, 1, 1, 0, 0, SWP_nosize)
  else
    ShowMessage('ERROR: Не удалось выставить координаты в 0.');
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  handl := FindWindow(nil, PChar(Edit1.text));
  SendMessage(handl, WM_LBUTTONDOWN, MK_LBUTTON,
    StrToInt(Edit3.text) + StrToInt(Edit4.text) shl 16);
  SendMessage(handl, WM_LBUTTONUP, MK_LBUTTON,
    StrToInt(Edit3.text) + StrToInt(Edit4.text) shl 16);
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
  {RunApplication;
  MinimizeApp(WindowNamePatcher);
  SetZeroZeroCoondinate(WindowNamePatcher);
  MouseClick(630, 500);
  sleep(WaitingTime);
  MinimizeApp(WindowNameLogIn);
  SetZeroZeroCoondinate(WindowNameLogIn);
  MouseClick(877, 326, WindowNameLogIn)}
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
  handl := FindWindow(nil, PChar(Edit1.text));
  if handl <> 0 then
  SetWindowPos(handl, HWND_BOTTOM, 1, 1, 0, 0, SWP_nosize)
  else
  ShowMessage('Такого хендла не найдено');
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  WaitingTime := 5000;
  PathToPatcher :=
    'C:\Game Files\Riot Games\League of Legends\lol.launcher.exe';
  WindowNamePatcher := 'PVP.net Patcher';
  WindowNameLogIn:= 'PVP.net Client';
  WindowNameClient:= 'PVP.net Client';
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
var
  foo: TPoint;
begin
  GetCursorPos(foo);
  Edit2.text := 'Координаты мыши (' + IntToStr(foo.x) + ' ,' + IntToStr(foo.y)
    + ')';
end;

end.
