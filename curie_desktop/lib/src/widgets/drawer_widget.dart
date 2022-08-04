import 'package:curie_desktop/src/images.dart';
import 'package:flutter/material.dart';

Drawer drawerDefaultDesing({
  required BuildContext context,
}) {
  final ScrollController scrollController = ScrollController();

  return Drawer(
    child: Scrollbar(
        child: SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 240.75,
                      maxWidth: 240.75,
                      minHeight: 56.5,
                      maxHeight: 56.5,
                    ),
                    child: Image.asset(
                      Images.logo,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   Visão Geral',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.bar_chart,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // DashboardScreen.routeName,
                    // );
                  },
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   Funcionários',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.groups,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // FuncionariosScreen.routeName,
                    // );
                  },
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   Empresas',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.business,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // EmpresasScreen.routeName,
                    // );
                  },
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   Motoristas',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.local_shipping,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // MotoristasScreen.routeName,
                    // );
                  },
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   PAC',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.menu_book,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // PacScreen.routeName,
                    // );
                  },
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   POP',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.list_alt,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // PopScreen.routeName,
                    // );
                  },
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  label: Text(
                    '   Roles',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.security,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // RolesScreen.routeName,
                    // );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.fact_check),
              ),
              expandedAlignment: Alignment.bottomLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              childrenPadding: const EdgeInsets.only(left: 36.0),
              title: const Text('Checklist'),
              children: <Widget>[
                TextButton.icon(
                  label: Text(
                    'Planilhas',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // ChecklistPlanilhasScreen.routeName,
                    // );
                  },
                ),
                TextButton.icon(
                  label: Text(
                    'Inspeções',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // ChecklistInspecoesScreen.routeName,
                    // );
                  },
                ),
                TextButton.icon(
                  label: Text(
                    'Solicitações de Serviços',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // SolicitacaoServicoScreen.routeName,
                    // );
                  },
                ),
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.fact_check),
              ),
              expandedAlignment: Alignment.bottomLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              childrenPadding: const EdgeInsets.only(left: 36.0),
              title: const Text('Matéria Prima'),
              children: <Widget>[
                TextButton.icon(
                  label: Text(
                    'Rota',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // RotaScreen.routeName,
                    // );
                  },
                ),
                TextButton.icon(
                  label: Text(
                    'Reserva de Rota',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // ReservaRotaContent.routeName,
                    // );
                  },
                ),
                TextButton.icon(
                  label: Text(
                    'Inspeções',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    //   context,
                    //   DashboardScreen.routeName,
                    // );
                  },
                ),
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.fact_check),
              ),
              expandedAlignment: Alignment.bottomLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              childrenPadding: const EdgeInsets.only(left: 36.0),
              title: const Text('Produção'),
              children: <Widget>[
                TextButton.icon(
                  label: Text(
                    'Lote',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  icon: Icon(
                    Icons.functions,
                    color: Theme.of(context).textTheme.subtitle1!.color,
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    // context,
                    // LoteScreen.routeName,
                    // );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    )),
  );
}
