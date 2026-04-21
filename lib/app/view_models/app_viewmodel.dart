import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../features/user_home_flow/view_models/parent_viewmodel.dart';

class AppViewModels {
  static final List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<ParentScreenProvider>(
      create: (_) => ParentScreenProvider(),
    ),
  ];
}