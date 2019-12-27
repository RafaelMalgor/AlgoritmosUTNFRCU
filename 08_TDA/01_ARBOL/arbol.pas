unit arbol;

interface
type
  p_t_nodo=^t_nodo;

  t_clave=string;

  t_valor=integer;

  t_nodo=record
    clave:t_clave;
    valor:t_valor;
    SAD:p_t_nodo;
    SAI:p_t_nodo;
  end;

  p_t_lista_nodo=^t_lista_nodo;

  t_lista_nodo=record
    valor:p_t_nodo;
    siguiente:^t_lista_nodo;
  end;

  procedure Crear(var raiz:p_t_nodo);
  procedure Insertar(suba:p_t_nodo; clave:t_clave; valor:t_valor);
  procedure InOrden(nodo:p_t_nodo; lista:p_t_lista_nodo);

implementation
  procedure CrearNodo(nodo:p_t_nodo; clave:t_clave; valor:t_valor);
  begin
    new(nodo);
    nodo^.clave:=clave;
    nodo^.valor:=valor;
  end;

  procedure Insertar(suba:p_t_nodo; clave:t_clave; valor:t_valor);
  begin
    if(clave<suba^.clave) then
      if(suba^.SAI<>nil) then
        Insertar(suba^.SAI,clave,valor)
      else
        CrearNodo(suba^.SAI, clave, valor);
    if(clave>suba^.clave) then
      if(suba^.SAD<>nil) then
        Insertar(suba^.SAD, clave, valor)
      else
        CrearNodo(suba^.SAD, clave, valor);
  end;

  procedure Crear(var raiz:p_t_nodo);
  begin
    new(raiz);
  end;

  procedure InsertarLista(lista:p_t_lista_nodo; nodo:p_t_nodo);
  var
    aux:p_t_lista_nodo;
    nuevo_nodo:p_t_lista_nodo;
  begin
    aux:=lista;
    while(aux^.siguiente<>nil) do aux:=aux^.siguiente;
    new(nuevo_nodo);
    nuevo_nodo^.valor:=nodo;
    aux^.siguiente:=nuevo_nodo;
  end;

  procedure InOrden(nodo:p_t_nodo; lista:p_t_lista_nodo);
  begin
    InOrden(nodo^.SAI, lista);
    InsertarLista(lista, nodo);
    InOrden(nodo^.SAD, lista);
  end;

end.

