import 'package:flutter/material.dart';

class PageYontemTeknikBolum3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageYontemTeknikBolum3State();
  }
}

class _PageYontemTeknikBolum3State extends State {
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
                      Icons.account_tree,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Evrişimsel Sinir Ağları",
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
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "    Literatürde çok sayıda evrişimsel sinir ağı (CNN) mimari çeşidi vardır. Bunlar canlıların doğal görsel algı mekanizmalarından esinlenilerek geliştirilen mimarilerdir (Gu ve ark., 2018). CNN mimarileri, verilen veri girdileri sonucu oluşan katmanlarla kendisi özellikler çıkarır ve bu özellikler ile öğrenip sınıflandırma yapar. Ana hatlarıyla bakıldığında CNN mimarileri evrişim katmanı, havuzlama katmanı, aktivasyon katmanı, tam bağlantılı katman ve softmax katmanı olmak üzere beş katmandan oluşmaktadır (Köklü ve ark., 2021; Ahmed ve ark., 2020; Lin ve ark., 2018). Tarihsel süreçte bakıldığında LeNet-5 olarak adlandırılan çok katmanlı bir yapay sinir ağı el yazısı rakamları sınıflandırmak için geliştirildi. LeNet-5 mimarisi evrişimsel, havuzlama ve tam bağlantılı katmanlar olmak üzere 3 bölümden oluşur. Ayrıca Evrişim katmanı, girdilerin özellik temsillerini öğrenmeyi amaçlar. Diğer sinir ağları gibi, LeNet-5’te çoklu katmanlar ve geri yayılım algoritması ile eğitilebilir (Hecht-Nielsen, 1992; Gu ve ark, 2018). Bu süreçte büyük ve karmaşık verilerin eklenmesi ile yeni model arayışlarına girilmiştir. Alex Krizhevsky ve arkadaşları tarafından önerilen AlexNet mimarisi, LeNet-5’e benzer ancak daha derin bir yapıya sahiptir. Bu mimari birçok çalışmaya ve yeni yöntemlere öncülük etmiştir (Krizhevsky ve ark., 2012; Sakib ve ark., 2019; Gu ve ark., 2018; Hecht-Nielsen, 1992).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "GoogLeNet",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    GoogLeNet, Szegedy ve arkadaşları tarafından geliştirilmiştir. Mimarinin temel amacı düşük hesaplama maliyeti ile yüksek doğruluk elde etmektir. 'GoogLeNet' adıyla, ILSVRC 2014 yarışması için gönderilen bu mimari hem doğrulama hem de test verilerinde %6,67'lik bir hata oranı ile ilk 5’e girmiş ve yarışmada birinci olmuştur (Szegedy ve ark., 2015). Bu mimari 22 katman (havuzlama ile 27) derinliğine sahiptir. Ayrıca (1x1, 3x3 ve 5x5) filtreleme yöntemleri kullanılır. Daha önce kullanılan havuzlama sınıflandırmasına ek olarak doğrusal katman yapısına sahiptir (Szegedy ve ark., 2015; Lin ve ark., 2013).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "ResNet-50",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    He Kaiming ve arkadaşları tarafından 2015 yılında geliştirilen Residual Networks (ResNet) ilk uygulamada en derin katman sayısı olan ve 152 katmandan oluşan bir yapıya sahiptir (He ve ark., 2016; Simonyan ve Zisserman; 2014). ResNet-50, ResNet-152 ile kıyaslandığında daha küçük bir katman mimarisine sahiptir. ImageNet veri tabanından bir milyondan fazla görüntü üzerinde eğitilmiştir. ResNet-50 bir Evrişimli sinir ağıdır ve 50 katman derinliğindedir (He ve ark., 2016; Albawi ve ark., 2017). Sonuca ulaşmak için gereken değerleri bir katmandan diğer katmana tahmin yoluyla aktarmaktadır. Bu tahminlerin doğruluğunu artırmak için, bir ağda üretilen sonuçların kalitesini iyileştirmeyi sağlayan (SE) blok yapısı tercih edilmiştir (He ve ark., 2016; Hu ve ark., 2018).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "Shuffle-Net",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    Zhang Xiangyu ve arkadaşları tarafından önerilen ShuffleNet son teknoloji ürünü bir derin öğrnme mimarisidir. Mobil ve benzeri düşük özellikli cihazlarda yaygın olarak kullanılmaktadır. Düşük katmanlı ağ mimarileri için asıl zorluk belirli bir hesaplama bütçesi (FLOP) ile sınırlı sayıda özellik kanalı kullanmasıdır (Zhang ve ark., 2018). Daha derin ve daha büyük CNN’ler oluşturmak, büyük görselleri çözmede daha etkilidir ancak bu mimaride sınırlı hesaplama bütçelerine rağmen en iyi doğruluğu takip edip odaklanarak en iyi ve performanslı çözüm elde edilmesi amaçlanmıştır (Krizhevsky ve ark., 2012; Zhang ve ark., 2018).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "MobileNet-v2",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    Modelin karmaşıklığını ve derinliği büyütmek için 2017 yılında G. Howard ve arkadaşları tarafından önerilen verimli ve kullanılışlı bir mimaridir. Bu modelin temel fikri standart bir evrişimi ayrıştırmaktır. Ayrıca model boyutunu ayarlamak için genişlik ve çözünürlük çarpanı olarak iki parametre tasarlanmıştır (Howard ve ark., 2017). MobilNet’in mobil cihazlar ve gömülü sistemler gibi sınırlı kaynaklara aktarılması kolaydır. İşlem sayısını azaltarak doğruluğu korumak amaçlanmıştır (Sandler ve ark., 2018).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "ResNet-18",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    He Kaiming ve arkadaşları tarafından 2015 yılında geliştirilen Residual Networks (ResNet) ilk uygulamada en derin katman sayısı olan ve 152 katmandan oluşan bir yapıya sahiptir (He ve ark., 2016; Simonyan ve Zisserman, 2014). ResNet-18, ResNet-152 ile kıyaslandığında daha küçük bir katman mimarisine sahiptir (He ve ark., 2016). ResNet-18 bir evrişimli sinir ağıdır ve 18 katman derinliğindedir. Bünyesinde 17 evrişimli katman, tam bağlı bir katman ve sınıflandırmayı gerçekleştirmek için de ek bir softmax katmanı bulunmaktadır (He ve ark., 2016; Ramzan ve ark., 2020).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "InceptionV3",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    Szegedy ve arkadaşları tarafından 2014 yılında poli derinlik yolu ile yeni bir mimari önerilmiştir. Burada amaç hesaplama kaynaklarının verimliliğini artırmaktır (Szegedy ve ark., 2015; Szegedy ve ark., 2016). Inception, dört alt yol içermektedir. Her evrişimli katman ve yolun farklı işlem katmanları vardır. Bunlar (1x1 konvolüsyonlar, 3x3 konvolüsyonlar, 5x5 konvolüsyonlar ve 3x3 max havuzlama) (Szegedy ve ark., 2015) InceptionV3 42 katman olmasına rağmen katmanlar derin ve hesaplama maliyeti açısından GoogleNet’ten 2,5 kat daha yüksek ama çok daha verimlidir (Szegedy ve ark., 2016).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left:25.0,right: 25.0),
                      child: SizedBox(
                        height: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade600,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 1.0,bottom: 80.0),
                      child: ListTile(
                        title: Text(
                          "AlexNet",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        subtitle: Text(
                          "    Alex Krizhevsky, Ilya Sutskever ve Geoff Hinton tarafından geliştirilen AlexNet mimarisi, ilk CNN mimarileri arasında olup popülerliğini korumaktadır (Krizhevsky ve ark., 2012; Sakib, 2019). AlexNet 2012 yılında ILSVRC yarışmasında önemli performans sonuçları elde etmiştir. AlexNet'in beş evrişimli katmanı, üç tam bağlı katmanı ve bir tane de Softmax çıkış katmanı bulunmaktadır (Eckle ve Schmidt-Hieber, 2019). LeNet’e benzer bir yapıya sahip olan AlexNet mimarisi, evrişimsel katmanlar arasında en derin ve en önemli mimarilerden biridir (Sakib ve ark., 2019; LeCun ve ark., 1998).",
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
