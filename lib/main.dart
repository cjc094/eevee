import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class Eeveelution {
  final String name;
  final String type;
  final String imgUrl;
  final String description;
  final String? evolutionMethod;
  final bool? isShiny;
  final int num;
  const Eeveelution({
    required this.name,
    required this.type,
    required this.imgUrl,
    required this.description,
    this.evolutionMethod,
    this.isShiny,
    required this.num,
  });
}

final List<Eeveelution> eevees = [
  Eeveelution(
    name: '伊布',
    type: '一般',
    imgUrl: 'assets/IMG_0381.PNG',
    description: '為了能瞬即適應環境的變化，這種寶可夢蘊含著許多種進化的可能性。',
    num: 0133,
  ),
  Eeveelution(
    name: '水伊布',
    type: '水',
    imgUrl: 'assets/IMG_0383.PNG',
    description: '雖然棲息在水邊，但由於尾巴上有像是魚的鰭，因此有的人會把牠誤認成人魚。',
    evolutionMethod: '水之石',
    num: 0134,
  ),
  Eeveelution(
    name: '雷伊布',
    type: '雷',
    imgUrl: 'assets/IMG_0384.PNG',
    description: '會把細胞發出的微弱電流都集中起來釋放強力的電擊。',
    evolutionMethod: '雷之石',
    num: 0135,
  ),
  Eeveelution(
    name: '火伊布',
    type: '火',
    imgUrl: 'assets/IMG_0385.PNG',
    description: '會將吸入的空氣送進體內的火囊轉化成１７００度的火焰後再吐出來。',
    evolutionMethod: '火之石',
    num: 0136,
  ),
  Eeveelution(
    name: '太陽伊布',
    type: '超能力',
    imgUrl: 'assets/IMG_0386.PNG',
    description: '預知對手的行動時，分叉的尾巴前端就會微妙地擺動。',
    evolutionMethod: '親密度220或友好度158以上，且在白天進化',
    num: 0196,
  ),
  Eeveelution(
    name: '月亮伊布',
    type: '惡',
    imgUrl: 'assets/IMG_0382.PNG',
    description: '當身體沐浴了月亮波動後，圓形花紋就會微微發光，使神秘的力量因而覺醒。',
    evolutionMethod: '親密度220或友好度158以上，且在夜晚進化',
    num: 0197,
  ),
  Eeveelution(
    name: '葉伊布',
    type: '草',
    imgUrl: 'assets/IMG_0388.PNG',
    description: '在晴朗的日子裡，睡著的葉伊布會進行光合作用，製造出新鮮的空氣。',
    evolutionMethod: '葉之石',
    num: 0470,
  ),
  Eeveelution(
    name: '冰伊布',
    type: '冰',
    imgUrl: 'assets/IMG_0389.PNG',
    description: '能自由地控制體溫，讓大氣中的水分凍結，捲起冰晶。',
    evolutionMethod: '冰之石',
    num: 0471,
  ),
  Eeveelution(
    name: '仙子伊布',
    type: '妖精',
    imgUrl: 'assets/IMG_0390.PNG',
    description: '會從如蝴蝶結般的觸角把消除敵意的波動傳送進對手的體內。',
    evolutionMethod: '友好度50或158以上，且學會妖精招式',
    num: 0700,
  ),
];

List<Eeveelution> get evolutions =>
    eevees.where((e) => e.name != '伊布').toList();

