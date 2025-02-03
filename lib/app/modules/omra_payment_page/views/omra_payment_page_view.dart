import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/data/models/omra_room_model.dart';
import 'package:rihlatic/app/modules/omra_payment_page/controllers/omra_payment_page_controller.dart';
import 'package:rihlatic/app/modules/omra_payment_page/views/components/passenger_info_component.dart';
import '../../omra_booking_page/views/components/omra_card_component.dart';

class OmraPaymentPageView extends StatefulWidget {
  const OmraPaymentPageView({Key? key}) : super(key: key);

  @override
  _OmraPaymentPageViewState createState() => _OmraPaymentPageViewState();
}

class _OmraPaymentPageViewState extends State<OmraPaymentPageView> {
  late int packageId;
  late int departureId;
  late int adultsCount;
  late int childrenCount;
  late int infantsCount;

  late List<TextEditingController> adultFirstNameControllers;
  late List<TextEditingController> adultLastNameControllers;
  late List<TextEditingController> adultEmailControllers;
  late List<TextEditingController> adultPhoneControllers;
  late List<TextEditingController> adultPassportNumberControllers;
  late List<TextEditingController> adultPassportExpiryControllers;
  late List<TextEditingController> adultBirthDateControllers;

  late List<TextEditingController> childFirstNameControllers;
  late List<TextEditingController> childLastNameControllers;
  late List<TextEditingController> childEmailControllers;
  late List<TextEditingController> childPhoneControllers;
  late List<TextEditingController> childPassportNumberControllers;
  late List<TextEditingController> childPassportExpiryControllers;
  late List<TextEditingController> childBirthDateControllers;

  late List<TextEditingController> infantFirstNameControllers;
  late List<TextEditingController> infantLastNameControllers;
  late List<TextEditingController> infantEmailControllers;
  late List<TextEditingController> infantPhoneControllers;
  late List<TextEditingController> infantPassportNumberControllers;
  late List<TextEditingController> infantPassportExpiryControllers;
  late List<TextEditingController> infantBirthDateControllers;

  final OmraPaymentPageController controller =
      Get.find<OmraPaymentPageController>();

