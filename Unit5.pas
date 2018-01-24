unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TInformation = class(TForm)
    Label_Inf: TLabel;
    Ended: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Information: TInformation;

implementation

{$R *.fmx}

end.
