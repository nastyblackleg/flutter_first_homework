import 'package:get/get.dart';

class AniamlController extends GetxController {
  var animal =
      'https://media.istockphoto.com/photos/group-of-pets-posing-around-a-border-collie-dog-cat-ferret-rabbit-picture-id1296353202'
          .obs;
  setAnimal(String url) => animal.value = url;
}
