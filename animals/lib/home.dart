import 'package:animals/detail.dart';
import 'package:animals/manimals.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State with SingleTickerProviderStateMixin{

  TabController _tabcontroller;

  int currentIndex = 0;
  List<AnimalsModel> listImageMamalia = [
    AnimalsModel(img: 'assets/mamalia/domba.png', name: 'Domba', desc: 'Domba adalah salah satu jenis hewan pertama yang dijinakkan untuk keperluan agrikultural dan dipelihara untuk dimanfaatkan rambut (disebut wol), daging,dan susunya. Jenis domba yang paling dikenal orang adalah domba peliharaan.'), 
    AnimalsModel(img: 'assets/mamalia/gajah.png', name: 'Gajah', desc: 'Gajah merupakan hewan herbivora yang dapat ditemui di berbagai habitat, seperti sabana, hutan, gurun, dan rawa-rawa. Mereka cenderung berada didekat air. Hewan-hewan lain cenderung menjaga jarak dari gajah, dan predator-predator seperti singa, harimau. hyena, dan anjing liar. Gajah betina cenderung hidup dalam kelompok keluarga, yang terdiri dari satu betina dengan anak-anaknya atau beberapa betina yang berkerabat beserta anak mereka.'),
    AnimalsModel(img: 'assets/mamalia/hashki.png', name: 'Hashki', desc: 'Anjing adalah mamalia yang telah mengalami domestikasi dari serigala sejak 15.000 tahun yang lalu, berdasarkan bukti genetik berupa penemuan fosil dan tes DNA.Anjing telah berkembang menjadi ratusan ras dengan berbagai macam variasi. Warna rambut anjing bisa beraneka ragam, mulai dari putih sampai hitam, juga merah, abu-abu, dan cokelat.'),
    AnimalsModel(img: 'assets/mamalia/jerapah.png', name: 'Jerapah', desc: 'Jerapah adalah mamalia berkuku genap endemik Afrika dan merupakan spesies hewan tertinggi yang hidup di darat. Jerapah jantan dapat mencapai tinggi 4,8 sampai 5,5 meter dan memiliki berat yang dapat mencapai 1.360 kilogram. Jerapah betina biasanya sedikit lebih pendek dan lebih ringan.'),
    AnimalsModel(img: 'assets/mamalia/kelinci.png', name: 'Kelinci', desc: 'Kelinci adalah hewan mamalia dari famili Leporidae, yang dapat ditemukan di banyak bagian bumi. Kelinci berkembangbiak dengan cara beranak yang disebut vivipar. Dulunya, hewan ini adalah hewan liar yang hidup di Afrika hingga ke daratan Eropa. Saat ini sejumlah jenis kelinci menjadi hewan peliharaan dan hewan pedaging. Beberapa jenis kelinci sebagai hewan pedaging juga ada yang dijadikan hewan peliharaan.'),
    AnimalsModel(img: 'assets/mamalia/koala.png', name: 'Koala', desc: 'Koala (Phascolarctos cinereus) adalah salah satu binatang berkantung (marsupial) khas dari Australiadan merupakan wakil satu-satunya dari keluarga Phascolarctidae. Koala sebenarnya minum air tetapisangat jarang karena makanannya, daun ekaliptus, sudah mengandung cukup air sehingga koala tidak perlu turun dari pohon untuk minum.'),
    AnimalsModel(img: 'assets/mamalia/kucing.png', name: 'Kucing', desc: 'Kucing atau Felis silvestris catus adalah sejenis mamalia karnivora dari keluarga Felidae. Kata "kucing" biasanya merujuk kepada "kucing" yang telah dijinakkan, tetapi bisa juga merujuk kepada "kucing besar" seperti singa dan harimau. Jumlah kucing ras hanyalah 1% dari seluruh kucing di dunia, sisanya adalah kucing dengan keturunan campuran seperti kucing liar atau kucing kampung.'),
    AnimalsModel(img: 'assets/mamalia/monyet.png', name: 'Monyet', desc: 'Monyet adalah istilah untuk semua anggota primata yang bukan kera, baik yang tinggal di Dunia Lama maupun Dunia Baru. Hingga saat ini ada 264 jenis monyet yang hidup di dunia. Tidak seperti kera, monyet biasanya berekor dan ukurannyan lebih kecil.'),
  ];

  List<AnimalsModel> listImageReptile = [
    AnimalsModel(img: 'assets/reptile/Anole.png', name: 'Anole', desc: 'Anole atau Anolis carolinensis ini merupakan jenis kadal yang berasal dari Tenggara Amerika Serikat. Hewan reptil ini biasa disebut atau dikenal dengan anole tenggorokan merah ataupun anole hijau.'), 
    AnimalsModel(img: 'assets/reptile/buaya.png', name: 'Buaya', desc: 'Buaya adalah reptil bertubuh besar yang hidup di air. Secara ilmiah, buaya meliputi seluruh spesies anggota suku Crocodylidae, termasuk pula buaya sepit. Meski demikian nama ini dapat pula dikenakan secara longgar untuk menyebut‘buaya’ aligator, kaiman dan gavial; yakni kerabat-kerabat buaya yang berlainan suku.'),
    AnimalsModel(img: 'assets/reptile/Bunglon.png', name: 'Bunglon', desc: 'Bunglon yang bernama latin bronchocela jubata, merupakan sebutan khusus untuk jenis reptil yang memiliki kemampuan mengubah warna kulitnya. Binatang yang umumnya berwarna hijau dan cokelat ini mempunyai habitat hidup di pohon dan juga di semak belukar.'),
    AnimalsModel(img: 'assets/reptile/Komodo.png', name: 'Komodo', desc: 'Komodo, atau juga disebut biawak komodo, adalah spesies biawak besar yang terdapat di Pulau Komodo, Rinca, Flores, Gili Motang, dan Gili Dasami di Provinsi Nusa Tenggara Timur, Indonesia. Biawak ini oleh penduduk asli pulau Komodo juga disebut dengan nama setempat ora.'),
    AnimalsModel(img: 'assets/reptile/kura.png', name: 'Kura-kura', desc: 'Kura-kura adalah hewan bersisik berkaki empat yang termasuk golongan reptil. Bangsa hewan yang disebut Testudinata ini khas dan mudah dikenali dengan adanya ‘rumah’ atau batok yang keras dan kaku. Batok kura-kura ini terdiri dari dua bagian.'), 
    AnimalsModel(img: 'assets/reptile/Penyu.png', name: 'Penyu', desc: 'Penyu adalah kura-kura laut yang ditemukan di semua samudra di dunia. Menurut data para ilmuwan, penyu sudah ada sejak akhir zaman Jura atau seusia dengan dinosaurus. Pada masa itu Archelon, yang berukuran panjang badan enam meter, dan Cimochelys telah berenang di laut purba seperti penyu masa kini.'),
    AnimalsModel(img: 'assets/reptile/Tokek.png', name: 'Tokek', desc: 'Tokek adalah nama umum untuk menyebut cecak besar atau jenis-jenis kadal dari suku Gekkonidae. Namun istilah tokek secara sempit biasa merujuk pada jenis-jenis dari marga Gekko, suku Gekkonidae. Sedangkan tokek dalam pemahaman orang awam merujuk kepada tokek rumah (Gekko gecko), yang memiliki agihan yang luas dan sangat sering dijumpai karena hidup di lingkungan manusia.'),
    AnimalsModel(img: 'assets/reptile/ular.png', name: 'Ular', desc: 'Ular adalah kelompok reptilia tidak berkaki dan bertubuh panjang yang tersebar luas di dunia. Secara ilmiah, semua jenis ular dikelompokkan dalam satu sub-ordo, yaitu Serpentes dan juga merupakan anggota dari ordo Squamata (reptilia bersisik) bersama dengan kadal. Akan tetapi, ular (Serpentes) sendiri diklasifikasikan pada cabang klade (Ophidia), yaitu segolongan reptilia-reptilia dengan atau tanpa kaki, bertubuh panjang, dan memiliki fisiologis yang sangat berbeda dengan kadal.'),
  ];

  List<AnimalsModel> listImagePisces = [
    AnimalsModel(img: 'assets/pisces/cupang.png', name: 'Cupang', desc: 'Cupang, ikan laga, atau ikan adu siam adalah ikan air tawar yang habitat asalnya adalah beberapa negara di Asia Tenggara, antara lain Indonesia, Thailand, Malaysia, Brunei Darussalam, Singapura, Vietnam, dan Indonesia. '), 
    AnimalsModel(img: 'assets/pisces/koi.png', name: 'Koi', desc: 'Koi atau secara spesifiknya koi berasal dari bahasa Jepang yang berarti ikan karper. Lebih spesifik lagi merujuk pada nishikigoi, yang kurang lebih bermakna ikan karper yang bersulam emas atau perak. Di Jepang, koi menjadi semacam simbol cinta dan persahabatan.'),
    AnimalsModel(img: 'assets/pisces/koioren.png', name: 'Komet', desc: 'Ikan komet memiliki nama latin Carrasius auratus. Ikan komet merupakan salah satu jenis ikan hias air tawar yang paling populer di masyarakat Indonesia. Corak dan warnanya sangat mirip dengan ikan mas.'),
    AnimalsModel(img: 'assets/pisces/koiperutbesar.png', name: 'Koki Mas', desc: 'Ikan mas koki atau lebih sering disebut sebagai ikan mas dengan nama ilmiah Carassius Auratus Auratus merupakan ikan air tawar yang berasal dari familia Cyprinidae serta Ordo Cypriniformes.'),
    AnimalsModel(img: 'assets/pisces/orenhitam.png', name: 'Molly', desc: 'Ikan molly adalah salah satu jenis ikan hias air tawar yang memangsa ikan lainnya alias omnivora. Namun, ikan ini hanya memangsa ikan yang berukuran lebih kecil darinya. Maka dari itu, kamu bisa mencampur ikan molly dengan ikan hias lain yang berukuran lebih besar dalam satu akuarium'), 
    AnimalsModel(img: 'assets/pisces/putihkecil.png', name: 'Guppy', desc: 'Guppy, ikan seribu, ikan cere, atau suwadakar, adalah salah satu spesies ikan hias air tawar yang paling populer di dunia. Karena mudahnya menyesuaikan diri dan beranak-pinak, di banyak tempat di Indonesia ikan ini telah menjadi ikan liar yang memenuhi parit-parit dan selokan.'),
    AnimalsModel(img: 'assets/pisces/silver.png', name: 'Platy', desc: 'Ikan yang merupakan keluarga spesies Poecillia ini merupakakan ikan yang asalnya dari perairan Amerika Utara, Tengah, dan Selatan. Ikan ini hidup pada hilir sungai yang airnya mengalir ke samudera atlantik. Meskipun begitu, ikan cantik yang satu ini sangat mudah beradaptasi dengan lingkungan barunya, inilah salah satu alasan kenapa ikan hias yang satu ini sangat mudah ditemukai di indonesia yang alamnya cenderung berbeda. Karena sifatnya yang mudah mengikuti lingkungan tentunya ikan hias kecil ini tidak akan mudah mati jika kamu ingin memeliharanya.'),
    AnimalsModel(img: 'assets/pisces/silverhitam.png', name: 'Neon Tetra', desc: 'Ikan Neon Tetra berassal dari amerika latin, tepatnya disungai amazon. ikan ini memiliki variasi warna biru terang dan putih perak yang menghiasi tubuhnya yang kecil. ikan ini lebih menarik dipelihara dalam jumlah yang banyak karena sifatnya yang berkoloni atau bergerombol. Ikan Neon Tetra merupakan ikan yang bersifat omnivora.selain itu, jenis ikan ini memiliki beberapa keluarga termasuk neon tetra albino, black neon, neon blue eyes, dan fire neon.'),
  ];

  List<AnimalsModel> listImageAmfibi = [
    AnimalsModel(img: 'assets/amfibi/axolotl.png', name: 'Axolotl', desc: 'Axolotl atau salamander Meksiko adalah salamander neotenik yang berhubungan dekat dengan salamander harimau. Larva spesies ini tidak mengalami metamorfosis, sehingga axolotl dewasa tetap bersifat akuatik dan memiliki insang. Spesies ini juga disebut ajolote [ɑːhɒˈlɔte].'), 
    AnimalsModel(img: 'assets/amfibi/cm.jpeg', name: 'Common Mudpuppy', desc: '(Necturus maculosus) adalah spesies salamander dalam genus Necturus.Mereka menjalani gaya hidup yang sepenuhnya akuatik di beberapa bagian Amerika Utara di danau, sungai, dan kolam. Mereka mengalami paedomorfosis dan mempertahankan insang luarnya. Mereka biasanya berwarna coklat berkarat dan dapat tumbuh dengan panjang rata-rata 13 inci (330 mm).'),
    AnimalsModel(img: 'assets/amfibi/katakberudu.png', name: 'Katak Berudu', desc: 'Katak atau di sebut tama pemakan serangga yang hidup di air tawar atau di daratan, berkulit licin, berwarna hijau atau merah kecokelat-cokelatan, kaki belakang lebih panjang, pandai melompat dan berenang; sedangkan kodok, nama lain dari bangkong (bahasa Inggris: toad), memiliki kulit yang kasar dan berbintil-bintil atau berbingkul-bingkul, kerap kali kering, dan kaki belakangnya sering pendek saja, sehingga kebanyakan bangsa kodok kurang pandai melompat jauh.'),
    AnimalsModel(img: 'assets/amfibi/katakpohon.png', name: 'Katak Pohon', desc: 'Katak-pohon bergaris adalah nama sejenis kodok yang biasa hidup di pohon. Kodok ini juga disebut dalam beberapa bahasa daerah sebagai gedindang atau cekay (Sd.), perkak (Bms.), bencok (Jw.), dan lain-lain. Dalam bahasa Inggris kodok ini dikenal sebagai Striped Tree Frog, Four-lined Tree Frog, Common Tree Frog, Banana Frog dan beberapa nama lainnya. Nama ilmiahnya adalah Polypedates leucomystax.'),
    AnimalsModel(img: 'assets/amfibi/kataksawah.png', name: 'Katak Sawah', desc: 'Kodok sawah ialah sejenis katak yang banyak hidup di sawah-sawah, rawa, parit dan selokan, sampai ke rawa-rawa bakau. Nama ilmiahnya Fejervarya cancrivora, dan dalam bahasa Inggris dikenal sebagai marsh frog, rice-field frog atau crab-eating frog; nama yang terakhir diberikan karena kegemaran kodok ini memangsa ketam sawah (Lat. cancer ketam, vorare makan, memangsa). Orang Jawa menyebutnya sebagai kodok ijo, karena banyak juga di antaranya yang berwarna kehijauan. Nama daerah yang lain di antaranya adalah kodok cina dan bangkong dingdang.'), 
    AnimalsModel(img: 'assets/amfibi/purplefrog.png', name: 'Purple Frog', desc: 'Dilansir National Geographic, para ilmuwan menyebut spesies baru katak ungu (Purple Frog) ini dengan sebutan Bhupaty. Jenis amfibi ini memang tampak aneh dan merupakan hasil dari evolusi bertahun-tahun yang tak terhitung jumlahnya. Mata kecil, moncong panjang, dan tungkai pendek yang keras memungkinkan katak jenis ini menghabiskan hampir seluruh hidupnya di bawah tanah.'),
    AnimalsModel(img: 'assets/amfibi/salamander.png', name: 'Salamander', desc: 'Salamander dikenal dengan bentuk tubuhnya yang mirip seperti cicak.Sama halnya dengan cicak, salamander akan mematahkan sebagian tubuhnya jika merasa terancam. Jenis hewan amfibi yang satu ini termasuk ke dalam anggota kelompok hewan ovovivipar, dimana hewan yang dapat melahirkan dan juga menyusui. Salamander juga lebih sering menghabiskan waktunya di dalam air.'),
    AnimalsModel(img: 'assets/amfibi/sesilia.png', name: 'Sesilia', desc: 'Sesilia, Gymnophiona atau Apoda adalah ordo amfibia yang bertubuh serupa cacing besar atau ular. Hewan ini amat langka. Selain karena hanya ditemukan di daerah hutan-hutan yang masih baik, sesilia hidup di dalam tanah yang gembur, di dekat sungai atau rawa-rawa; sehingga jarang sekali didapati oleh manusia.'),
  ];

  List<AnimalsModel> listImageAves = [
    AnimalsModel(img: 'assets/aves/beohitam.png', name: 'Jalak', desc: 'Jalak adalah nama sekelompok burung pengicau dari suku Sturnidae. Burung yang umumnya berukuran sedang (sekitar 20–25 cm), gagah, dengan paruh yang kuat, tajam dan lurus. Berkaki panjang sebanding dengan tubuhnya. Bersuara ribut, dan berceloteh keras, kadang-kadang meniru suara burung lainnya. Di alam, burung ini kebanyakan bersarang di lubang-lubang pohon. Burung jalak relatif mudah dijinakkan. Dalam kandang burung ini sangat aktif bergerak dan berkicau. Karena itu penggemar burung kicau memelihara burung ini untuk melatih jenis burung kicau lain.'), 
    AnimalsModel(img: 'assets/aves/beomerah.png', name: 'Macaw', desc: 'Macaw merupakan burung dari tribus arini yang merupakan anggota keluarga Psittacidae. Dari sekian banyak anggota psittacidae, enam dikategorikan sebagai macaw yakni; Ara, Anodorhynchus, Cyanopsitta, Primolius, Orthopsittaca, dan Diopsittaca. Pada awalnya anggota genus Primolius sempat dimasukkan dalam Propyrrhura, tetapi menurut aturan ICZN lebih tepat masuk dalam Psittacidae. macaw merupakan burung asli dari Meksiko, Amerika Tengah, Amerika Selatan dan tadinya Karibia. Kebanyakan spesies tinggal di hutan, khususnya hutan.'),
    AnimalsModel(img: 'assets/aves/cendrawasih.png', name: 'Cendrawasih', desc: 'Burung Cenderawasih merupakan anggota famili Paradisaeidae dari ordo Passeriformes. Mereka ditemukan di Indonesia Timur Papua, Papua Nugini, pulau-pulau selat Torres, dan Australia timur. Burung anggota keluarga ini dikenal karena bulu burung jantan pada banyak jenisnya, terutama bulu yang sangat memanjang dan rumit yang tumbuh dari paruh, sayap atau kepalanya. Ukuran burung Cenderawasih mulai dari Cenderawasih raja pada 50 gram dan 15 cm'),
    AnimalsModel(img: 'assets/aves/elang.png', name: 'Elang', desc: 'Elang merupakan salah satu dari hewan yang terdapat di seluruh Indonesia. Dalam Bahasa inggris, eagle atau elang merujuk pada burung pemangsa berukuran besar dari suku Accipitridae terutama genus Aquila. Sementara itu burung-burung pemangsa yang lebih kecil dalam Daftar Burung Indonesia nomor 2 disebut Elang-alap.'),
    AnimalsModel(img: 'assets/aves/kktuakuning.png', name: 'Kakak Tua Putih', desc: 'Kakatua putih atau dalam nama ilmiahnya Cacatua alba adalah burung berukuran sedang, dengan panjang sekitar 46 cm, dari genus Cacatua. Burung ini hampir semua bulunya berwarna putih. Di kepalanya terdapat jambul besar berwarna putih yang dapat ditegakkan. Bulu-bulu terbang dan ekornya berwarna kuning. Burung betina serupa dengan burung jantan. Endemik Indonesia, daerah sebaran kakatua putih adalah di kepulauan Maluku Utara. Jenis ini hanya ditemukan di hutan primer dan sekunder pulau Halmahera, Ternate.'), 
    AnimalsModel(img: 'assets/aves/lovebird.png', name: 'Lovebird', desc: 'Lovebird adalah satu burung dari sembilan jenis spesies genus Agapornis. Mereka adalah burung yang berukuran kecil, antara 13 sampai 17 cm dengan berat 40 hingga 60 gram, dan bersifat sosial. Delapan dari spesies ini berasal dari Afrika, sementara spesies lovebird kepala abu-abu berasal dari Madagaskar. Nama mereka berasal dari kelakuan yang umum diamati bahwa sepasang burung cinta akan duduk berdekatan dan saling menyayangi satu sama lain. Sifat pasangan burung cinta adalah monogami di alam bebas.'),
    AnimalsModel(img: 'assets/aves/merak.png', name: 'Merak', desc: 'Merak adalah tiga spesies burung dalam genus Pavo dan Afropavo dari familia ayam hutan (pheasant), Phasianidae. Burung jantannya memiliki bulu ekor yang indah yang dapat dikembangkan untuk menarik perhatian merak betina. Ketiga spesies tersebut adalah: Merak India, Pavo cristatus Merak Hijau, Pavo muticus Merak Kongo, Afropavo congensis'),
    AnimalsModel(img: 'assets/aves/murai.png', name: 'Murai Batu', desc: 'Kucica Hitam (Copsychus malabaricus) juga dikenal sebagai Murai Batu termasuk ke dalam famili Muscicapidae atau burung cacing. Tersebar di seluruh pulau Sumatra, Semenanjung Malaysia, dan sebagian pulau Jawa. Beberapa pakar menganggap ras dari Kalimantan Utara Murai alis putih (Copsychus malabaricus stricklandii) sebagai spesies tersendiri. Di habitat aslinya Kucica Hutan cenderung memilih hutan alam yang rapat atau hutan sekunder. Kucica Hutan merupakan kelompok burung yang dikenal sebagai teritorial dan sangat kuat dalam mempertahankan wilayahnya (Thruses).'),
  ];

  @override
  void initState() {
    _tabcontroller = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            primary: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Stack(
                children: [
                  Positioned(
                    left: 24.0,
                    bottom: 72.0,
                    child: Text(
                      'Animals',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.teal.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.only(left: 25.0, right: 25.0),
              controller: _tabcontroller,
              labelColor: Colors.teal,
              unselectedLabelColor: Colors.blueGrey.shade300,
              indicatorColor: Colors.teal,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal
              ),
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                  print('$currentIndex');
                });
              },
              tabs: [
                Tab(
                  text: 'Mamalia'
                ),
                Tab(
                  text: 'Reptile'
                ),
                Tab(
                  text: 'Pisces'
                ),
                Tab(
                  text: 'Amfibi'
                ),
                Tab(
                  text: 'Aves'
                ),
              ]
            ),
          )
        ],
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Divider(
                height: 1.5,
                thickness: 1.5,
                indent: 16.0,
                endIndent: 16.0,
              ),
              Flexible(
                child: TabBarView(
                  controller: _tabcontroller,
                  physics: BouncingScrollPhysics(),
                  children: [
                    mamaliaWidget(),
                    reptileWidget(),
                    piscesWidget(),
                    amfibiWidget(),
                    avesWidget()
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mamaliaWidget() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16.0,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 28.0),
            childAspectRatio: 4/5,
            children: listImageMamalia.map((animals) => GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(animal: animals, action: 10,),));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              animals.img,
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      animals.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            )).toList(),
          )
        ],
      ),
    );
  }

  Widget reptileWidget() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16.0,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 28.0),
            childAspectRatio: 4/5,
            children: listImageReptile.map((animals) => GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(animal: animals, action: 20,),));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              animals.img,
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      animals.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            )).toList(),
          )
        ],
      ),
    );
  }

  Widget piscesWidget() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16.0,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 28.0),
            childAspectRatio: 4/5,
            children: listImagePisces.map((animals) => GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(animal: animals, action: 30,),));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              animals.img,
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      animals.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            )).toList(),
          )
        ],
      ),
    );
  }

  Widget amfibiWidget() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16.0,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 28.0),
            childAspectRatio: 4/5,
            children: listImageAmfibi.map((animals) => GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(animal: animals, action: 40,),));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              animals.img,
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      animals.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            )).toList(),
          )
        ],
      ),
    );
  }

  Widget avesWidget() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16.0,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 28.0),
            childAspectRatio: 4/5,
            children: listImageAves.map((animals) => GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(animal: animals, action: 50,),));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              animals.img,
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      animals.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            )).toList(),
          )
        ],
      ),
    );
  }

}