unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Styles.Objects, FMX.Layouts,
  FMX.ListBox, FMX.ScrollBox, FMX.Memo, FMX.Edit;

type
  TMenu = class(TForm)
    label_global: TLabel;
    start_test: TButton;
    result: TButton;
    setting: TButton;
    info: TButton;
    exit: TButton;
    label_nick: TLabel;
    label_icon: TCircle;
    label_point: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    label_timer: TLabel;
    c_timer: TLabel;
    ended: TButton;
    label_points: TLabel;
    points: TLabel;
    continue: TButton;
    List_Result: TListBox;
    SettingBox: TGroupBox;
    Saves: TButton;
    Information: TMemo;
    Global_Timer: TTimer;
    Micro_Timer: TTimer;
    Timer: TTimer;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    Timer_2: TTimer;
    Enter_nick: TEdit;
    label_niks: TLabel;
    nick_sumbit: TButton;
    Time_30: TRadioButton;
    Select_Time: TGroupBox;
    Time_60: TRadioButton;
    Time_90: TRadioButton;
    Time_120: TRadioButton;
    Logo_T: TImage;
    Expert_Mode: TRadioButton;
    Standart_Mode: TRadioButton;
    Speed_Mode: TRadioButton;
    procedure exitClick(Sender: TObject);
    procedure start_testClick(Sender: TObject);
    procedure resultClick(Sender: TObject);
    procedure settingClick(Sender: TObject);
    procedure infoClick(Sender: TObject);
    procedure Micro_TimerTimer(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure Timer_2Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure continueClick(Sender: TObject);
    procedure endedClick(Sender: TObject);
    procedure Global_TimerTimer(Sender: TObject);
    procedure nick_sumbitClick(Sender: TObject);
    procedure Standart_ModeChange(Sender: TObject);
    procedure Time_30Change(Sender: TObject);
    procedure Time_60Change(Sender: TObject);
    procedure Time_90Change(Sender: TObject);
    procedure Time_120Change(Sender: TObject);
    procedure Expert_ModeChange(Sender: TObject);
    procedure Speed_ModeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu: TMenu;
  t, Check, i, Temp_t, color_template, current_color: integer;
  One, Two, Three, Four, Five, Six, Seven, Eight, Nine : string;
  Button_t_1, Button_t_2, Button_t_3, Button_t_4, Button_t_5, Button_t_6, Button_t_7, Button_t_8, Button_t_9, Boot_flag, Custom_Time : boolean;
  Button_t_: array [0..9] of boolean;

implementation

{$R *.fmx}

uses Unit2;

{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.Moto360.fmx ANDROID}
{$R *.SSW3.fmx ANDROID}
{$R *.GGlass.fmx ANDROID}


                       // ** Кастомные процедуры ** //

// Процедура получения баллов

procedure GetCoin;
begin
  Check:=0;
  Menu.points.Text:=IntToStr(StrToInt(Menu.points.Text)+1);
  Menu.label_point.Text:=Menu.points.Text;
  for i:=1 to 9 do
  Button_t_[i]:=False;
  for i:=1 to 9 do
  (Menu.FindComponent('Memo'+inttostr(i)) as TMemo).Text:=IntToStr(Random(9));
  for i:=1 to 9 do
  (Menu.FindComponent('Image'+inttostr(i)) as TImage).Visible:=False;
  for i:=1 to 9 do
  (Menu.FindComponent('Memo'+inttostr(i)) as TMemo).Visible:=True;

end;


// Процедура сборки меню

procedure BuildMenu;
begin
  // Clear Testing Components
  Menu.label_global.Text:='Приложение для развития памяти и логики';
  Menu.label_timer.Visible:=False;
  Menu.c_timer.Visible:=False;
  Menu.label_points.Visible:=False;
  Menu.points.Visible:=False;
  Menu.continue.Visible:=False;
  Menu.ended.Visible:=False;
  Menu.List_Result.Visible:=False;
  Menu.SettingBox.Visible:=False;
  Menu.Saves.Visible:=False;
  Menu.Information.Visible:=False;
  Menu.Global_Timer.Enabled:=False;
  Menu.Micro_Timer.Enabled:=False;
  Menu.Timer.Enabled:=False;
  Menu.Timer_2.Enabled:=False;

  // Clear etc

  for i:=1 to 9 do
  (Menu.FindComponent('Image'+inttostr(i)) as TImage).Visible:=False;

  for i:=1 to 9 do
  (Menu.FindComponent('Memo'+inttostr(i)) as TMemo).Visible:=False;

  // Construct Global Menu
  Menu.label_icon.Visible:=True;
  Menu.label_nick.Visible:=True;
  Menu.label_point.Visible:=True;
  Menu.start_test.Visible:=True;
  Menu.result.Visible:=True;
  Menu.setting.Visible:=True;
  Menu.info.Visible:=True;
  Menu.exit.Visible:=True;

end;


// Процедура очистки меню

procedure ClearMenu;
begin
  // Clear Global Menu
  Menu.label_icon.Visible:=False;
  Menu.label_nick.Visible:=False;
  Menu.label_point.Visible:=False;
  Menu.start_test.Visible:=False;
  Menu.result.Visible:=False;
  Menu.setting.Visible:=False;
  Menu.info.Visible:=False;
  Menu.exit.Visible:=False;
end;

procedure TMenu.continueClick(Sender: TObject);
begin
if Check=0 then abort;

continue.Enabled:=True;

                        // ** Проверка кнопок ** //


        // ** ONE ** //

if Button_t_1=true and Button_t_2=true then
  if One=Two then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_1=true and Button_t_3=true then
  if One=Three then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_1=true and Button_t_4=true then
  if One=Four then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_1=true and Button_t_5=true then
  if One=Five then
  begin
  GetCoin;
  abort;
  end
  else
  abort;


if Button_t_1=true and Button_t_6=true then
  if One=Six then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_1=true and Button_t_7=true then
  if One=Seven then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_1=true and Button_t_8=true then
  if One=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_1=true and Button_t_9=true then
  if One=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

        // ** TWO ** //

if Button_t_2=true and Button_t_3=true then
  if Two=Three then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_2=true and Button_t_4=true then
  if Two=Four then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_2=true and Button_t_5=true then
  if Two=Five then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_2=true and Button_t_6=true then
  if Two=Six then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_2=true and Button_t_7=true then
  if Two=Seven then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_2=true and Button_t_8=true then
  if Two=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_2=true and Button_t_9=true then
  if Two=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

        // ** THREE ** //

if Button_t_3=true and Button_t_4=true then
  if Three=Four then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_3=true and Button_t_5=true then
  if Three=Five then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_3=true and Button_t_6=true then
  if Three=Six then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_3=true and Button_t_7=true then
  if Three=Seven then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_3=true and Button_t_8=true then
  if Three=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_3=true and Button_t_9=true then
  if Three=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;


        // ** FOUR ** //

if Button_t_4=true and Button_t_5=true then
  if Four=Five then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_4=true and Button_t_6=true then
  if Four=Six then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_4=true and Button_t_7=true then
  if Four=Seven then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_4=true and Button_t_8=true then
  if Four=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_4=true and Button_t_9=true then
  if Four=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

        // ** FIVE ** //

if Button_t_5=true and Button_t_6=true then
  if Five=Six then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_5=true and Button_t_7=true then
  if Five=Seven then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_5=true and Button_t_8=true then
  if Five=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_5=true and Button_t_9=true then
  if Five=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;


          // ** SIX ** //

if Button_t_6=true and Button_t_7=true then
  if Six=Seven then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_6=true and Button_t_8=true then
  if Six=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_6=true and Button_t_9=true then
  if Six=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;


        // ** SEVEN ** //

if Button_t_7=true and Button_t_8=true then
  if Seven=Eight then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

if Button_t_7=true and Button_t_9=true then
  if Seven=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;


        // ** EIGHT ** //

if Button_t_8=true and Button_t_9=true then
  if Eight=Nine then
  begin
  GetCoin;
  abort;
  end
  else
  abort;

end;

procedure TMenu.endedClick(Sender: TObject);
begin
BuildMenu;
Logo_T.Visible:=False;
if Boot_Flag=true then
List_Result.Items.Add(label_nick.Text+'       '+label_point.Text);
Boot_Flag:=false;
end;

procedure TMenu.exitClick(Sender: TObject);
begin
Close;
end;

procedure TMenu.Expert_ModeChange(Sender: TObject);
begin
  Timer.Interval:=2500;
  Timer_2.Interval:=5000;
end;

procedure TMenu.Global_TimerTimer(Sender: TObject);
begin
BuildMenu;
end;

            // ** Процедуры обработки нажатий на картинки ** //

procedure TMenu.Image1Click(Sender: TObject);
begin
Check:=Check+1;
One:=Memo1.Text;
Button_t_1:=true;
if Check<3 then
  begin
    Image1.Visible:=false;
    Memo1.Visible:=true;
  end;
end;

procedure TMenu.Image2Click(Sender: TObject);
begin
Check:=Check+1;
Two:=Memo2.Text;
Button_t_2:=true;
if Check<3 then
  begin
  Image2.Visible:=false;
  Memo2.Visible:=true;
  end;
end;

procedure TMenu.Image3Click(Sender: TObject);
begin
Check:=Check+1;
Three:=Memo3.Text;
Button_t_3:=true;
if Check<3 then
  begin
  Image3.Visible:=false;
  Memo3.Visible:=true;
  end;
end;

procedure TMenu.Image4Click(Sender: TObject);
begin
Check:=Check+1;
Four:=Memo4.Text;
Button_t_4:=true;
if Check<3 then
  begin
  Image4.Visible:=false;
  Memo4.Visible:=true;
  end;
end;

procedure TMenu.Image5Click(Sender: TObject);
begin
Check:=Check+1;
Five:=Memo5.Text;
Button_t_5:=true;
if Check<3 then
  begin
  Image5.Visible:=false;
  Memo5.Visible:=true;
  end;
end;

procedure TMenu.Image6Click(Sender: TObject);
begin
Check:=Check+1;
Six:=Memo6.Text;
Button_t_6:=true;
if Check<3 then
  begin
  Image6.Visible:=false;
  Memo6.Visible:=true;
  end;
end;

procedure TMenu.Image7Click(Sender: TObject);
begin
Check:=Check+1;
Seven:=Memo7.Text;
Button_t_7:=true;
if Check<3 then
  begin
  Image7.Visible:=false;
  Memo7.Visible:=true;
  end;
end;

procedure TMenu.Image8Click(Sender: TObject);
begin
Check:=Check+1;
Eight:=Memo8.Text;
Button_t_8:=true;
if Check<3 then
  begin
  Image8.Visible:=false;
  Memo8.Visible:=True;
  end;
end;

procedure TMenu.Image9Click(Sender: TObject);
begin
Check:=Check+1;
Nine:=Memo9.Text;
Button_t_9:=True;
  if Check<3 then
  begin
  Image9.Visible:=false;
  Memo9.Visible:=True;
  end;
end;

procedure TMenu.infoClick(Sender: TObject);
begin
ClearMenu;
// Visible Info Components
label_global.Text:='Информация';
ended.Text:='Вернуться в меню';
Information.Visible:=False;
Logo_T.Visible:=True;
ended.Visible:=True;
end;

procedure TMenu.Micro_TimerTimer(Sender: TObject);
begin
t:=t-1;
c_timer.Text:=inttostr(t);
end;

                      // ** Настройки приложения ** //

procedure TMenu.nick_sumbitClick(Sender: TObject);
begin
if Enter_Nick.Text='' then Enter_Nick.Text:='Test';
label_nick.Text:=Enter_Nick.Text;
Enter_Nick.Text:='';
if Speed_Mode.IsChecked then
  begin
  Timer.Interval:=2500;
  Timer_2.Interval:=5000;
  end;

if Expert_Mode.IsChecked then
  begin
  Timer.Interval:=1250;
  Timer_2.Interval:=2500;
  end;

if Standart_Mode.IsChecked then
  begin
  Timer.Interval:=5000;
  Timer_2.Interval:=10000;
  end;

if Time_30.IsChecked then
  begin
  Global_Timer.Interval:=30000;
  t:=30;
  Temp_t:=t;
  Custom_Time:=true;
  end;
if Time_60.IsChecked then
  begin
  Global_Timer.Interval:=60000;
  t:=60;
  Temp_t:=t;
  Custom_Time:=true;
  end;
if Time_90.IsChecked then
  begin
  Global_Timer.Interval:=90000;
  t:=90;
  Temp_t:=t;
  Custom_Time:=true;
  end;
if Time_120.IsChecked then
  begin
  Global_Timer.Interval:=120000;
  t:=120;
  Temp_t:=t;
  Custom_Time:=true;
  end;
end;

procedure TMenu.resultClick(Sender: TObject);
begin
ClearMenu;
// Visible Result Components
label_global.Text:='Результаты';
ended.Text:='Вернуться в меню';
list_result.Visible:=True;
ended.Visible:=True;
end;

procedure TMenu.settingClick(Sender: TObject);
begin
ClearMenu;
// Visible Setting Components
label_global.Text:='Настройки';
ended.Text:='Вернуться в меню';
ended.Visible:=True;
SettingBox.Visible:=True;
Saves.Visible:=True;
end;

procedure TMenu.Speed_ModeChange(Sender: TObject);
begin
  Timer.Interval:=2500;
  Timer_2.Interval:=5000;
end;

procedure TMenu.Standart_ModeChange(Sender: TObject);
begin
  Timer.Interval:=5000;
  Timer_2.Interval:=10000;
end;

procedure TMenu.start_testClick(Sender: TObject);
begin
t:=Temp_t;
ClearMenu;
Boot_flag:=True;
// Visible Testing Components
label_global.Text:='Тестирование';
ended.Text:='Завершить тестирование';
label_timer.Visible:=True;
c_timer.Visible:=True;
label_points.Visible:=True;
points.Visible:=True;
continue.Visible:=True;
ended.Visible:=True;
Check:=0;

for i:=1 to 9 do
(Menu.FindComponent('Image'+inttostr(i)) as TImage).Visible:=True;

// Logic application
Global_Timer.Enabled:=True;
Micro_Timer.Enabled:=True;
Timer.Enabled:=True;
points.Text:='0';
if Custom_Time=false then
begin
  t:=30;
  Temp_t:=t;
end;
Timer_2.Enabled:=True;

// Disable Img click
for i:=1 to 9 do
(Menu.FindComponent('Image'+inttostr(i)) as TImage).Enabled:=False;
end;

procedure TMenu.TimerTimer(Sender: TObject);
begin
Timer.Enabled:=False;

for i:=1 to 9 do
(Menu.FindComponent('Image'+inttostr(i)) as TImage).Enabled:=True;

for i:=1 to 9 do
(Menu.FindComponent('Image'+inttostr(i)) as TImage).Visible:=False;

for i:=1 to 9 do
(Menu.FindComponent('Memo'+inttostr(i)) as TMemo).Visible:=True;

for i:=1 to 9 do
(Menu.FindComponent('Memo'+inttostr(i)) as TMemo).Text:=IntToStr(Random(9));
end;

procedure TMenu.Timer_2Timer(Sender: TObject);
begin

for i:=1 to 9 do
(Menu.FindComponent('Image'+inttostr(i)) as TImage).Visible:=True;

for i:=1 to 9 do
(Menu.FindComponent('Memo'+inttostr(i)) as TMemo).Visible:=False;
end;

procedure TMenu.Time_120Change(Sender: TObject);
begin
  Global_Timer.Interval:=120000;
  t:=120;
  Temp_t:=t;
  Custom_Time:=true;
end;

procedure TMenu.Time_30Change(Sender: TObject);
begin
  Global_Timer.Interval:=30000;
  t:=30;
  Temp_t:=t;
  Custom_Time:=true;
end;

procedure TMenu.Time_60Change(Sender: TObject);
begin
  Global_Timer.Interval:=60000;
  t:=60;
  Temp_t:=t;
  Custom_Time:=true;
end;

procedure TMenu.Time_90Change(Sender: TObject);
begin
  Global_Timer.Interval:=90000;
  t:=90;
  Temp_t:=t;
  Custom_Time:=true;
end;

end.
