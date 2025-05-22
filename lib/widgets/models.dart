import 'package:flutter/material.dart';
import 'package:project/widgets/bullets.dart';
import 'package:project/widgets/ingredients_list.dart';

class Planet {
  final String name;
  final String type;
  final String icon;
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
    required this.icon,
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
    icon: sylvaIcon,
    image: 'assets/images/sylva.png',
    description: 'Начальная планета с умеренным климатом.',
    mainResourse: [sphalerite, malachite],
    secondaryResourse: [
      graphite,
      quartz,
      laterite,
      ammonium,
      compound,
      resin,
      astronium,
    ],
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
    icon: desoloIcon,
    image: 'assets/images/desolo.png',
    description: 'Бесплодная, безатмосферная планета, спутник Сильвы.',
    mainResourse: [wolframite, sphalerite],
    secondaryResourse: [
      quartz,
      clay,
      ammonium,
      laterite,
      graphite,
      compound,
      resin,
      astronium,
    ],
    gases: [nothing],
    difficulty: 'Легкая',
    scale: 'Малая',
    dayLength: '1 мин 55 сек',
    sun: 'Отлично',
    wind: 'Плохо',
    powerRequired: '8U/s',
    gatewayImage: 'assets/images/gateway_desolo.png',
    gatewayResouce: zinc,
  ),
  Planet(
    name: 'Калидор',
    type: 'Засушливый',
    icon: calidorIcon,
    image: 'assets/images/cal.png',
    description: 'Пустынная планета с большим количеством солнечной энергии.',
    mainResourse: [wolframite, malachite],
    secondaryResourse: [
      laterite,
      ammonium,
      compound,
      graphite,
      resin,
      quartz,
      clay,
      astronium,
    ],
    gases: [hydrogen, sulfur],
    difficulty: 'Средняя',
    scale: 'Средний',
    dayLength: '8 мин',
    sun: 'Отлично',
    wind: 'Плохо',
    powerRequired: '12U/s',
    gatewayImage: 'assets/images/gateway_calidor.png',
    gatewayResouce: explosivePowder,
  ),
  Planet(
    name: 'Везания',
    type: 'Экзотическая',
    icon: vesaniaIcon,
    image: 'assets/images/vesania.png',
    description:
        'Одна из самых ярких планет, густая и пышная атмосфера, разнообразная и необычная местность.',
    mainResourse: [lithium, titanite],
    secondaryResourse: [
      graphite,
      laterite,
      clay,
      quartz,
      compound,
      resin,
      astronium,
    ],
    gases: [hydrogen, argone, nitrogen],
    difficulty: 'Средняя',
    scale: 'Средняя',
    dayLength: '13 мин 30 сек',
    sun: 'Плохо',
    wind: 'Отлично',
    powerRequired: '16U/s',
    gatewayImage: 'assets/images/gateway_vesania.png',
    gatewayResouce: graphene,
  ),
  Planet(
    name: 'Новус',
    type: 'Экзотический спутник',
    icon: novusIcon,
    image: 'assets/images/novus.png',
    description:
        'Также одна из самых ярких планет в Astroneer, с её тонкой туманной атмосферой и пурпурной, покрытой лесами и кратерами местностью.',
    mainResourse: [lithium, hematite, laterite],
    secondaryResourse: [
      compound,
      quartz,
      resin,
      graphite,
      ammonium,
      clay,
      astronium,
    ],
    gases: [metane, hydrogen],
    difficulty: 'Средняя',
    scale: 'Маленький',
    dayLength: '3 мин 30 сек',
    sun: 'Крайне отлично',
    wind: 'Хорошо',
    powerRequired: '22U/s',
    gatewayImage: 'assets/images/gateway_novus.png',
    gatewayResouce: silicone,
  ),
  Planet(
    name: 'Гласио',
    type: 'Тундровая',
    icon: glacioIcon,
    image: 'assets/images/glacio.png',
    description:
        'Планета с тонкой атмосферой, сильными ветрами и ледяныим горами',
    mainResourse: [titanite, hematite],
    secondaryResourse: [
      laterite,
      graphite,
      quartz,
      ammonium,
      compound,
      resin,
      astronium,
    ],
    gases: [argone],
    difficulty: 'Высокая',
    scale: 'Средняя',
    dayLength: '20 мин',
    sun: 'Плохо',
    wind: 'Отлично',
    powerRequired: '26U/s',
    gatewayImage: 'assets/images/gateway_glasio.png',
    gatewayResouce: diamond,
  ),
  Planet(
    name: 'Атрокс',
    type: 'Радиоактивная',
    icon: atroxIcon,
    image: 'assets/images/atrox.png',
    description:
        'Планета с ядовитой атмосферой, а за коварными кратерами скрывается очень агрессивная флора.',
    mainResourse: [nothing],
    secondaryResourse: [
      graphite,
      laterite,
      quartz,
      compound,
      resin,
      ammonium,
      clay,
      astronium,
    ],
    gases: [metane, nitrogen, sulfur, helium],
    difficulty: 'Крайне высокая',
    scale: 'Средний',
    dayLength: '20 мин',
    sun: 'Плохо',
    wind: 'Очень плохо',
    powerRequired: '30U/s',
    gatewayImage: 'assets/images/gateway_calidor.png',
    gatewayResouce: hydrogen,
  ),
  Planet(
    name: 'Эолуз',
    type: 'Глючная',
    icon: aeoluzIcon,
    image: 'assets/images/aeoluz.png',
    description:
        'Смесь оригинальных планет, но со Штормами, новыми типами пещер, подземными регионами и новым ядром',
    mainResourse: [
      ammonium,
      clay,
      compound,
      graphite,
      hematite,
      laterite,
      lithium,
      malachite,
      organic,
      quartz,
      resin,
      sphalerite,
      titanite,
      wolframite,
      astronium,
    ],
    secondaryResourse: [nothing],
    gases: [argone, helium, hydrogen, metane, nitrogen, sulfur],
    difficulty: 'Средняя',
    scale: 'Очень большая',
    dayLength: '9 мин',
    sun: 'Ниже среднего',
    wind: 'Средне',
    powerRequired: 'Не имеет привычного ядра, и врат',
    gatewayImage: 'assets/icons/nothing.png',
    gatewayResouce: nothing,
  ),
];

