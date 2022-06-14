import 'package:cuaca/models/nft_model.dart';
import 'package:cuaca/services/nft_service.dart';
import 'package:flutter/cupertino.dart';

class NFTProvider extends ChangeNotifier {
  late NFTModel nftModel = NFTModel(); //
  final NFTService _NFTService = NFTService(); //

  tampilkanNFT() async {
    nftModel = await _NFTService.getNFT();
    notifyListeners();
  }

  NFTProvider() {
    tampilkanNFT();
  }
}
