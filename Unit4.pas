unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TSetting = class(TForm)
    Label_Setting: TLabel;
    GroupBox1: TGroupBox;
    Check_Inv: TCheckBox;
    Check_Exp: TCheckBox;
    Check_Res: TCheckBox;
    Saves: TButton;
    Ended: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Setting: TSetting;

implementation

{$R *.fmx}

end.