class SpecialLocation {
  final String name;
  final String image;
  final String icon;
  final String description;
  final String howToFind;
  final String function;
  final List<String> requirements;
  final String? loreNote;

  SpecialLocation({
    required this.name,
    required this.image,
    required this.icon,
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
    icon: unknownSputnikIcon,
    image: 'assets/images/unknown_sputnik.png',
    description:
        'Древняя структура, расположенная в орбите. Используется для завершения игры.',
    howToFind:
        'Находится в космосе. Попасть можно через ядро любой активированной планеты.',
    function: 'Финальная активация. Завершает сюжет.',
    requirements: [
      'Активировать ядра всех планет',
      'Вставить 7 геометрических триптиха',
    ],
    loreNote: '',
  ),
  SpecialLocation(
    name: 'Солнечная комната',
    icon: sunRoomIcon,
    image: 'assets/images/sun_room.png',
    description:
        'Загадочная структура с мощным светом. Часто упоминается в лоре.',
    howToFind:
        'Может быть обнаружена через телепорты ядра. Доступна после активации всех планет.',
    function: 'Открывает финальные элементы сюжета. Возможно, арена или храм.',
    requirements: ['Завершить активацию всех платформ планет'],
    loreNote:
        'Некоторые теории связывают её с исчезновением древней цивилизации.',
  ),
];

class Resource {
  final String name;
  final String icon;
  final String image;
  final String description;
  final List<Widget> obtainedFrom;
  final List<Widget> usedIn;
  final String category;

