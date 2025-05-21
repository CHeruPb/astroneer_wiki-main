import 'package:flutter/material.dart';

class Planet {
  final String name;
  final String type;
  final String image;
  final String description;
  final List<Ingredient> mainResourse;
  final List<Ingredient> secondaryResourse;
  final List<Ingredient> gases;
  final String difficulty;
  final String scale;
  final String dayLength;
  final String sun;
  final String wind;
  final String powerRequired;
  final String gatewayImage;
  final Ingredient gatewayResouce;

  Planet({
    required this.name,
    required this.type,
    required this.image,
    required this.description,
    required this.mainResourse,
    required this.secondaryResourse,
    required this.gases,
    required this.difficulty,
    required this.scale,
    required this.dayLength,
    required this.sun,
    required this.wind,
    required this.powerRequired,
    required this.gatewayImage,
    required this.gatewayResouce,
  });
}

List<Planet> planets = [
    Planet(
      name: 'Сильва',
      type: 'Земная',
      image: 'assets/images/sylva.png',
      description: 'Начальная планета с умеренным климатом.',
      mainResourse: [sphalerite, malachite],
      secondaryResourse: [graphite, quartz, laterite, ammonium, compound, resin, astronium],
      gases: [hydrogen, nitrogen],
      difficulty: 'Легкая',
      scale: 'Большая',
      dayLength: '12 мин',
      sun: 'Хорошо',
      wind: 'Средне',
      powerRequired: '5U/s',
      gatewayImage: 'assets/images/gateway_sylva.png',
      gatewayResouce: quartz,
    ),
    Planet(
      name: 'Дезоло',
      type: 'Земной спутник',
      image: 'assets/images/desolo.png',
      description: 'Бесплодная, безатмосферная планета, спутник Сильвы.',
      mainResourse: [wolframite, sphalerite],
      secondaryResourse:[quartz, clay, ammonium, laterite, graphite, compound, resin, astronium],
      gases: [nothing],
      difficulty: 'Легкая',
      scale: 'Малая',
      dayLength: '1 мин 55 сек',
      sun: 'Отлично',
      wind: 'Плохо',
      powerRequired: '8U/s',
      gatewayImage: 'assets/images/gateway_desolo.png',
      gatewayResouce: clay,
    ),
    Planet(
      name: 'Калидор',
      type: 'Засушливый',
      image: 'assets/images/cal.png',
      description: 'Пустынная планета с большим количеством солнечной энергии.',
      mainResourse: [wolframite, malachite],
      secondaryResourse: [laterite, ammonium, compound, graphite, resin, quartz, clay, astronium],
      gases: [hydrogen, sulfur],
      difficulty: 'Средняя',
      scale: 'Средний',
      dayLength: '8 мин',
      sun: 'Отлично',
      wind: 'Плохо',
      powerRequired: '12U/s',
      gatewayImage: 'assets/images/gateway_calidor.png',
      gatewayResouce: clay,
    ),
    Planet(
      name: 'Везания',
      type: 'Экзотическая',
      image: 'assets/images/vesania.png',
      description: 'Одна из самых ярких планет, густая и пышная атмосфера, разнообразная и необычная местность.',
      mainResourse: [lithium, titanite],
      secondaryResourse: [graphite, laterite, clay, quartz, compound, resin, astronium],
      gases: [hydrogen, argone, nitrogen],
      difficulty: 'Средняя',
      scale: 'Средняя',
      dayLength: '13 мин 30 сек',
      sun: 'Плохо',
      wind: 'Отлично',
      powerRequired: '16U/s',
      gatewayImage: 'assets/images/gateway_vesania.png',
      gatewayResouce: clay,
    ),
    Planet(
      name: 'Новус',
      type: 'Экзотический спутник',
      image: 'assets/images/novus.png',
      description: 'Также одна из самых ярких планет в Astroneer, с её тонкой туманной атмосферой и пурпурной, покрытой лесами и кратерами местностью.',
      mainResourse: [lithium, hematite, laterite],
      secondaryResourse: [compound, quartz, resin, graphite, ammonium, clay, astronium],
      gases: [metane, hydrogen],
      difficulty: 'Средняя',
      scale: 'Маленький',
      dayLength: '3 мин 30 сек',
      sun: 'Крайне отлично',
      wind: 'Хорошо',
      powerRequired: '22U/s',
      gatewayImage: 'assets/images/gateway_novus.png',
      gatewayResouce: clay,
    ),
    Planet(
      name: 'Гласио',
      type: 'Тундровая',
      image: 'assets/images/glacio.png',
      description: 'Планета с тонкой атмосферой, сильными ветрами и ледяныим горами',
      mainResourse: [titanite, hematite],
      secondaryResourse: [laterite, graphite, quartz, ammonium, compound, resin, astronium],
      gases: [argone],
      difficulty: 'Высокая',
      scale: 'Средняя',
      dayLength: '20 мин',
      sun: 'Плохо',
      wind: 'Отлично',
      powerRequired: '26U/s',
      gatewayImage: 'assets/images/gateway_glasio.png',
      gatewayResouce: clay,
    ),
    Planet(
      name: 'Атрокс',
      type: 'Радиоактивная',
      image: 'assets/images/atrox.png',
      description: 'Планета с ядовитой атмосферой, а за коварными кратерами скрывается очень агрессивная флора.',
      mainResourse: [nothing],
      secondaryResourse: [graphite, laterite, quartz, compound, resin, ammonium, clay, astronium],
      gases: [metane, nitrogen, sulfur, helium],
      difficulty: 'Крайне высокая',
      scale: 'Средний',
      dayLength: '20 мин',
      sun: 'Плохо',
      wind: 'Очень плохо',
      powerRequired: '30U/s',
      gatewayImage: 'assets/images/gateway_calidor.png',
      gatewayResouce: clay,
    ),
    Planet(
      name: 'Эолуз',
      type: 'Глючная',
      image: 'assets/images/aeoluz.png',
      description: 'Смесь оригинальных планет, но со Штормами, новыми типами пещер, подземными регионами и новым ядром',
      mainResourse: [ammonium, clay, compound, graphite, hematite, laterite, lithium, malachite, organic, quartz, resin, sphalerite, titanite, wolframite, astronium],
      secondaryResourse: [nothing],
      gases: [argone, helium, hydrogen, metane, nitrogen, sulfur],
      difficulty: 'Средняя',
      scale: 'Очень большая',
      dayLength: '9 мин',
      sun: 'Ниже среднего',
      wind: 'Средне',
      powerRequired: 'Не имеет привычного ядра, и врат',
      gatewayImage: 'assets/icons/nothing.png',
      gatewayResouce: nothing
    ),
  ];


