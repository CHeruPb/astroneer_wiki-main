import 'dart:ui';

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
    gases: [methane, hydrogen],
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
    gases: [methane, nitrogen, sulfur, helium],
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
    gases: [argone, helium, hydrogen, methane, nitrogen, sulfur],
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
    description:
        'Соединение является одним из самых распространенных ресурсов',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description: 'Смола является одним из самых распространенных ресурсов',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Глина — природный ресурс, используется для получения керамики',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description: 'Графит является одним из самых распространенных ресурсов',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Латерит — природный ресурс, используется для получения алюминия',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Гематит — природный ресурс, используется для получения железа',
    obtainedFrom: [
      Text(
        'Можно найти на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(novusIcon, "Новус"),
      bulletWithIcon(glacioIcon, "Гласио"),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Литий — природный ресурс, используется для получения производства генераторов и батарей',
    obtainedFrom: [
      Text(
        'Можно найти на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(vesaniaIcon, "Везания"),
      bulletWithIcon(novusIcon, "Новус"),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description: 'Малахит — природный ресурс, используется для получения меди',
    obtainedFrom: [
      Text(
        'Можно найти на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(sylvaIcon, "Сильва"),
      bulletWithIcon(calidorIcon, "Калидор"),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description: 'Органика является наиболее распространенным ресурсом',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description: 'Кварц — природный ресурс, используется для получения стекла',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Сфалерит — природный ресурс, используется для получения цинка',
    obtainedFrom: [
      Text(
        'Можно найти на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(sylvaIcon, "Сильва"),
      bulletWithIcon(desoloIcon, "Дезоло"),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Титанит — природный ресурс, используется для получения титана',
    obtainedFrom: [
      Text(
        'Можно найти на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(vesaniaIcon, "Везания"),
      bulletWithIcon(glacioIcon, "Гласио"),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Вольфрамит — природный ресурс, используется для получения вольфрама',
    obtainedFrom: [
      Text(
        'Можно найти на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(desoloIcon, "Дезоло"),
      bulletWithIcon(calidorIcon, "Калидор"),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Аммоний — природный ресурс, используется для получения топлива',
    obtainedFrom: [
      Text(
        'Найти на всех планетах',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Получить с помощью центрифуги почвы',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Text(
        'Обменять на платформе обмена',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description:
        'Астрониум — природный ресурс, используется в основном на платформе обмена',
    obtainedFrom: [
      Text(
        'Найти около ядер всех планет',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
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
    description: 'Аргон - газ, собирается с помощью атмосферного конденсатора',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(glacioIcon, 'Гласио — 100 ppu'),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Газ',
  ),

  Resource(
    name: 'Метан',
    icon: methaneIcon,
    image: methaneIcon,
    description: 'Метан - газ, собирается с помощью атмосферного конденсатора',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(novusIcon, 'Новус — 75 ppu'),
      bulletWithIcon(atroxIcon, 'Атрокс — 100 ppu'),
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
    description: 'Водород - газ, собирается с помощью атмосферного конденсатора',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(sylvaIcon, 'Сильва — 75 ppu'),
      bulletWithIcon(calidorIcon, 'Калидор — 50 ppu'),
      bulletWithIcon(vesaniaIcon, 'Везания — 100 ppu'),
      bulletWithIcon(novusIcon, 'Новус — 25 ppu'),
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
    description: 'Азот - газ, собирается с помощью атмосферного конденсатора',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(sylvaIcon, 'Сильва — 100 ppu'),
      bulletWithIcon(vesaniaIcon, 'Везания — 75 ppu'),
      bulletWithIcon(atroxIcon, 'Атрокс — 50 ppu'),
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
    description: 'Гелий - газ, собирается с помощью атмосферного конденсатора',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(atroxIcon, 'Атрокс — 25 ppu'),
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
    description: 'Сера - газ, собирается с помощью атмосферного конденсатора',
    obtainedFrom: [
      Text(
        'Собирается с помощью атмосферного конденсатора на следующих планетах:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      bulletWithIcon(calidorIcon, 'Калидор — 100 ppu'),
      bulletWithIcon(atroxIcon, 'Атрокс — 75 ppu'),
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
    description: 'Керамика — переплавленный ресурс, получается из глины',
    obtainedFrom: [
      Text(
        'Получается путём переплавки глины в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(clayIcon, width: 32),
          SizedBox(width: 8),
          Text('Глина'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(ceramicsIcon, width: 32),
          SizedBox(width: 8),
          Text('Керамика'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Углерод — переплавленный ресурс, получается из органики',
    obtainedFrom: [
      Text(
        'Получается путём переплавки органики в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(organicIcon, width: 32),
          SizedBox(width: 8),
          Text('Органика'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(carbonIcon, width: 32),
          SizedBox(width: 8),
          Text('Углерод'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Медь — переплавленный ресурс, получается из малахита',
    obtainedFrom: [
      Text(
        'Получается путём переплавки малахита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(malachiteIcon, width: 32),
          SizedBox(width: 8),
          Text('Малахит'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(copperIcon, width: 32),
          SizedBox(width: 8),
          Text('Медь'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Стекло — переплавленный ресурс, получается из кварца',
    obtainedFrom: [
      Text(
        'Получается путём переплавки кварца в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(quartzIcon, width: 32),
          SizedBox(width: 8),
          Text('Кварц'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(glassIcon, width: 32),
          SizedBox(width: 8),
          Text('Стекло'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Железо — переплавленный ресурс, получается из гематита',
    obtainedFrom: [
      Text(
        'Получается путём переплавки гематита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(hematiteIcon, width: 32),
          SizedBox(width: 8),
          Text('Гематит'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(ironIcon, width: 32),
          SizedBox(width: 8),
          Text('Железо'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Титан — переплавленный ресурс, получается из титанита',
    obtainedFrom: [
      Text(
        'Получается путём переплавки титанита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(titaniteIcon, width: 32),
          SizedBox(width: 8),
          Text('Титанит'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(titaniumIcon, width: 32),
          SizedBox(width: 8),
          Text('Титан'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Вольфрам — переплавленный ресурс, получается из вольфрамита',
    obtainedFrom: [
      Text(
        'Получается путём переплавки вольфрамита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(wolframiteIcon, width: 32),
          SizedBox(width: 8),
          Text('Вольфрам'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(tungstenIcon, width: 32),
          SizedBox(width: 8),
          Text('Вольфрамит'),
        ],
      ),
      const SizedBox(height: 12),
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
    description: 'Цинк — переплавленный ресурс, получается из сфалерита',
    obtainedFrom: [
      Text(
        'Получается путём переплавки сфалерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(sphaleriteIcon, width: 32),
          SizedBox(width: 8),
          Text('Сфалерит'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(zincIcon, width: 32),
          SizedBox(width: 8),
          Text('Цинк'),
        ],
      ),
      const SizedBox(height: 12),
    ],
    usedIn: [
      IngredientsList(ingredients: [astronium]),
    ],
    category: 'Очищенный',
  ),
  Resource(
    name: 'Алюминий',
    icon: aluminiumIcon,
    image: aluminiumIcon,
    description: 'Алюминий — переплавленный ресурс, получается из латерита',
    obtainedFrom: [
      Text(
        'Получается путём переплавки латерита в плавильне.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Image.asset(lateriteIcon, width: 32),
          SizedBox(width: 8),
          Text('Латерит'),
          Icon(Icons.arrow_right, color: Colors.white),
          Image.asset(aluminiumIcon, width: 32),
          SizedBox(width: 8),
          Text('Алюминий'),
        ],
      ),
      const SizedBox(height: 12),
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
    description:
        'Алюминиевый сплав - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [aluminium, copper]),
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
    description:
        'Алмаз - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [graphene, graphene]),
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
    description:
        'Порох - сложный ресурс, синтезируется в химической лаборатории',
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
    description:
        'Графен - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [graphite, hydrazine]),
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
    description:
        'Гидразин - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [ammonium, ammonium, hydrogen]),
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
    description:
        'Наноуглеродный сплав - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [titaniumAlloy, steel, helium]),
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
    description:
        'Пластик - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [compound, carbon]),
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
    description:
        'Резина - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [organic, resin]),
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
    description:
        'Силикон - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [resin, quartz, methane]),
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
    description:
        'Сталь - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [iron, carbon, argone]),
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
    description:
        'Титановый сплав - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [titanium, graphene, nitrogen]),
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
    description:
        'Карбид вольфрама - сложный ресурс, синтезируется в химической лаборатории',
    obtainedFrom: [
      Text(
        'Создаётся в Химической лаборатории из:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8),
      IngredientsList(ingredients: [carbon, tungsten]),
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
    description:
        'Почва — природный ресурс, используется для выравнивания местности.',
    obtainedFrom: [
      Text(
        'Собрать в маленький контейнер инструментом изменения рельефа',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [aluminiumAlloy]),
    ],
    category: 'Природный',
  ),

  Resource(
    name: 'EXO-чип',
    icon: exoChipIcon,
    image: exoChipIcon,
    description:
        'EXO-чип — природный ресурс, используется для сложных устройств.',
    obtainedFrom: [
      Text(
        'Доступен следующими способами:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        'Найти внутри EXO-тайников с помощью динамита или других взрывных веществ',
      ),
      Text(
        'Обменять на платформе обмена',
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [aluminiumAlloy]),
    ],
    category: 'ИДЕМ РАБОТАТЬ ЗАВОД ППЛ СЕЙЧАС В ВОЙС',
  ),

  Resource(
    name: 'Лом',
    icon: scrapIcon,
    image: scrapIcon,
    description: 'Лом — ресурс, получающийся из обломков.',
    obtainedFrom: [
      Text(
        'Получается путём переработки обломков и других ресурсов в шредере.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
    usedIn: [
      IngredientsList(ingredients: [nanocarbonAlloy]),
    ],
    category: 'ИДЕМ РАБОТАТЬ ЗАВОД ППЛ СЕЙЧАС В ВОЙС',
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
final String methaneIcon = 'assets/icons/methane.png';
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
final String aluminiumIcon = 'assets/icons/aluminium.png';

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
  Ingredient(iconPath: methaneIcon, name: 'Метан'),
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
  Ingredient(iconPath: exoChipIcon, name: 'EXO-чип'),
  Ingredient(iconPath: scrapIcon, name: 'Лом'),
  Ingredient(iconPath: canisterIcon, name: 'Заполненный маленький контейнер'),

  Ingredient(iconPath: aluminiumIcon, name: 'Алюминий'),
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
final Ingredient methane = allIngredients[16];
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
final Ingredient fullSmallContainer = allIngredients[45];

final Ingredient aluminium = allIngredients[46];

class CraftableModule {
  final String name;
  final String description;
  final String image;
  final String icon;
  final String byteCost;
  final List<Ingredient> ingredients;
  final String size;
  final String category;

  CraftableModule({
    required this.name,
    required this.description,
    required this.image,
    required this.icon,
    required this.byteCost,
    required this.ingredients,
    required this.size,
    required this.category,
  });
}

final String augmentIcon = 'assets/icons/augmentI.png';
final String autoextractorIcon = 'assets/icons/autoextractorI.png';
final String batteryIcon = 'assets/icons/batteryI.png';
final String beaconIcon = 'assets/icons/beaconI.png';
final String cameraIcon = 'assets/icons/cameraI.png';
final String canisterIcon = 'assets/icons/canisterI.png';
final String chemistryIcon = 'assets/icons/chemistry_labI.png';
final String condenserIcon = 'assets/icons/condenserI.png';
final String craneIcon = 'assets/icons/craneI.png';
final String drillIcon = 'assets/icons/drillI.png';
final String dynamiteIcon = 'assets/icons/dynamiteI.png';
final String powerIcon = 'assets/icons/ebaninaI.png';
final String engineI = 'assets/icons/engineI.png';
final String extendersIcon = 'assets/icons/extendersI.png';
final String figurineIcon = 'assets/icons/figurineI.png';
final String generatorIcon = 'assets/icons/generatorI.png';
final String hornIcon = 'assets/icons/hornI.png';
final String hoverboardIcon = 'assets/icons/hoverboardI.png';
final String landingIcon = 'assets/icons/landingI.png';
final String largeIcon = 'assets/icons/largeI.png';
final String levelingBlockIcon = 'assets/icons/leveling_blockI.png';
final String mediumIcon = 'assets/icons/mediumI.png';
final String oxygenatorIcon = 'assets/icons/oxygenatorI.png';
final String oxygenIcon = 'assets/icons/oxygenI.png';
final String packagerIcon = 'assets/icons/packagerI.png';
final String paverIcon = 'assets/icons/paverI.png';
final String platformIcon = 'assets/icons/platformI.png';
final String researchSampleIcon = 'assets/icons/research_sampleI.png';
final String researchIcon = 'assets/icons/researchI.png';
final String roverIcon = 'assets/icons/roverI.png';
final String scannerIcon = 'assets/icons/scannerI.png';
final String seatIcon = 'assets/icons/seatI.png';
final String sensorIcon = 'assets/icons/sensorI.png';
final String sharikIcon = 'assets/icons/sharikI.png';
final String shelterIcon = 'assets/icons/shelterI.png';
final String shredderIcon = 'assets/icons/shredderI.png';
final String smallIcon = 'assets/icons/smallI.png';
final String smeltingIcon = 'assets/icons/smelting_furnaceI.png';
final String soilCentrifugeIcon = 'assets/icons/soil_centrifugeI.png';
final String solarPanelIcon = 'assets/icons/solar_panelI.png';
final String splitterIcon = 'assets/icons/splitterI.png';
final String storageIcon = 'assets/icons/storageI.png';
final String tetherIcon = 'assets/icons/tetherI.png';
final String tradeIcon = 'assets/icons/tradeI.png';
final String vtolIcon = 'assets/icons/vtolI.png';
final String winchIcon = 'assets/icons/winchI.png';
final String windTurbineIcon = 'assets/icons/windTurbineI.png';
final String workLightIcon = 'assets/icons/work_lightI.png';
final String faultFinderIcon = 'assets/icons/fault_finderI.png';
final String railEngineIcon = 'assets/icons/rail_engineI.png';
final String railPostIcon = 'assets/icons/rail_postI.png';
final String railStationIcon = 'assets/icons/rail_stationI.png';
final String rubyI = 'assets/icons/rubyI.png';
final String shuttleIcon = 'assets/icons/shuttleI.png';
final String tapperIcon = 'assets/icons/tapperI.png';

final List<CraftableModule> modules = [
  CraftableModule(
    name: "Маленький принтер",
    description: "Чета делает",
    image: smallIcon,
    icon: smallIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound],
    size: "Маленький",
    category: "Модули",
  ),
  CraftableModule(
    name: "Упаковщик",
    description: "Чета делает",
    image: packagerIcon,
    icon: packagerIcon,
    byteCost: '1 000',
    ingredients: [graphite],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Блок выравнивания",
    description: "Чета делает",
    image: levelingBlockIcon,
    icon: levelingBlockIcon,
    byteCost: '500',
    ingredients: [fullSmallContainer],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Опоры",
    description: "Чета делает",
    image: tetherIcon,
    icon: tetherIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Кислородые фильтры",
    description: "Чета делает",
    image: oxygenIcon,
    icon: oxygenIcon,
    byteCost: 'Разблокировано',
    ingredients: [resin],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Кислородный бак",
    description: "Чета делает",
    image: oxygenIcon,
    icon: oxygenIcon,
    byteCost: '2 000',
    ingredients: [glass],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Портативный генератор кислорода",
    description: "Чета делает",
    image: oxygenatorIcon,
    icon: oxygenatorIcon,
    byteCost: '10 000',
    ingredients: [nanocarbonAlloy],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Маленький контейнер",
    description: "Чета делает",
    image: canisterIcon,
    icon: canisterIcon,
    byteCost: 'Разблокировано',
    ingredients: [resin],
    size: "Маленький",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Маячок",
    description: "Чета делает",
    image: beaconIcon,
    icon: beaconIcon,
    byteCost: 'Разблокировано',
    ingredients: [quartz],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Желобок",
    description: "Чета делает",
    image: tapperIcon,
    icon: tapperIcon,
    byteCost: '1 000',
    ingredients: [aluminium],
    size: "Маленький",
    category: "Модули",
  ),
  CraftableModule(
    name: "Рабочий фонарь",
    description: "Чета делает",
    image: workLightIcon,
    icon: workLightIcon,
    byteCost: 'Разблокировано',
    ingredients: [copper],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Сигнальные огни",
    description: "Чета делает",
    image: workLightIcon,
    icon: workLightIcon,
    byteCost: '350',
    ingredients: [organic],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Прожектор",
    description: "Чета делает",
    image: workLightIcon,
    icon: workLightIcon,
    byteCost: '2 000',
    ingredients: [tungsten],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Малый генератор",
    description: "Чета делает",
    image: generatorIcon,
    icon: generatorIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound],
    size: "Маленький",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Силовые ячейки",
    description: "Чета делает",
    image: powerIcon,
    icon: powerIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Малая солнечная панель",
    description: "Чета делает",
    image: solarPanelIcon,
    icon: solarPanelIcon,
    byteCost: '800',
    ingredients: [copper],
    size: "Маленький",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Малая ветротурбина",
    description: "Чета делает",
    image: windTurbineIcon,
    icon: windTurbineIcon,
    byteCost: '800',
    ingredients: [copper],
    size: "Маленький",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Малая батарея",
    description: "Чета делает",
    image: batteryIcon,
    icon: batteryIcon,
    byteCost: '2 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Модиф. ускорения",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Модификатор больших участков",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Модификатор малых участков",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Ингибитор",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Модификатор выравнивания",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Модификатор бура 1",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '1 000',
    ingredients: [ceramics],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Модификатор бура 2",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '2 500',
    ingredients: [tungstenCarbide],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Модификатор бура 3",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '3 750',
    ingredients: [diamond],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Динамит",
    description: "Чета делает",
    image: dynamiteIcon,
    icon: dynamiteIcon,
    byteCost: '3 750',
    ingredients: [explosivePowder],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Фейерверки",
    description: "Чета делает",
    image: dynamiteIcon,
    icon: dynamiteIcon,
    byteCost: '3 750',
    ingredients: [explosivePowder],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Малая камера",
    description: "Чета делает",
    image: cameraIcon,
    icon: cameraIcon,
    byteCost: '2 500',
    ingredients: [exoChip],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Малый гудок-труба",
    description: "Чета делает",
    image: hornIcon,
    icon: hornIcon,
    byteCost: '1 000',
    ingredients: [resin],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Малый гудок-пищалка",
    description: "Чета делает",
    image: hornIcon,
    icon: hornIcon,
    byteCost: 'Нельзя распечатать',
    ingredients: [nothing],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Голографич. фигура",
    description: "Чета делает",
    image: figurineIcon,
    icon: figurineIcon,
    byteCost: '3 000',
    ingredients: [plastic],
    size: "Маленький",
    category: "Разное",
  ),
  CraftableModule(
    name: "Каменная фигура",
    description: "Чета делает",
    image: figurineIcon,
    icon: figurineIcon,
    byteCost: 'Нельзя распечатать',
    ingredients: [nothing],
    size: "Маленький",
    category: "Коллекционные",
  ),
  CraftableModule(
    name: "Анализатор почвы",
    description: "Чета делает",
    image: augmentIcon,
    icon: augmentIcon,
    byteCost: '2 000',
    ingredients: [zinc],
    size: "Маленький",
    category: "Дополнения",
  ),
  CraftableModule(
    name: "Сканер зондов",
    description: "Чета делает",
    image: scannerIcon,
    icon: scannerIcon,
    byteCost: '4 000',
    ingredients: [steel],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Джетпак на твердом топливе",
    description: "Чета делает",
    image: engineI,
    icon: engineI,
    byteCost: '5 000',
    ingredients: [aluminiumAlloy],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Гидразиновый джетпак",
    description: "Чета делает",
    image: engineI,
    icon: engineI,
    byteCost: '15 000',
    ingredients: [titaniumAlloy],
    size: "Маленький",
    category: "Виджеты",
  ),
  CraftableModule(
    name: "Ховерборд",
    description: "Чета делает",
    image: hoverboardIcon,
    icon: hoverboardIcon,
    byteCost: 'Разблокировывается в миссии',
    ingredients: [exoChip],
    size: "Маленький",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Мини-РТГ",
    description: "Чета делает",
    image: generatorIcon,
    icon: generatorIcon,
    byteCost: 'Нельзя распечатать',
    ingredients: [nothing],
    size: "Маленький",
    category: "Мощность",
  ),

  CraftableModule(
    name: "Средний принтер",
    description: "Чета делает",
    image: mediumIcon,
    icon: mediumIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound, compound],
    size: "Средний",
    category: "Модули",
  ),
  CraftableModule(
    name: "Генератор кислорода",
    description: "Чета делает",
    image: oxygenatorIcon,
    icon: oxygenatorIcon,
    byteCost: '1 800',
    ingredients: [aluminium, compound],
    size: "Средний",
    category: "Модули",
  ),
  CraftableModule(
    name: "Средний шреддер",
    description: "Чета делает",
    image: shredderIcon,
    icon: shredderIcon,
    byteCost: '1 250',
    ingredients: [iron, iron],
    size: "Средний",
    category: "Модули",
  ),
  CraftableModule(
    name: "Полевое убежище",
    description: "Чета делает",
    image: shelterIcon,
    icon: shelterIcon,
    byteCost: '8 000',
    ingredients: [silicone, graphene],
    size: "Средний",
    category: "Модули",
  ),
  CraftableModule(
    name: "Авторука",
    description: "Чета делает",
    image: shelterIcon,
    icon: shelterIcon,
    byteCost: '1 500',
    ingredients: [aluminium, graphite],
    size: "Средний",
    category: "Модули",
  ),
  CraftableModule(
    name: "Средний контейнер ресурсов",
    description: "Чета делает",
    image: canisterIcon,
    icon: canisterIcon,
    byteCost: '2 000',
    ingredients: [plastic, glass],
    size: "Средний",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Средний контейнер для жидкостей и почвы",
    description: "Чета делает",
    image: canisterIcon,
    icon: canisterIcon,
    byteCost: '2 500',
    ingredients: [plastic, glass],
    size: "Средний",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Сенсор энергии",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '500',
    ingredients: [zinc, copper],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Сенсор хранилища",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '750',
    ingredients: [zinc, quartz],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Сенсор батареи",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '750',
    ingredients: [zinc, graphite],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Кнопка повтора",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '300',
    ingredients: [zinc],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Модуль близости",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '700',
    ingredients: [zinc],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Модуль задержки",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Счетный модуль",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '1 000',
    ingredients: [zinc],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "Удлиннители",
    description: "Чета делает",
    image: extendersIcon,
    icon: extendersIcon,
    byteCost: '500',
    ingredients: [copper],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Переключатель",
    description: "Чета делает",
    image: splitterIcon,
    icon: splitterIcon,
    byteCost: '750',
    ingredients: [copper],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Разветвитель",
    description: "Чета делает",
    image: splitterIcon,
    icon: splitterIcon,
    byteCost: '1 000',
    ingredients: [copper, graphite],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Средний генератор",
    description: "Чета делает",
    image: generatorIcon,
    icon: generatorIcon,
    byteCost: '2 000',
    ingredients: [aluminium, tungsten],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Средняя солнечная панель",
    description: "Чета делает",
    image: solarPanelIcon,
    icon: solarPanelIcon,
    byteCost: '2 000',
    ingredients: [copper, glass],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Средняя ветротурбина",
    description: "Чета делает",
    image: windTurbineIcon,
    icon: windTurbineIcon,
    byteCost: '2 500',
    ingredients: [aluminium, ceramics],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Средняя батарея",
    description: "Чета делает",
    image: batteryIcon,
    icon: batteryIcon,
    byteCost: '3 750',
    ingredients: [lithium, zinc],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "РТГ",
    description: "Чета делает",
    image: generatorIcon,
    icon: generatorIcon,
    byteCost: '12 500',
    ingredients: [nanocarbonAlloy, lithium],
    size: "Средний",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Средняя платформа A",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: 'Разблокировано',
    ingredients: [resin],
    size: "Средний",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Средняя платформа B",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '250',
    ingredients: [resin, resin],
    size: "Средний",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Средняя платформа C",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '400',
    ingredients: [resin],
    size: "Средний",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Высокая платформа",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '750',
    ingredients: [ceramics],
    size: "Средний",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Средняя платформа T",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '750',
    ingredients: [ceramics],
    size: "Средний",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Средняя платформа T",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '400',
    ingredients: [resin, resin],
    size: "Средний",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Средний склад",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: 'Разблокировано',
    ingredients: [resin, resin],
    size: "Средний",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Средний амбар",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: '3 000',
    ingredients: [titanium, titanium],
    size: "Средний",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Высокий склад",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: '400',
    ingredients: [ceramics],
    size: "Средний",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Сиденье планетохода",
    description: "Чета делает",
    image: seatIcon,
    icon: seatIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound, compound],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Трактор",
    description: "Чета делает",
    image: roverIcon,
    icon: roverIcon,
    byteCost: '1 000',
    ingredients: [aluminium, aluminium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Прицеп",
    description: "Чета делает",
    image: roverIcon,
    icon: roverIcon,
    byteCost: '1 500',
    ingredients: [compound, aluminium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Средний гудок для багги",
    description: "Чета делает",
    image: hornIcon,
    icon: hornIcon,
    byteCost: '2 000',
    ingredients: [compound, aluminium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Подъемник",
    description: "Чета делает",
    image: winchIcon,
    icon: winchIcon,
    byteCost: '3 750',
    ingredients: [exoChip, rubber],
    size: "Средний",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Укладчик",
    description: "Чета делает",
    image: paverIcon,
    icon: paverIcon,
    byteCost: '5 000',
    ingredients: [aluminiumAlloy, silicone],
    size: "Средний",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Мощность бура 1",
    description: "Чета делает",
    image: drillIcon,
    icon: drillIcon,
    byteCost: '2 500',
    ingredients: [tungstenCarbide, ceramics],
    size: "Средний",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Мощность бура 2",
    description: "Чета делает",
    image: drillIcon,
    icon: drillIcon,
    byteCost: '5 000',
    ingredients: [titaniumAlloy, tungstenCarbide],
    size: "Средний",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Мощность бура 3",
    description: "Чета делает",
    image: drillIcon,
    icon: drillIcon,
    byteCost: '7 500',
    ingredients: [diamond, titaniumAlloy],
    size: "Средний",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Двигатель на твердом топливе",
    description: "Чета делает",
    image: engineI,
    icon: engineI,
    byteCost: '500',
    ingredients: [aluminium, ammonium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Гидразиновый двигатель",
    description: "Чета делает",
    image: engineI,
    icon: engineI,
    byteCost: '2 750',
    ingredients: [exoChip, steel],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Комплект ж/д точек",
    description: "Чета делает",
    image: railPostIcon,
    icon: railPostIcon,
    byteCost: '750',
    ingredients: [resin, aluminium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Комплект высоких ж/д точек",
    description: "Чета делает",
    image: railPostIcon,
    icon: railPostIcon,
    byteCost: '750',
    ingredients: [resin, aluminium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Комплект узловых ж/д точек",
    description: "Чета делает",
    image: railPostIcon,
    icon: railPostIcon,
    byteCost: '1 000',
    ingredients: [aluminium, aluminium],
    size: "Средний",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Детектор отказов",
    description: "Чета делает",
    image: faultFinderIcon,
    icon: faultFinderIcon,
    byteCost: 'Разблокировывается в миссии',
    ingredients: [astronium, scrap],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "RUBY",
    description: "Чета делает",
    image: rubyI,
    icon: rubyI,
    byteCost: 'Разблокировывается в миссии',
    ingredients: [resin, quartz],
    size: "Средний",
    category: "Разное",
  ),
  CraftableModule(
    name: "ЛРД",
    description: "Чета делает",
    image: sharikIcon,
    icon: sharikIcon,
    byteCost: 'Только найти в мире',
    ingredients: [nothing],
    size: "Средний",
    category: "Коллекционные",
  ),

  CraftableModule(
    name: "Большой принтер",
    description: "Чета делает",
    image: largeIcon,
    icon: largeIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound, compound, compound],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Плавильная печь",
    description: "Чета делает",
    image: smeltingIcon,
    icon: smeltingIcon,
    byteCost: '250',
    ingredients: [compound, resin, resin],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Центрифуга почвы",
    description: "Чета делает",
    image: soilCentrifugeIcon,
    icon: soilCentrifugeIcon,
    byteCost: '750',
    ingredients: [compound, compound, aluminium],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Химическая лаборатория",
    description: "Чета делает",
    image: chemistryIcon,
    icon: chemistryIcon,
    byteCost: '1 600',
    ingredients: [ceramics, glass, tungsten],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Атмосферный конденсатор",
    description: "Чета делает",
    image: chemistryIcon,
    icon: chemistryIcon,
    byteCost: '2 200',
    ingredients: [plastic, glass, iron],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Камера исследований",
    description: "Чета делает",
    image: researchIcon,
    icon: researchIcon,
    byteCost: 'Разблокировано',
    ingredients: [compound, compound, resin],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Платформа заказов EXO",
    description: "Чета делает",
    image: tradeIcon,
    icon: tradeIcon,
    byteCost: 'Разблокировано',
    ingredients: [resin, resin, ceramics],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Платформа обмена",
    description: "Чета делает",
    image: tradeIcon,
    icon: tradeIcon,
    byteCost: '2 500',
    ingredients: [iron, tungsten, exoChip],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Большой шреддер",
    description: "Чета делает",
    image: shredderIcon,
    icon: shredderIcon,
    byteCost: '2 500',
    ingredients: [tungstenCarbide, iron, exoChip],
    size: "Большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Большая солнечная панель",
    description: "Чета делает",
    image: solarPanelIcon,
    icon: solarPanelIcon,
    byteCost: '4 000',
    ingredients: [aluminiumAlloy, glass, copper],
    size: "Большой",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Большая ветротурбина",
    description: "Чета делает",
    image: windTurbineIcon,
    icon: windTurbineIcon,
    byteCost: '3 500',
    ingredients: [aluminiumAlloy, glass, ceramics],
    size: "Большой",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Большая платформа A",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: 'Разблокировано',
    ingredients: [resin, resin],
    size: "Большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Большая платформа B",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '500',
    ingredients: [resin, resin, resin],
    size: "Большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Большая платформа C",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '1 000',
    ingredients: [resin, ceramics, iron],
    size: "Большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Большая платформа T",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '1 000',
    ingredients: [aluminium, aluminium, resin],
    size: "Большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Большая изогнутая платформа",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '1 000',
    ingredients: [compound, ceramics, ceramics],
    size: "Большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Расширенная платформа L",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '500',
    ingredients: [resin, resin],
    size: "Большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Большой контейнер ресурсов",
    description: "Чета делает",
    image: canisterIcon,
    icon: canisterIcon,
    byteCost: '5 000',
    ingredients: [glass, titanium, nanocarbonAlloy],
    size: "Большой",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Большой склад",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: '2 000',
    ingredients: [ceramics, ceramics, ceramics],
    size: "Большой",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Большой амбар A",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: '5 000',
    ingredients: [aluminium, aluminium, steel],
    size: "Большой",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Большой амбар B",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: '7 500',
    ingredients: [steel, steel, steel],
    size: "Большой",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Вагонетка",
    description: "Чета делает",
    image: roverIcon,
    icon: roverIcon,
    byteCost: '1 500',
    ingredients: [compound, aluminium],
    size: "Большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Большое сиденье планетохода",
    description: "Чета делает",
    image: seatIcon,
    icon: seatIcon,
    byteCost: '2 000',
    ingredients: [plastic, plastic, compound],
    size: "Большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Средний планетоход",
    description: "Чета делает",
    image: roverIcon,
    icon: roverIcon,
    byteCost: '3 750',
    ingredients: [plastic, plastic, rubber],
    size: "Большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Кран",
    description: "Чета делает",
    image: craneIcon,
    icon: craneIcon,
    byteCost: '4 500',
    ingredients: [plastic, plastic, rubber],
    size: "Большой",
    category: "Инструменты",
  ),
  CraftableModule(
    name: "Большой туманный горн",
    description: "Чета делает",
    image: hornIcon,
    icon: hornIcon,
    byteCost: '4 000',
    ingredients: [plastic, rubber, steel],
    size: "Большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "СВВП",
    description: "Чета делает",
    image: vtolIcon,
    icon: vtolIcon,
    byteCost: 'Разблокировывается в миссии',
    ingredients: [tungstenCarbide, silicone, exoChip],
    size: "Большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Сфера для отдыха",
    description: "Чета делает",
    image: sharikIcon,
    icon: sharikIcon,
    byteCost: '4 500',
    ingredients: [aluminiumAlloy, rubber],
    size: "Большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Локомотив",
    description: "Чета делает",
    image: railEngineIcon,
    icon: railEngineIcon,
    byteCost: '1 000',
    ingredients: [resin, aluminium, copper],
    size: "Большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "C.O.L.E.",
    description: "Он Коля",
    image: railEngineIcon,
    icon: railEngineIcon,
    byteCost: 'Дается в награду в миссии',
    ingredients: [nothing],
    size: "Большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Вагон",
    description: "Чета делает",
    image: railEngineIcon,
    icon: railEngineIcon,
    byteCost: '1 500',
    ingredients: [resin, resin, aluminium],
    size: "Большой",
    category: "Транспорт",
  ),

  CraftableModule(
    name: "Убежище",
    description: "Чета делает",
    image: shelterIcon,
    icon: shelterIcon,
    byteCost: 'Разблокировано',
    ingredients: [plastic, plastic, silicone, silicone],
    size: "Очень большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Автоэкстрактор",
    description: "Чета делает",
    image: autoextractorIcon,
    icon: autoextractorIcon,
    byteCost: '7 500',
    ingredients: [tungstenCarbide, rubber, steel, exoChip],
    size: "Очень большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Огромный шреддер",
    description: "Чета делает",
    image: autoextractorIcon,
    icon: autoextractorIcon,
    byteCost: '5 000',
    ingredients: [tungstenCarbide, steel, exoChip, exoChip],
    size: "Очень большой",
    category: "Модули",
  ),
  CraftableModule(
    name: "Солнечный массив",
    description: "Чета делает",
    image: solarPanelIcon,
    icon: solarPanelIcon,
    byteCost: '6 000',
    ingredients: [tungstenCarbide, steel, exoChip, exoChip],
    size: "Очень большой",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Ветротурбина XL",
    description: "Чета делает",
    image: windTurbineIcon,
    icon: windTurbineIcon,
    byteCost: '4 500',
    ingredients: [iron, ceramics, graphene, aluminiumAlloy],
    size: "Очень большой",
    category: "Мощность",
  ),
  CraftableModule(
    name: "Средняя сенсорная дуга",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '500',
    ingredients: [zinc, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Сенсорная дуга XL",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '1 000',
    ingredients: [zinc, zinc, quartz, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Сенсорный навес XL",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '1 000',
    ingredients: [zinc, zinc, quartz, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Большое сенсорное кольцо",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '500',
    ingredients: [zinc, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Большое сенсорное кольцо A",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '750',
    ingredients: [zinc, quartz, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Большое сенсорное кольцо B",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '750',
    ingredients: [zinc, zinc, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Сенсорное кольцо A (XL)",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '750',
    ingredients: [zinc, zinc, quartz, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Сенсорное кольцо B (XL)",
    description: "Чета делает",
    image: sensorIcon,
    icon: sensorIcon,
    byteCost: '1 000',
    ingredients: [zinc, zinc, zinc, quartz],
    size: "Очень большой",
    category: "Разное",
  ),
  CraftableModule(
    name: "Особо большая платформа A",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '2 000',
    ingredients: [iron, iron, ceramics, ceramics],
    size: "Очень большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Особо большая платформа B",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '3 000',
    ingredients: [iron, iron, iron, iron],
    size: "Очень большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Особо большая платформа C",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '2 000',
    ingredients: [resin, resin, iron, iron],
    size: "Очень большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Особо большая изогнутая платформа",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '2 000',
    ingredients: [ceramics, ceramics, compound, compound],
    size: "Очень большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Расширенная платформа XL",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '750',
    ingredients: [resin, resin, resin],
    size: "Очень большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Платформа для фигур",
    description: "Чета делает",
    image: platformIcon,
    icon: platformIcon,
    byteCost: '3 000',
    ingredients: [iron, iron, iron, iron],
    size: "Очень большой",
    category: "Платформы",
  ),
  CraftableModule(
    name: "Особо большой склад",
    description: "Чета делает",
    image: storageIcon,
    icon: storageIcon,
    byteCost: '2 000',
    ingredients: [iron, iron, ceramics, ceramics],
    size: "Очень большой",
    category: "Хранилища",
  ),
  CraftableModule(
    name: "Большой планетоход",
    description: "Чета делает",
    image: roverIcon,
    icon: roverIcon,
    byteCost: '5 000',
    ingredients: [aluminiumAlloy, rubber, exoChip, exoChip],
    size: "Очень большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Место приземления",
    description: "Чета делает",
    image: landingIcon,
    icon: landingIcon,
    byteCost: '750',
    ingredients: [aluminium, ceramics, ceramics],
    size: "Очень большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Малый шаттл",
    description: "Чета делает",
    image: shuttleIcon,
    icon: shuttleIcon,
    byteCost: '1 500',
    ingredients: [aluminium, aluminium],
    size: "Очень большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Средний шаттл",
    description: "Чета делает",
    image: shuttleIcon,
    icon: shuttleIcon,
    byteCost: '3 750',
    ingredients: [aluminiumAlloy, ceramics, ceramics],
    size: "Очень большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Большой шаттл",
    description: "Чета делает",
    image: shuttleIcon,
    icon: shuttleIcon,
    byteCost: '5 000',
    ingredients: [titaniumAlloy, ceramics, exoChip, exoChip],
    size: "Очень большой",
    category: "Транспорт",
  ),
  CraftableModule(
    name: "Ж/Д станция",
    description: "Чета делает",
    image: railStationIcon,
    icon: railStationIcon,
    byteCost: '2 500',
    ingredients: [titanium, titanium, copper, quartz],
    size: "Очень большой",
    category: "Транспорт",
  ),
];