  Resource({
    required this.name,
    required this.icon,
    required this.image,
    required this.description,
    required this.obtainedFrom,
    required this.usedIn,
    required this.category,
  });
}

final List<Resource> exampleResources = [
  Resource(
    name: 'Соединение',
    icon: compoundIcon,
    image: compoundIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Смола',
    icon: resinIcon,
    image: resinIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Глина',
    icon: clayIcon,
    image: clayIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Графит',
    icon: graphiteIcon,
    image: graphiteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Латерит',
    icon: lateriteIcon,
    image: lateriteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Гематит',
    icon: hematiteIcon,
    image: hematiteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Литий',
    icon: lithiumIcon,
    image: lithiumIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Малахит',
    icon: malachiteIcon,
    image: malachiteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Органика',
    icon: organicIcon,
    image: organicIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Кварц',
    icon: quartzIcon,
    image: quartzIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Сфалерит',
    icon: sphaleriteIcon,
    image: sphaleriteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Титанит',
    icon: titaniteIcon,
    image: titaniteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Вольфрамит',
    icon: wolframiteIcon,
    image: wolframiteIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Аммоний',
    icon: ammoniumIcon,
    image: ammoniumIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Астрониум',
    icon: astroniumIcon,
    image: astroniumIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Можно найти на поверхности следующих планет:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('На всех планетах в изобилии'),
    ],
    usedIn: [
      IngredientsList(ingredients: [copper]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'Аргон',
    icon: argoneIcon,
    image: argoneIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
      ),
      const SizedBox(height: 8),
      bulletWithIcon('assets/icons/novusI.png', 'Новус — высокое содержание'),
      bulletWithIcon(
        'assets/icons/vesaniaI.png',
        'Весания — умеренное содержание',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),

  Resource(
    name: 'Метан',
    icon: metaneIcon,
    image: metaneIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
      ),
      const SizedBox(height: 8),
      bulletWithIcon('assets/icons/novusI.png', 'Новус — высокое содержание'),
      bulletWithIcon(
        'assets/icons/vesaniaI.png',
        'Весания — умеренное содержание',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),

  Resource(
    name: 'Водород',
    icon: hydrogenIcon,
    image: hydrogenIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
      ),
      const SizedBox(height: 8),
      bulletWithIcon('assets/icons/novusI.png', 'Новус — высокое содержание'),
      bulletWithIcon(
        'assets/icons/vesaniaI.png',
        'Весания — умеренное содержание',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),
  Resource(
    name: 'Азот',
    icon: nitrogenIcon,
    image: nitrogenIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
      ),
      const SizedBox(height: 8),
      bulletWithIcon('assets/icons/novusI.png', 'Новус — высокое содержание'),
      bulletWithIcon(
        'assets/icons/vesaniaI.png',
        'Весания — умеренное содержание',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),

  Resource(
    name: 'Гелий',
    icon: heliumIcon,
    image: heliumIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
      ),
      const SizedBox(height: 8),
      bulletWithIcon('assets/icons/novusI.png', 'Новус — высокое содержание'),
      bulletWithIcon(
        'assets/icons/vesaniaI.png',
        'Весания — умеренное содержание',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),

  Resource(
    name: 'Сера',
    icon: sulfurIcon,
    image: sulfurIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
      ),
      const SizedBox(height: 8),
      bulletWithIcon('assets/icons/novusI.png', 'Новус — высокое содержание'),
      bulletWithIcon(
        'assets/icons/vesaniaI.png',
        'Весания — умеренное содержание',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),

  Resource(
    name: 'Керамика',
    icon: ceramicsIcon,
    image: ceramicsIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Углерод',
    icon: carbonIcon,
    image: carbonIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Медь',
    icon: copperIcon,
    image: copperIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Стекло',
    icon: glassIcon,
    image: glassIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Железо',
    icon: ironIcon,
    image: ironIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(sphaleriteIcon, width: 32,),
          SizedBox(width: 8,),
          Text('Сфалерит'),
          Icon(Icons.arrow_right, color: Colors.white,),
          Image.asset(zincIcon, width: 32,),
          SizedBox(width: 8,),
          Text('Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Титан',
    icon: titaniumIcon,
    image: titaniumIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Вольфрам',
    icon: tungstenIcon,
    image: tungstenIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Цинк',
    icon: zincIcon,
    image: zincIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset('assets/icons/sphalerite.png', width: 32, height: 32),
          const SizedBox(width: 8),
          const Text('1 × Сфалерит → 1 × Цинк'),
        ],
      ),
      const SizedBox(height: 12),
      Text(
        'Где найти сфалерит:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      bulletWithIcon(
        'assets/icons/desoloI.png',
        'Десоло — на поверхности и в пещерах (в изобилии)',
      ),
      bulletWithIcon('assets/icons/calI.png', 'Калидор — в пещерах'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),

  Resource(
    name: 'Алюминиевый сплав',
    icon: aluminiumAlloyIcon,
    image: aluminiumAlloyIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Алмаз',
    icon: diamondIcon,
    image: diamondIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Порох',
    icon: explosivePowderIcon,
    image: explosivePowderIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Графен',
    icon: grapheneIcon,
    image: grapheneIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Гидразин',
    icon: hydrazineIcon,
    image: hydrazineIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Наноуглеродный сплав',
    icon: nanocarbonAlloyIcon,
    image: nanocarbonAlloyIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Пластик',
    icon: plasticIcon,
    image: plasticIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Резина',
    icon: rubberIcon,
    image: rubberIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Силикон',
    icon: siliconeIcon,
    image: siliconeIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Сталь',
    icon: steelIcon,
    image: steelIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Титановый сплав',
    icon: titaniumAlloyIcon,
    image: titaniumAlloyIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Карбид вольфрама',
    icon: tungstenCarbideIcon,
    image: tungstenCarbideIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, carbon, sulfur]),
    ],
    usedIn: [
      IngredientsList(ingredients: [tungstenCarbide]),
    ],
    category: 'Сложный',
  ),

  Resource(
    name: 'Почва',
    icon: soilIcon,
    image: soilIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Доступен следующими способами:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text('Взрыв повреждённых контейнеров с помощью динамита'),
      Text('Покупка за байты в некоторых событиях EXO'),
      Text('В редких случаях — награда за задания'),
    ],
    usedIn: [
      IngredientsList(ingredients: [aluminiumAlloy]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'EXO чип',
    icon: exoChipIcon,
    image: exoChipIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Доступен следующими способами:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text('Взрыв повреждённых контейнеров с помощью динамита'),
      Text('Покупка за байты в некоторых событиях EXO'),
      Text('В редких случаях — награда за задания'),
    ],
    usedIn: [
      IngredientsList(ingredients: [aluminiumAlloy]),
    ],
    category: 'ыВВ',
  ),

  Resource(
    name: 'Лом',
    icon: scrapIcon,
    image: scrapIcon,
    description: 'Малахит — природный ресурс, используется для получения меди.',
    obtainedFrom: [
      Text(
        'Получается путём переработки мусора и сломанных предметов в Шредере.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text('Подбирай сломанное оборудование, найденное в мире'),
      Text('Перерабатывай его в любом шредере'),
      const SizedBox(height: 12),
      Text('Обменивается на ресурсы через торговую платформу.'),
    ],
    usedIn: [
      IngredientsList(ingredients: [nanocarbonAlloy]),
    ],
    category: 'СложыВВВЫный',
  ),
];