class SpecialLocation {
  final String name;              
  final String image;             
  final String description;       
  final String howToFind;         
  final String function;          
  final List<String> requirements;
  final String? loreNote;         

  SpecialLocation({
    required this.name,
    required this.image,
    required this.description,
    required this.howToFind,
    required this.function,
    required this.requirements,
    this.loreNote,
  });
}

final List<SpecialLocation> specialLocations = [
  SpecialLocation(
    name: 'Неопознанный спутник',
    image: 'assets/images/unknown_sputnik.png',
    description: 'Древняя структура, расположенная в орбите. Используется для завершения игры.',
    howToFind: 'Находится в космосе. Попасть можно через ядро любой активированной планеты.',
    function: 'Финальная активация. Завершает сюжет.',
    requirements: [
      'Активировать ядра всех планет',
      'Вставить 3 геометрических трекера',
    ],
    loreNote: 'Предположительно, часть древней транспортной системы.',
  ),
  SpecialLocation(
    name: 'Солнечная комната',
    image: 'assets/images/sun_room.png',
    description: 'Загадочная структура с мощным светом. Часто упоминается в лоре.',
    howToFind: 'Может быть обнаружена через телепорты ядра. Доступна после активации всех планет.',
    function: 'Открывает финальные элементы сюжета. Возможно, арена или храм.',
    requirements: [
      'Завершить активацию всех платформ планет',
    ],
    loreNote: 'Некоторые теории связывают её с исчезновением древней цивилизации.',
  ),
];