List<Eeveelution> get shinyEevees => [
  const Eeveelution(
    name: '色違伊布',
    type: '一般',
    imgUrl: 'assets/133s.png',
    description: '色違版本的伊布，外觀顏色與一般版不同，更稀有也更特別。',
    evolutionMethod: '基礎型態',
    isShiny: true,
    num: 0133,
  ),
  const Eeveelution(
    name: '色違水伊布',
    type: '水',
    imgUrl: 'assets/134s.png',
    description: '色違版本的水伊布，保有優雅外型，也展現不同的配色。',
    evolutionMethod: '水之石',
    isShiny: true,
    num: 0134,
  ),
  const Eeveelution(
    name: '色違雷伊布',
    type: '雷',
    imgUrl: 'assets/135s.png',
    description: '色違版本的雷伊布，給人更稀有、醒目的印象。',
    evolutionMethod: '雷之石',
    isShiny: true,
    num: 0135,
  ),
  const Eeveelution(
    name: '色違火伊布',
    type: '火',
    imgUrl: 'assets/136s.png',
    description: '色違版本的火伊布，色彩表現和一般版不同。',
    evolutionMethod: '火之石',
    isShiny: true,
    num: 0136,
  ),
  const Eeveelution(
    name: '色違太陽伊布',
    type: '超能力',
    imgUrl: 'assets/196s.png',
    description: '色違版本的太陽伊布，有著與平常不同的特殊魅力。',
    evolutionMethod: '親密度220或友好度158以上，且在白天進化',
    isShiny: true,
    num: 0196,
  ),
  const Eeveelution(
    name: '色違月亮伊布',
    type: '惡',
    imgUrl: 'assets/197s.png',
    description: '色違版本的月亮伊布，神秘感更強，也更有收藏價值。',
    evolutionMethod: '親密度220或友好度158以上，且在夜晚進化',
    isShiny: true,
    num: 0197,
  ),
  const Eeveelution(
    name: '色違葉伊布',
    type: '草',
    imgUrl: 'assets/470s.png',
    description: '色違版本的葉伊布，呈現與一般版不同的自然色彩。',
    evolutionMethod: '葉之石',
    isShiny: true,
    num: 0470,
  ),
  const Eeveelution(
    name: '色違冰伊布',
    type: '冰',
    imgUrl: 'assets/471s.png',
    description: '色違版本的冰伊布，有著更特別的冷色調外觀。',
    evolutionMethod: '冰之石',
    isShiny: true,
    num: 0471,
  ),
  const Eeveelution(
    name: '色違仙子伊布',
    type: '妖精',
    imgUrl: 'assets/700s.png',
    description: '色違版本的仙子伊布，依然夢幻可愛，且更顯稀有。',
    evolutionMethod: '友好度50或158以上，且學會妖精招式',
    isShiny: true,
    num: 0700,
  ),
];

Future<void> playCry(Eeveelution eevee) async {
  final player = AudioPlayer();
  await player.play(AssetSource('audio/${eevee.num}.mp3'));
}

class EeveeCard extends StatelessWidget {
  const EeveeCard({super.key, required this.eevee});

  final Eeveelution eevee;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      child: InkWell(
        onTap: () async {
          await playCry(eevee);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EeveeDetailPage(eevee: eevee),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Image.asset(eevee.imgUrl, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eevee.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(eevee.type, style: const TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EeveeListTile extends StatelessWidget {
  const EeveeListTile({super.key, required this.eevee});

  final Eeveelution eevee;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: InkWell(
          onTap: () async {
            await playCry(eevee);
          },
          child: Image.asset(
            eevee.imgUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(eevee.name),
        subtitle: Text(eevee.type),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EeveeDetailPage(eevee: eevee),
            ),
          );
        },
      ),
    );
  }
}

class EeveeListSection extends StatelessWidget {
  const EeveeListSection({super.key, required this.items});

  final List<Eeveelution> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final eevee = items[index];
        return EeveeListTile(eevee: eevee);
      },
    );
  }
}

class EeveeGallerySection extends StatelessWidget {
  const EeveeGallerySection({super.key, required this.items});

  final List<Eeveelution> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final eevee = items[index];
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () async {
              await playCry(eevee);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EeveeDetailPage(eevee: eevee),
                ),
              );
            },
            child: Image.asset(eevee.imgUrl, fit: BoxFit.cover),
          ),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eevee',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 183, 129, 58),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final baseEevee = eevees.firstWhere((e) => e.name == '伊布');

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('伊布家族'),
          bottom: const TabBar(
            tabs: [
              Tab(text: '首頁'),
              Tab(text: '進化型'),
              Tab(text: '色違'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 首頁：
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 200,
                      child: InkWell(
                        onTap: () async {
                          await playCry(baseEevee);
                        },
                        child: Image.asset(
                          baseEevee.imgUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        baseEevee.name,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: Text(
                        '屬性：${baseEevee.type}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      baseEevee.description,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            // 進化型（List）
            EeveeListSection(items: evolutions),

            // 色違（畫廊）
            EeveeGallerySection(items: shinyEevees),
          ],
        ),
      ),
    );
  }
}

class EeveeDetailPage extends StatelessWidget {
  const EeveeDetailPage({super.key, required this.eevee});

  final Eeveelution eevee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(eevee.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: InkWell(
                  onTap: () async {
                    await playCry(eevee);
                  },
                  child: Image.asset(eevee.imgUrl, height: 220),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                eevee.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text('屬性：${eevee.type}'),
              const SizedBox(height: 12),
              Text('介紹：${eevee.description}'),
              const SizedBox(height: 12),
              Text('進化方式：${eevee.evolutionMethod ?? '基礎型態'}'),
            ],
          ),
        ),
      ),
    );
  }
}