class Ingredient {
  final String iconPath;
  final String name;

  Ingredient({required this.iconPath, required this.name});
}

final String sylvaIcon = 'assets/icons/sylvaI.png';
final String desoloIcon = 'assets/icons/desoloI.png';
final String calidorIcon = 'assets/icons/calI.png';
final String vesaniaIcon = 'assets/icons/vesaniaI.png';
final String novusIcon = 'assets/icons/novusI.png';
final String atroxIcon = 'assets/icons/atroxI.png';
final String glacioIcon = 'assets/icons/glasioI.png';
final String aeoluzIcon = 'assets/icons/aeoluzI.png';
final String unknownSputnikIcon = 'assets/icons/unknown_sputnikI.png';
final String sunRoomIcon = 'assets/icons/sun_roomI.png';

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

final String aluminiumAlloyIcon = 'assets/icons/aluminium_alloy.png';
final String diamondIcon = 'assets/icons/diamond.png';
final String explosivePowderIcon = 'assets/icons/explosive_powder.png';
final String grapheneIcon = 'assets/icons/graphene.png';
final String hydrazineIcon = 'assets/icons/hydrazine.png';
final String nanocarbonAlloyIcon = 'assets/icons/nanocarbon_alloy.png';
final String plasticIcon = 'assets/icons/plastic.png';
final String rubberIcon = 'assets/icons/rubber.png';
final String siliconeIcon = 'assets/icons/silicone.png';
final String steelIcon = 'assets/icons/steel.png';
final String titaniumAlloyIcon = 'assets/icons/titanium_alloy.png';
final String tungstenCarbideIcon = 'assets/icons/tungsten_carbide.png';