class Resource {
  final String name;
  final String image;
  final String description;
  final String obtainedFrom; // Где или как получить
  final List<String> usedIn; // Названия объектов, где используется
  final String category; // Природный / Переплавленный / Сложный / Газ и т.д.

  Resource({
    required this.name,
    required this.image,
    required this.description,
    required this.obtainedFrom,
    required this.usedIn,
    required this.category,
  });
}

final List<Resource> exampleResources = [
  Resource(
    name: 'Малахит',
    image: 'assets/icons/malachite.png',
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: 'Планеты: Сильва, Калидор',
    usedIn: ['Плавильная печь', 'Средний генератор'],
    category: 'Природный',
  ),
  Resource(
    name: 'Медь',
    image: 'assets/images/copper.png',
    description: 'Переплавленный ресурс, получаемый из малахита.',
    obtainedFrom: 'Плавильная печь',
    usedIn: ['Платформы', 'Электронные устройства'],
    category: 'Переплавленный',
  ),
];

class Ingredient {
  final String iconPath;
  final String name;

  Ingredient({required this.iconPath, required this.name});
}

final String nothingIcon = 'assets/icons/nothing.png';

final String compoundIcon = 'assets/icons/compound.png';
final String resinIcon = 'assets/icons/resin.png';
final String clayIcon = 'assets/icons/clay.png';
final String graphiteIcon = 'assets/icons/graphite.png';
final String hematiteIcon = 'assets/icons/hematite.png';
final String lateriteIcon = 'assets/icons/laterite.png';
final String lithiumIcon = 'assets/icons/lithium.png';
final String organicIcon = 'assets/icons/organic.png';
final String quartzIcon = 'assets/icons/quartz.png';
final String sphaleriteIcon = 'assets/icons/sphalerite.png';
final String titaniteIcon = 'assets/icons/titanite.png';
final String wolframiteIcon = 'assets/icons/wolframite.png';
final String ammoniumIcon = 'assets/icons/ammonium.png';
final String astroniumIcon = 'assets/icons/astronium.png';
final String malachiteIcon = 'assets/icons/malachite.png';

final String argoneIcon = 'assets/icons/argone.png';
final String metaneIcon = 'assets/icons/metane.png';
final String hydrogenIcon = 'assets/icons/hydrogen.png';
final String nitrogenIcon = 'assets/icons/nitrogen.png';
final String heliumIcon = 'assets/icons/helium.png';
final String sulfurIcon = 'assets/icons/sulfur.png';

final String ceramicsIcon = 'assets/icons/ceramics.png';
final String carbonIcon = 'assets/icons/carbon.png';
final String copperIcon = 'assets/icons/copper.png';
final String glassIcon = 'assets/icons/glass.png';
final String ironIcon = 'assets/icons/iron.png';
final String titaniumIcon = 'assets/icons/titanium.png';
final String tungstenIcon = 'assets/icons/tungsten.png';
final String zincIcon = 'assets/icons/zinc.png';

