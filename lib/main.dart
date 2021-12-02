import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fortune Telling',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: PageBody(),
      ),
    );
  }
}

class PageBody extends StatefulWidget {
  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  int fortuneLoveNo=1;
  int min1=0;
  int max1=5;
  int max2=10;
  int max3=15;

  List<String> yanitlar = [
    'Push to Get Youre Fortune',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  void randomLoveFortune() {
    fortuneLoveNo = Random().nextInt(5)+1;
  }
  void randomMoneyFortune() {
    fortuneLoveNo = Random().nextInt(5)+6;
  }
  void randomAdviceFortune() {
    fortuneLoveNo = Random().nextInt(5)+11;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: CircleAvatar(
              radius: 70,
              child: ClipRect(
                child: Image.asset('assets/images/fortune.png'),
              ),
            ),),

            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListTile(
                onTap: (){
                  setState(() {
                    randomLoveFortune();
                  });
                },
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                title: Text('Love Status',style: TextStyle(color: Colors.red),),
              ),
            ),
            Card(

              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListTile(
                onTap: (){
                  setState(() {
                    randomMoneyFortune();
                  });
                },
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
                title: Text('Money Status',style: TextStyle(color: Colors.green),),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListTile(
                onTap: (){
                  setState(() {
                    randomAdviceFortune();
                  });
                },
                leading: Icon(
                  Icons.auto_fix_normal_rounded,
                  color: Colors.blue,
                ),
                title: Text('Daily Advice',style: TextStyle(color: Colors.blue),),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Text(
                yanitlar[fortuneLoveNo],
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
