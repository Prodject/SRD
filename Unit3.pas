unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox;

type
  TResult = class(TForm)
    Label1: TLabel;
    List_Result: TListBox;
    Ended: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Result: TResult;

implementation

{$R *.fmx}

end.
