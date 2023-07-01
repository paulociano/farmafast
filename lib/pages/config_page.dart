import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  late SharedPreferences storage;
  bool receberPushNotification = false;
  bool temaEscuro = false;
  TextEditingController nomeUsuarioController = TextEditingController();
  TextEditingController emailUsuarioController = TextEditingController();

  final chaveNomeUsuario = "CHAVE_NOME_USUARIO";
  final chaveEmailUsuario = "CHAVE_EMAIL_USUARIO";
  final chaveReceberNotificacoes = "CHAVE_RECEBER_NOTIFICACOES";
  final chaveTemaEscuro = "CHAVE_TEMA_ESCURO";

  @override
  void initState() {
    super.initState();
    carregarDados();
  }

  carregarDados() async {
    storage = await SharedPreferences.getInstance();
    nomeUsuarioController.text = storage.getString(chaveNomeUsuario) ?? "";
    emailUsuarioController.text = storage.getString(chaveEmailUsuario) ?? "";
    receberPushNotification =
        storage.getBool(chaveReceberNotificacoes) ?? false;
    temaEscuro = storage.getBool(chaveTemaEscuro) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, // Defina a cor desejada aqui
            ),
            elevation: 0.5,
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromARGB(255, 206, 0, 49),
            toolbarHeight: 80,
            centerTitle: true,
            title: const Text(
              'CONFIGURAÇÕES',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'CONTA',
                style: TextStyle(
                    color: Color.fromARGB(255, 206, 0, 49),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Nome de Usuário',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: nomeUsuarioController,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email de Usuário',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: emailUsuarioController,
                keyboardType: TextInputType.emailAddress,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'PREFERÊNCIAS',
                style: TextStyle(
                    color: Color.fromARGB(255, 206, 0, 49),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              SwitchListTile(
                title: const Text(
                  'Receber notificações Farmafast',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                value: receberPushNotification,
                activeColor: const Color.fromARGB(255, 206, 0, 49),
                onChanged: (bool value) {
                  setState(() {
                    receberPushNotification = value;
                  });
                },
              ),
              SwitchListTile(
                  title: const Text(
                    'Tema Escuro (Dark)',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  value: temaEscuro,
                  activeColor: const Color.fromARGB(255, 206, 0, 49),
                  onChanged: (bool value) {
                    setState(() {
                      temaEscuro = value;
                    });
                  }),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 206, 0, 49))),
                onPressed: () async {
                  await storage.setString(
                      chaveNomeUsuario, nomeUsuarioController.text);
                  await storage.setString(
                      chaveEmailUsuario, emailUsuarioController.text);
                  await storage.setBool(
                      chaveReceberNotificacoes, receberPushNotification);
                  await storage.setBool(chaveTemaEscuro, temaEscuro);
                  Get.back();
                },
                child: const Text('SALVAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
