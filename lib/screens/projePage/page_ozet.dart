import 'package:flutter/material.dart';

class PageOzet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageOzetState();
  }
}

class _PageOzetState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90.0,
          child: DrawerHeader(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan.shade600,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.auto_stories,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "ÖZET",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        "     Ülkemizde birçok mahsulde olduğu gibi fındığın üretimi ve son kullanıcıya ulaştırılmasındaki aşamaların çoğu ya manuel olarak ya da teknolojinin getirdiği yeniliklerden yoksun makine ekipmanları ile yapılmaktadır. Ürün kalitesinin veya türünün belirlenmesinde tahribatsız, hızlı ve güvenilir yöntemlerin başında, meyve, sebze ve hububat ürünlerinde de son yıllarda sıklıkla kullanılan derin öğrenme algoritmaları gelmektedir. Çalışmada; fındıkları derin öğrenme algoritmalarıyla sınıflandırmak, fındığın tarım ve ekonomideki değerinin sürdürülmesine katkı sunmak, ayrıştırma sırasında harcanan emeğin, zamanın ve maliyetin minimuma düşürülmesini sağlamak amaçlanmıştır. Fındık görüntüleri Giresun, Ordu ve Van fındık çeşitlerinden elde edilmiştir. Veri setinde 1.165 adet Giresun, 1.324 adet Ordu ve 1.138 adet Van çeşitlerine ait fındık görüntüsü bulunmaktadır. Derin öğrenme modellerinden GoogLeNet, ResNet-50, Shuffle-Net, MobileNet-v2, ResNet-18, InceptionV3 ve AlexNet kullanılmıştır. Toplam 3.627 adet özgün görüntü kullanılarak yapılan sınıflandırmalar sonucunda sırasıyla %99,59, %100, %99,72, %99,04, %99,72, %100, %100 sınıflandırma başarısı elde edilmiştir. Karşılaştırma yapıldığında GoogLeNet modeli ile %99,59 başarıya 158,03 dakikada ulaşılmışken, Inception-v3 modeliyle %100 başarıya ulaşmış ancak 265,42 dakika gibi bir süreye ihtiyaç duyulduğu görülmüştür. Bu durum, sınıflandırmada başarı faktörünün yanında süre faktörünün de önemli bir etkisi olduğunu ortaya koymaktadır. Derin öğrenme algoritmalarıyla yapılan fındık sınıflandırmasının, alanında uzman olmayan kişilerin hem endüstriyel hem de kişisel alanlarda işini kolaylaştıracaktır. Bundan sonra yapılacak bilimsel araştırmaların veri setindeki görüntü sayısının ve tür çeşitlerinin arttırılarak uygulanıp, yeni yöntemlerin geliştirilmesine katkı sunması önerilmektedir. Bu yöntemler aracılığıyla, farklı endüstri alanlarında kullanılmak üzere geliştirilecek ürün ve cihazların patenti alınarak, ülkemizin ekonomik katma değeri arttırılabilir.",
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 17,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 55.0),
                        child: ListTile(
                          title: Text(
                            "Anahtar Kelimeler:",
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
                              fontSize: 17,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          subtitle: Text(
                            "Derin Öğrenme, Fındık Sınıflandırma, Evrişimsel Sinir Ağları, Yapay Zeka.",
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
