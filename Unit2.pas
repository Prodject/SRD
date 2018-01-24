unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TTesting = class(TForm)
    Label1: TLabel;
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
    Ended: TButton;
    label_points: TLabel;
    points: TLabel;
    Continue: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Testing: TTesting;

implementation

{$R *.fmx}

uses Unit1;

end.
