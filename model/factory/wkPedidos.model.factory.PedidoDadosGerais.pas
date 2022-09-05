unit wkPedidos.model.factory.PedidoDadosGerais;

interface

  uses
    wkPedidos.model.interfaces.PedidosDadosGerais,
    wkPedidos.model.PedidosDadosGerais;

type
  TPedidosDadosGeraisFactory = class(TInterfacedObject,
    iPedidosDadosGeraisFactory)
  private
    FPedidosDadosGerais : iPedidosDadosGeraisModel;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iPedidosDadosGeraisFactory;
    function PedidosDadosGerais : iPedidosDadosGeraisModel;
  end;

implementation

{ TPedidosDadosGeraisFactory }

constructor TPedidosDadosGeraisFactory.Create;
begin
  FPedidosDadosGerais := TPedidosDadosGeraisModel.New;
end;

destructor TPedidosDadosGeraisFactory.Destroy;
begin

  inherited;
end;

class function TPedidosDadosGeraisFactory.New: iPedidosDadosGeraisFactory;
begin
  Result := Self.Create;
end;

function TPedidosDadosGeraisFactory.PedidosDadosGerais:
iPedidosDadosGeraisModel;
begin
  Result := FPedidosDadosGerais;
end;

end.
