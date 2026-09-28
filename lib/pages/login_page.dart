import 'package:farmafast/pages/general_page.dart';
import 'package:farmafast/pages/newuser_page.dart';
import 'package:farmafast/theme/farmafast_theme.dart';
import 'package:farmafast/widgets/ui.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  bool isObscureText = true;

  @override
  void dispose() {
    emailController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  void _entrar() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const GeneralPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppShell(
        maxWidth: 1040,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final wide = constraints.maxWidth >= 760;
            return Center(
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: wide
                      ? Row(
                          children: [
                            const Expanded(child: _BrandPanel()),
                            Expanded(child: _LoginForm(
                              emailController: emailController,
                              senhaController: senhaController,
                              obscureText: isObscureText,
                              onTogglePassword: () => setState(() => isObscureText = !isObscureText),
                              onLogin: _entrar,
                            )),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const _BrandPanel(compact: true),
                            _LoginForm(
                              emailController: emailController,
                              senhaController: senhaController,
                              obscureText: isObscureText,
                              onTogglePassword: () => setState(() => isObscureText = !isObscureText),
                              onLogin: _entrar,
                            ),
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BrandPanel extends StatelessWidget {
  final bool compact;
  const _BrandPanel({this.compact = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: compact ? 220 : 620),
      padding: EdgeInsets.all(compact ? 28 : 48),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [FarmaFastColors.primaryDark, FarmaFastColors.primary],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/logofarmafastbranco.png', height: compact ? 46 : 62),
          SizedBox(height: compact ? 20 : 34),
          Text(
            'Sua rotina de farmácia, mais simples.',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontSize: compact ? 28 : 38,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Descubra farmácias, organize receitas, acompanhe pedidos e centralize serviços em um único lugar.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white.withOpacity(.86),
              height: 1.55,
            ),
          ),
          if (!compact) ...[
            const SizedBox(height: 32),
            const Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _FeatureTag(icon: Icons.local_pharmacy_outlined, label: 'Farmácias'),
                _FeatureTag(icon: Icons.receipt_long_outlined, label: 'Receitas'),
                _FeatureTag(icon: Icons.notifications_none_rounded, label: 'Lembretes'),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _FeatureTag extends StatelessWidget {
  final IconData icon;
  final String label;
  const _FeatureTag({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.12),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white.withOpacity(.18)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 7),
          Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController senhaController;
  final bool obscureText;
  final VoidCallback onTogglePassword;
  final VoidCallback onLogin;

  const _LoginForm({
    required this.emailController,
    required this.senhaController,
    required this.obscureText,
    required this.onTogglePassword,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 420),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Bem-vindo de volta', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text(
              'Entre para continuar sua experiência no FarmaFast.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 28),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                prefixIcon: Icon(Icons.mail_outline_rounded),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: senhaController,
              obscureText: obscureText,
              onSubmitted: (_) => onLogin(),
              decoration: InputDecoration(
                labelText: 'Senha',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                suffixIcon: IconButton(
                  onPressed: onTogglePassword,
                  icon: Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: const Text('Esqueci minha senha')),
            ),
            const SizedBox(height: 12),
            FilledButton(onPressed: onLogin, child: const Text('Entrar')),
            const SizedBox(height: 18),
            Row(
              children: [
                const Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text('ou', style: Theme.of(context).textTheme.bodyMedium),
                ),
                const Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 18),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
              label: const Text('Continuar com Google'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ainda não tem conta? ', style: Theme.of(context).textTheme.bodyMedium),
                TextButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const NewUserPage()),
                  ),
                  child: const Text('Criar conta'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
