unit Converter;

interface

uses
  ConverterTypes;

type
  TConverter = class
  private
  protected
    // ������ ����
    function GetCvtCompClassName: string; virtual; abstract; // ��ȯ ��� ������Ʈ Ŭ������
    function GetDescription: string; virtual;
    function ConvertSource(AProc, ASrc: string; var ADest: string): Boolean; virtual; abstract;
    function ConvertIntfSource(ASrc: string; var ADest: string): Boolean; virtual;
  public
    function Convert(AData: TConvertData): Integer; virtual;
    property Description: string read GetDescription;
  end;

implementation

{ TConverter }

function TConverter.Convert(AData: TConvertData): Integer;
begin
end;

function TConverter.ConvertIntfSource(ASrc: string; var ADest: string): Boolean;
begin
  Result := False;
end;

function TConverter.GetDescription: string;
begin
  Result := '';
end;

end.