final List<Ingredient> allIngredients = [
  Ingredient(iconPath: compoundIcon, name: 'Соединение'),
  Ingredient(iconPath: resinIcon, name: 'Смола'),
  Ingredient(iconPath: clayIcon, name: 'Глина'),
  Ingredient(iconPath: graphiteIcon, name: 'Графит'),
  Ingredient(iconPath: hematiteIcon, name: 'Гематит'),
  Ingredient(iconPath: lateriteIcon, name: 'Латерит'),
  Ingredient(iconPath: lithiumIcon, name: 'Литий'),
  Ingredient(iconPath: organicIcon, name: 'Органика'),
  Ingredient(iconPath: quartzIcon, name: 'Кварц'),
  Ingredient(iconPath: sphaleriteIcon, name: 'Сфалерит'),
  Ingredient(iconPath: titaniteIcon, name: 'Титанит'),
  Ingredient(iconPath: wolframiteIcon, name: 'Вольфрамит'),
  Ingredient(iconPath: ammoniumIcon, name: 'Аммоний'),
  Ingredient(iconPath: astroniumIcon, name: 'Астрониум'),
  Ingredient(iconPath: malachiteIcon, name: 'Малахит'),

  Ingredient(iconPath: argoneIcon, name: 'Аргон'),
  Ingredient(iconPath: metaneIcon, name: 'Метан'),
  Ingredient(iconPath: hydrogenIcon, name: 'Водород'),
  Ingredient(iconPath: nitrogenIcon, name: 'Азот'),
  Ingredient(iconPath: heliumIcon, name: 'Гелий'),
  Ingredient(iconPath: sulfurIcon, name: 'Сера'),

  Ingredient(iconPath: nothingIcon, name: 'Нет'),

  Ingredient(iconPath: ceramicsIcon, name: 'Керамика'),
  Ingredient(iconPath: carbonIcon, name: 'Углерод'),
  Ingredient(iconPath: copperIcon, name: 'Медь'),
  Ingredient(iconPath: glassIcon, name: 'Стекло'),
  Ingredient(iconPath: ironIcon, name: 'Железо'),
  Ingredient(iconPath: titaniumIcon, name: 'Титан'),
  Ingredient(iconPath: tungstenIcon, name: 'Вольфрам'),
  Ingredient(iconPath: zincIcon, name: 'Цинк'),
];

final Ingredient nothing = allIngredients[21];

final Ingredient compound = allIngredients[0];
final Ingredient resin = allIngredients[1];
final Ingredient clay = allIngredients[2];
final Ingredient graphite = allIngredients[3];
final Ingredient hematite = allIngredients[4];
final Ingredient laterite = allIngredients[5];
final Ingredient lithium = allIngredients[6];
final Ingredient organic = allIngredients[7];
final Ingredient quartz = allIngredients[8];
final Ingredient sphalerite = allIngredients[9];
final Ingredient titanite = allIngredients[10];
final Ingredient wolframite = allIngredients[11];
final Ingredient ammonium = allIngredients[12];
final Ingredient astronium = allIngredients[13];
final Ingredient malachite = allIngredients[14];

final Ingredient argone = allIngredients[15];
final Ingredient metane = allIngredients[16];
final Ingredient hydrogen = allIngredients[17];
final Ingredient nitrogen = allIngredients[18];
final Ingredient helium = allIngredients[19];
final Ingredient sulfur = allIngredients[20];

final Ingredient ceramics = allIngredients[22];
final Ingredient carbon = allIngredients[23];
final Ingredient copper = allIngredients[24];
final Ingredient glass = allIngredients[25];
final Ingredient iron = allIngredients[26];
final Ingredient titanium = allIngredients[27];
final Ingredient tungsten = allIngredients[28];
final Ingredient zinc = allIngredients[29];

class CraftableModule {
  final String name;
  final String description;
  final String image;
  final String icon;
  final String bytesCost;
  final List<Ingredient> ingredients;
  final String printerLevel;
  final String category;

  CraftableModule({
    required this.name,
    required this.description,
    required this.image,
    required this.icon,
    required this.bytesCost,
    required this.ingredients,
    required this.printerLevel,
    required this.category,
  });
}

final List<CraftableModule> modules = [
  CraftableModule(
  name: "Штука",
  description: "Чета делает",
  image: "assets/images/vesania.png",
  icon: "assets/images/vesania.png",
  bytesCost: '500',
  ingredients: [
    malachite,
    malachite,
    astronium,
  ],
  printerLevel: "Большой",
  category: "Хз",
  ),
];