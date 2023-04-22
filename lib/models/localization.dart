class Localization {
  Localization({
    required this.en,
    required this.de,
    required this.es,
    required this.fr,
    required this.it,
    required this.pl,
    required this.ro,
    required this.hu,
    required this.nl,
    required this.pt,
    required this.sv,
    required this.vi,
    required this.tr,
    required this.ru,
    required this.ja,
    required this.zh,
    required this.zhTw,
    required this.ko,
    required this.ar,
    required this.th,
    required this.id,
    required this.cs,
    required this.da,
    required this.el,
    required this.hi,
    required this.no,
    required this.sk,
    required this.uk,
    required this.he,
    required this.fi,
    required this.bg,
    required this.hr,
    required this.lt,
    required this.sl,
  });

  final String? en;
  final String? de;
  final String? es;
  final String? fr;
  final String? it;
  final String? pl;
  final String? ro;
  final String? hu;
  final String? nl;
  final String? pt;
  final String? sv;
  final String? vi;
  final String? tr;
  final String? ru;
  final String? ja;
  final String? zh;
  final String? zhTw;
  final String? ko;
  final String? ar;
  final String? th;
  final String? id;
  final String? cs;
  final String? da;
  final String? el;
  final String? hi;
  final String? no;
  final String? sk;
  final String? uk;
  final String? he;
  final String? fi;
  final String? bg;
  final String? hr;
  final String? lt;
  final String? sl;

  factory Localization.fromJson(Map<String, dynamic> json) {
    return Localization(
      en: json["en"],
      de: json["de"],
      es: json["es"],
      fr: json["fr"],
      it: json["it"],
      pl: json["pl"],
      ro: json["ro"],
      hu: json["hu"],
      nl: json["nl"],
      pt: json["pt"],
      sv: json["sv"],
      vi: json["vi"],
      tr: json["tr"],
      ru: json["ru"],
      ja: json["ja"],
      zh: json["zh"],
      zhTw: json["zh-tw"],
      ko: json["ko"],
      ar: json["ar"],
      th: json["th"],
      id: json["id"],
      cs: json["cs"],
      da: json["da"],
      el: json["el"],
      hi: json["hi"],
      no: json["no"],
      sk: json["sk"],
      uk: json["uk"],
      he: json["he"],
      fi: json["fi"],
      bg: json["bg"],
      hr: json["hr"],
      lt: json["lt"],
      sl: json["sl"],
    );
  }

  Map<String, dynamic> toJson() => {
        "en": en,
        "de": de,
        "es": es,
        "fr": fr,
        "it": it,
        "pl": pl,
        "ro": ro,
        "hu": hu,
        "nl": nl,
        "pt": pt,
        "sv": sv,
        "vi": vi,
        "tr": tr,
        "ru": ru,
        "ja": ja,
        "zh": zh,
        "zh-tw": zhTw,
        "ko": ko,
        "ar": ar,
        "th": th,
        "id": id,
        "cs": cs,
        "da": da,
        "el": el,
        "hi": hi,
        "no": no,
        "sk": sk,
        "uk": uk,
        "he": he,
        "fi": fi,
        "bg": bg,
        "hr": hr,
        "lt": lt,
        "sl": sl,
      };
}
