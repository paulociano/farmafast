import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Pedido {
  Pedido({
    required this.id,
    required this.titulo,
    required this.datahora,
    required this.imagem,
    required this.itens,
    required this.valor,
    this.isExpanded = false,
  });

  int id;
  String titulo;
  String datahora;
  bool isExpanded;
  String imagem;
  String valor;
  String itens;

  static List<Pedido> generateItems(int numero) {
    return List<Pedido>.generate(numero, (int index) {
      return Pedido(
        id: index + 1,
        titulo: 'Pedido #00${index + 1}',
        datahora:
            DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now()).toString(),
        imagem: 'assets/images/remedio1.jpg',
        itens: '1x Remédio $index',
        valor: 'Total: R\$4,30',
      );
    });
  }
}

class PedidosPage extends StatefulWidget {
  const PedidosPage({super.key});

  @override
  State<PedidosPage> createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage> {
  final List<Pedido> _pedidos = Pedido.generateItems(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ExpansionPanelList.radio(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() => _pedidos[index].isExpanded = !isExpanded);
                },
                children: _pedidos.map<ExpansionPanel>((Pedido pedido) {
                  return ExpansionPanelRadio(
                    value: pedido.id,
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: Text(pedido.titulo),
                      );
                    },
                    body: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text(pedido.datahora),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromARGB(255, 206, 0, 49),
                                          width: 3.0,
                                        ),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      height: 30,
                                      width: double.infinity,
                                      child: Card(
                                        elevation: 0,
                                        child: Center(
                                          child: Text(
                                            'ITENS DO PEDIDO',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 206, 0, 49),
                                                fontWeight: FontWeight.w700),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        pedido.imagem,
                                        height: 60,
                                      ),
                                      const VerticalDivider(),
                                      Text(pedido.itens)
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        pedido.imagem,
                                        height: 60,
                                      ),
                                      const VerticalDivider(),
                                      Text(pedido.itens)
                                    ],
                                  ),
                                  const Divider(),
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromARGB(255, 206, 0, 49),
                                          width: 3.0,
                                        ),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      height: 30,
                                      width: double.infinity,
                                      child: Card(
                                        elevation: 0,
                                        child: Center(
                                          child: Text(
                                            'PAGAMENTO',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 206, 0, 49),
                                                fontWeight: FontWeight.w700),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(pedido.valor),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
