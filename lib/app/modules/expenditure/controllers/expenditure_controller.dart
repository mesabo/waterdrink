import 'package:get/get.dart';
import 'package:waterdrink/app/data/models/expenditure_model.dart';

import 'category_datasource.dart';

class ExpenditureController extends GetxController {
  var prodDataSource = ExpenditureDataSource(expendditure: [
    Expenditure(
        id: '1',
        name: 'Apple',
        amount: 2000,
        category: 'Nourriture',
        enable: 'false',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '2',
        name: 'Banana',
        amount: 1000,
        category: 'Carburant',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '3',
        name: 'Grapes',
        amount: 500,
        category: 'Communication',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '4',
        name: 'Orange',
        amount: 2100,
        category: "Frais de route",
        enable: 'false',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '5',
        name: 'watermelon',
        amount: 2700,
        category: "Matière première",
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '6',
        name: 'Pineapple',
        amount: 1500,
        category: 'Réparation',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '5',
        name: 'Salaire',
        amount: 2700,
        category: "Matière première",
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '6',
        name: 'Pineapple',
        amount: 1500,
        category: 'Autre depense',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
  ]);
/// `Expenditures list`
  List expenditures = <Expenditure>[
    Expenditure(
        id: '1',
        name: 'Apple',
        amount: 2000,
        category: 'Nourriture',
        enable: 'false',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '2',
        name: 'Banana',
        amount: 1000,
        category: 'Carburant',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '3',
        name: 'Grapes',
        amount: 500,
        category: 'Communication',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '4',
        name: 'Orange',
        amount: 2100,
        category: "Frais de route",
        enable: 'false',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '5',
        name: 'watermelon',
        amount: 2700,
        category: "Matière première",
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '6',
        name: 'Pineapple',
        amount: 1500,
        category: 'Réparation',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '5',
        name: 'Salaire',
        amount: 2700,
        category: "Matière première",
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Expenditure(
        id: '6',
        name: 'Pineapple',
        amount: 1500,
        category: 'Autre depense',
        enable: 'true',
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
  ].obs;
  @override
  void onInit() {
    prodDataSource = ExpenditureDataSource(expendditure: [
      Expenditure(
          id: '1',
          name: 'Apple',
          amount: 2000,
          category: 'Nourriture',
          enable: 'false',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '2',
          name: 'Banana',
          amount: 1000,
          category: 'Carburant',
          enable: 'true',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '3',
          name: 'Grapes',
          amount: 500,
          category: 'Communication',
          enable: 'true',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '4',
          name: 'Orange',
          amount: 2100,
          category: "Frais de route",
          enable: 'false',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '5',
          name: 'watermelon',
          amount: 2700,
          category: "Matière première",
          enable: 'true',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '6',
          name: 'Pineapple',
          amount: 1500,
          category: 'Réparation',
          enable: 'true',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '5',
          name: 'Salaire',
          amount: 2700,
          category: "Matière première",
          enable: 'true',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Expenditure(
          id: '6',
          name: 'Pineapple',
          amount: 1500,
          category: 'Autre depense',
          enable: 'true',
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
    ]);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