final String soilIcon = 'assets/icons/soil.png';
final String exoChipIcon = 'assets/icons/exo_chip.png';
final String scrapIcon = 'assets/icons/scrap.png';

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

  Ingredient(iconPath: aluminiumAlloyIcon, name: 'Алюминиевый сплав'),
  Ingredient(iconPath: diamondIcon, name: 'Алмаз'),
  Ingredient(iconPath: explosivePowderIcon, name: 'Порох'),
  Ingredient(iconPath: grapheneIcon, name: 'Графен'),
  Ingredient(iconPath: hydrazineIcon, name: 'Гидразин'),
  Ingredient(iconPath: nanocarbonAlloyIcon, name: 'Наноуглеродный сплав'),
  Ingredient(iconPath: plasticIcon, name: 'Пластик'),
  Ingredient(iconPath: rubberIcon, name: 'Резина'),
  Ingredient(iconPath: siliconeIcon, name: 'Силикон'),
  Ingredient(iconPath: steelIcon, name: 'Сталь'),
  Ingredient(iconPath: titaniumAlloyIcon, name: 'Титановый сплав'),
  Ingredient(iconPath: tungstenCarbideIcon, name: 'Карбид вольфрама'),

  Ingredient(iconPath: soilIcon, name: 'Почва'),
  Ingredient(iconPath: exoChipIcon, name: 'EXO чип'),
  Ingredient(iconPath: scrapIcon, name: 'Лом'),
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

final Ingredient aluminiumAlloy = allIngredients[30];
final Ingredient diamond = allIngredients[31];
final Ingredient explosivePowder = allIngredients[32];
final Ingredient graphene = allIngredients[33];
final Ingredient hydrazine = allIngredients[34];
final Ingredient nanocarbonAlloy = allIngredients[35];
final Ingredient plastic = allIngredients[36];
final Ingredient rubber = allIngredients[37];
final Ingredient silicone = allIngredients[38];
final Ingredient steel = allIngredients[39];
final Ingredient titaniumAlloy = allIngredients[40];
final Ingredient tungstenCarbide = allIngredients[41];

final Ingredient soil = allIngredients[42];
final Ingredient exoChip = allIngredients[43];
final Ingredient scrap = allIngredients[44];

class CraftableModule {
  final String name;
  final String description;
  final String image;
  final String icon;
  final String byteCost;
  final List<Ingredient> ingredients;
  final String printerLevel;
  final String category;

  CraftableModule({
    required this.name,
    required this.description,
    required this.image,
    required this.icon,
    required this.byteCost,
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
    byteCost: '500',
    ingredients: [malachite, malachite, astronium],
    printerLevel: "Большой",
    category: "Прочее",
  ),
];