  @override
  void initState() {
    super.initState();

    final args = Get.arguments as Map<String, dynamic>;
    packageId = args['packageId'];
    departureId = args['departureId'];
    adultsCount = args['adultsCount'] ?? 0;
    childrenCount = args['childrenCount'] ?? 0;
    infantsCount = args['infantsCount'] ?? 0;

    adultFirstNameControllers =
        List.generate(adultsCount, (_) => TextEditingController());
    adultLastNameControllers =
        List.generate(adultsCount, (_) => TextEditingController());
    adultEmailControllers =
        List.generate(adultsCount, (_) => TextEditingController());
    adultPhoneControllers =
        List.generate(adultsCount, (_) => TextEditingController());
    adultPassportNumberControllers =
        List.generate(adultsCount, (_) => TextEditingController());
    adultPassportExpiryControllers =
        List.generate(adultsCount, (_) => TextEditingController());
    adultBirthDateControllers =
        List.generate(adultsCount, (_) => TextEditingController());

    childFirstNameControllers =
        List.generate(childrenCount, (_) => TextEditingController());
    childLastNameControllers =
        List.generate(childrenCount, (_) => TextEditingController());
    childEmailControllers =
        List.generate(childrenCount, (_) => TextEditingController());
    childPhoneControllers =
        List.generate(childrenCount, (_) => TextEditingController());
    childPassportNumberControllers =
        List.generate(childrenCount, (_) => TextEditingController());
    childPassportExpiryControllers =
        List.generate(childrenCount, (_) => TextEditingController());
    childBirthDateControllers =
        List.generate(childrenCount, (_) => TextEditingController());

    infantFirstNameControllers =
        List.generate(infantsCount, (_) => TextEditingController());
    infantLastNameControllers =
        List.generate(infantsCount, (_) => TextEditingController());
    infantEmailControllers =
        List.generate(infantsCount, (_) => TextEditingController());
    infantPhoneControllers =
        List.generate(infantsCount, (_) => TextEditingController());
    infantPassportNumberControllers =
        List.generate(infantsCount, (_) => TextEditingController());
    infantPassportExpiryControllers =
        List.generate(infantsCount, (_) => TextEditingController());
    infantBirthDateControllers =
        List.generate(infantsCount, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (final c in adultFirstNameControllers) c.dispose();
    for (final c in adultLastNameControllers) c.dispose();
    for (final c in adultEmailControllers) c.dispose();
    for (final c in adultPhoneControllers) c.dispose();
    for (final c in adultPassportNumberControllers) c.dispose();
    for (final c in adultPassportExpiryControllers) c.dispose();
    for (final c in adultBirthDateControllers) c.dispose();

    for (final c in childFirstNameControllers) c.dispose();
    for (final c in childLastNameControllers) c.dispose();
    for (final c in childEmailControllers) c.dispose();
    for (final c in childPhoneControllers) c.dispose();
    for (final c in childPassportNumberControllers) c.dispose();
    for (final c in childPassportExpiryControllers) c.dispose();
    for (final c in childBirthDateControllers) c.dispose();

    for (final c in infantFirstNameControllers) c.dispose();
    for (final c in infantLastNameControllers) c.dispose();
    for (final c in infantEmailControllers) c.dispose();
    for (final c in infantPhoneControllers) c.dispose();
    for (final c in infantPassportNumberControllers) c.dispose();
    for (final c in infantPassportExpiryControllers) c.dispose();
    for (final c in infantBirthDateControllers) c.dispose();

    super.dispose();
  }

  void _onBookPressed() {
    List<Map<String, dynamic>> adultPassengers =
        List.generate(adultsCount, (index) {
      return {
        "email": adultEmailControllers[index].text,
        "phone": adultPhoneControllers[index].text,
        "first_name": adultFirstNameControllers[index].text,
        "last_name": adultLastNameControllers[index].text,
        "sex": "male",
        "passport_nbr": adultPassportNumberControllers[index].text,
        "passport_expire_at": adultPassportExpiryControllers[index].text,
        "passport_scan": null,
        "birth_date": adultBirthDateControllers[index].text,
      };
    });

    List<Map<String, dynamic>> childPassengers =
        List.generate(childrenCount, (index) {
      return {
        "email": childEmailControllers[index].text,
        "phone": childPhoneControllers[index].text,
        "first_name": childFirstNameControllers[index].text,
        "last_name": childLastNameControllers[index].text,
        "sex": "female",
        "passport_nbr": childPassportNumberControllers[index].text,
        "passport_expire_at": childPassportExpiryControllers[index].text,
        "passport_scan": null,
        "birth_date": childBirthDateControllers[index].text,
      };
    });

    List<Map<String, dynamic>> infantPassengers =
        List.generate(infantsCount, (index) {
      return {
        "email": infantEmailControllers[index].text,
        "phone": infantPhoneControllers[index].text,
        "first_name": infantFirstNameControllers[index].text,
        "last_name": infantLastNameControllers[index].text,
        "sex": "male",
        "passport_nbr": infantPassportNumberControllers[index].text,
        "passport_expire_at": infantPassportExpiryControllers[index].text,
        "passport_scan": null,
        "birth_date": infantBirthDateControllers[index].text,
      };
    });

    Map<String, dynamic> roomData = {
      "room_id": 2,
      "reservation_type": "with room",
      "passengers": {
        "adults": adultPassengers,
        "children_without_bed": childPassengers,
      },
    };

    Map<String, dynamic> requestBody = {
      "omra_departure_id": departureId,
      "rooms": [roomData],
    };

    print("Request Body: ${jsonEncode(requestBody)}");

    OmraRoomModel roomModel = OmraRoomModel.fromJson(roomData);

    controller.bookOmra(
      departureId: 6,
      rooms: [roomModel],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
        backgroundColor: MainColors.backgroundColor(context),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OmraCardComponent(),
            ...List.generate(adultsCount, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${StringsAssetsConstants.adult} ${index + 1}',
                      style: TextStyles.mediumLabelTextStyle(context)
                          .copyWith(color: MainColors.textColor(context)!),
                    ),
                    PassengerInfoComponent(
                      firstNameController: adultFirstNameControllers[index],
                      lastNameController: adultLastNameControllers[index],
                      emailController: adultEmailControllers[index],
                      phoneController: adultPhoneControllers[index],
                      passportNumberController:
                          adultPassportNumberControllers[index],
                      passportExpiryController:
                          adultPassportExpiryControllers[index],
                      birthDateController: adultBirthDateControllers[index],
                    ),
                  ],
                ),
              );
            }),
            ...List.generate(childrenCount, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${StringsAssetsConstants.child} ${index + 1}',
                      style: TextStyles.mediumLabelTextStyle(context)
                          .copyWith(color: MainColors.textColor(context)!),
                    ),
                    PassengerInfoComponent(
                      firstNameController: childFirstNameControllers[index],
                      lastNameController: childLastNameControllers[index],
                      emailController: childEmailControllers[index],
                      phoneController: childPhoneControllers[index],
                      passportNumberController:
                          childPassportNumberControllers[index],
                      passportExpiryController:
                          childPassportExpiryControllers[index],
                      birthDateController: childBirthDateControllers[index],
                    ),
                  ],
                ),
              );
            }),
            ...List.generate(infantsCount, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${StringsAssetsConstants.infant} ${index + 1}',
                      style: TextStyles.mediumLabelTextStyle(context)
                          .copyWith(color: MainColors.textColor(context)!),
                    ),
                    PassengerInfoComponent(
                      firstNameController: infantFirstNameControllers[index],
                      lastNameController: infantLastNameControllers[index],
                      emailController: infantEmailControllers[index],
                      phoneController: infantPhoneControllers[index],
                      passportNumberController:
                          infantPassportNumberControllers[index],
                      passportExpiryController:
                          infantPassportExpiryControllers[index],
                      birthDateController: infantBirthDateControllers[index],
                    ),
                  ],
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PrimaryButtonComponent(
                onTap: _onBookPressed,
                text: StringsAssetsConstants.book,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
