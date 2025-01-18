
class Words{
  static List<String> words_english = ["regularly", "narrow", "disrupt", "measurement", "properly", "current", "recognition", "irregular", "willing", "transmit", "anticipation", "decide", "transformation", "conversion", "peculiar", "dissolve", "corrupt", "substantially", "familiarity", "implication", "beneficial", "substitute", "predictor", "conceal", "prediction", "approve", "significant", "generalisation", "necessity", "perform", "credible", "vaguely", "accurately", "elaborate", "conformity", "functions", "prevent", "suspend", "delete", "openly", "extensively", "rebellion", "fairly", "repetitive", "widespread", "regulate", "failure", "accidentally", "broadly", "simple", "qualification", "regular", "resilience", "weakness", "perception", "recently", "respect", "delay", "react", "complain", "validity", "widely", "mandatory", "measuring", "unconsciously", "successful", "formally", "lately", "convertible", "irreversible", "pattern", "consequence", "gradually", "observation", "anniversary", "improvement", "foster", "invent", "plentifully", "society", "basic", "suspicious", "revolutionise", "relieve", "incident", "bizarre", "breed", "rarely", "benefit", "currently", "distribution", "sustain", "densely", "preventive", "abundance", "enslavement", "sustainably", "deniable", "crowded", "disappear", "progression", "mediation", "restriction", "presently", "precious", "sufficient", "vital", "reception", "convenient", "quality", "remarkable", "fulfil", "expedition", "incidentally", "gentle", "tendency", "refusal", "essential", "disturb", "intention", "exhausting", "memorial", "address", "temperature", "observations", "distinct", "opportunity", "exaggerate", "collaboration", "opposition", "variety", "frequent", "accuracy", "differentiate", "shortly", "findings", "difficulty", "command", "punishment", "distinguish", "deceptive", "casually", "refuse", "revival", "difference", "hesitation", "confirmation", "importantly", "accumulation", "violation", "sensation", "inherit", "solution", "complaint", "enforce", "equation", "extension", "boost", "chronic", "substantial", "kindly", "precisely", "magnify", "socially", "violate", "predict", "detectable", "mutually", "prospect", "detect", "reluctance", "increasingly", "elimination", "entertain", "obtain", "examination", "cures", "create", "randomly", "fragile", "adherence", "adequate", "facilities", "carefully", "eliminate", "notoriously", "challenge", "correctly", "destruction", "operate", "recession", "trigger", "attribute", "erroneous", "domestic", "obstacle", "sustainable", "proximity", "acceptability", "Invitation", "intervention", "harmful", "fail", "identification", "simultaneous", "primary", "coherently", "dependent", "ensure", "equally", "preciously", "excitedly", "approximately", "urgently", "separation", "accessible", "significantly", "inconveniently", "originally", "ideally", "monthly", "pollute", "inconvenience", "measure", "domestication", "obligation", "overcome", "inevitable", "hinder", "fiercely", "reversible", "exception", "abandon", "choose", "concern", "angrily", "admiration", "redundant", "application", "purchase", "decisive", "excavate", "profit", "reservation", "familiarly", "derive", "threat", "avoidance", "considerable", "launch", "dislike", "election", "achievable", "constraint", "enhance", "variance", "imitation", "various", "admission", "assumption", "recycle", "diverse", "Injure", "calm", "temporary", "habit", "correspondence", "extract", "subtly", "early", "trait", "enormously", "outdoor", "advance", "enable", "prevalence", "reluctant", "extinction", "insufficiently", "manageable", "close", "adjust", "misleading", "diagnosis", "practical", "outbreak", "honestly", "sentence", "precaution", "excessively", "miserably", "diversity", "demanding", "desperately", "consequent", "doubtfully", "safety", "disastrous", "simultaneously", "reflection", "alteration", "deteriorate", "distinction", "accusations", "consistent", "adversely", "correlation", "commitment", "install", "speculate", "confuse", "prescription", "expense", "deliberately", "admire", "harshly", "resist", "suspiciously", "resolution", "entirely", "constantly", "missing", "temporarily", "replace", "replacement", "privately", "component", "briefly", "forcefully", "explanation", "severe", "primarily", "scarcely", "virtually", "thick", "tidy", "comment", "globally", "especially", "industry", "peculiarly", "justification", "absorption", "trivial", "rapidly", "Image", "deficiency", "prefer", "happens", "imply", "instinctively", "heavily", "sensitive", "quarrel", "Inform", "susceptibility", "distortion", "worsen", "fluently", "convenience", "transparent", "restrict", "redundancy", "defeat", "hopefully", "inferiority", "Implementation", "spread", "defend", "hospitable", "vulnerable", "validation", "mandate", "durability", "specialty", "destroy", "happen", "habitable", "growth", "eligible", "structure", "challenging", "defect", "severely", "ambition", "devastating", "efficiently", "disapproval", "crucial", "compulsory", "capacity", "attend", "thin", "consume", "incidence", "extravagantly", "approval", "supply", "inaccurately", "devote", "inevitably", "leading", "neglect", "adopt", "wide", "intentionally", "resistance", "sufficiency", "cultivate", "maintenance", "conflict", "ability", "distract", "approach", "hardly", "include", "compete", "undeniable", "sanction", "foreign", "raised", "acquisition", "superiority", "limitation", "recklessly", "eventually", "dramatically", "memory", "exclude", "similarly", "horizon", "inhibition", "consult", "appeal", "coincidence", "irrationally", "disturbing", "conventionally", "fortunately", "attempt", "suspension", "regulation", "firmly", "respectively", "validate", "offensive", "coincidentally", "incompetently", "implicitly", "indifferent", "investigate", "prepare", "appreciate", "pretend", "collect", "appropriate", "rescue", "exposure", "blind", "ancient", "investment", "publicly", "selfishly", "endure", "public", "dedicate", "slightly", "celebration", "elaborately", "task", "precise", "relief", "sparingly", "decline", "diminish", "suddenly", "available", "purpose", "fluctuation", "recognise", "offend", "divide", "quickly", "exhausted", "spiritual", "acceptance", "virtual", "frozen", "susceptible", "designate", "desirable", "deficit", "cautionary", "efficient", "adjustment", "regret", "hostile", "descriptive", "loyally", "spontaneously", "ambiguous", "attitude", "requirement", "disqualify", "healthy", "irrelevant", "reluctantly", "treatment", "abuse", "inspiration", "conservation", "consistently", "nourish", "weak", "rejection", "production", "variable", "resolve", "allow", "argue", "intensely", "composition", "appearance", "intuitively", "mystery", "reveal", "description", "initially", "substance", "absence", "contain", "communicative", "recovery", "offensively", "respectable", "protect", "subscription", "negotiation", "achievement", "invasion", "immensely", "movement", "lecture", "changeable", "thrown", "inhabit", "reveal", "triumph", "impatiently", "avoidable", "instruction", "partly", "easily", "breakthrough", "irresponsibly", "occur", "priority", "innovation", "occupation", "extend", "threaten", "process", "implement", "loudly", "expansion", "reverse", "admit", "possession", "formerly", "outweigh", "predisposition", "deprivation", "allowing", "temptation", "complete", "unreliable", "impression", "shortcoming", "preliminary", "leave", "penalty", "politely", "intentional", "accelerate", "interact", "reasonably", "interrupt", "dominantly", "deliberate", "notorious", "endurance", "alter", "rare", "treat", "offer", "strange", "vague", "objection", "immediately", "cause"];
  static List<String> words_translated = ["düzenli olarak", "dar", "bozmak", "ölçüm", "düzgün bir şekilde", "akım", "tanıma", "düzensiz", "hevesli", "iletmek", "beklenti", "karar vermek", "dönüşüm", "dönüştürmek", "özel eşya", "çözünmek", "yozlaşmış", "esasen", "aşinalık", "ima", "yararlı", "yerine geçmek", "tahminci", "gizlemek", "tahmin", "onaylamak", "önemli", "genelleme", "gereklilik", "rol yapmak", "güvenilir", "belli belirsiz", "doğru bir şekilde", "detaylandırmak", "uygunluk", "işlevler", "önlemek", "askıya almak", "silmek", "açıkça", "kapsamlı olarak", "isyan", "adil bir şekilde", "tekrarlayan", "yaygın", "düzenlemek", "arıza", "kazara", "genel olarak", "basit", "vasıf", "düzenli", "dayanıklılık", "zayıflık", "algı", "son zamanlarda", "saygı", "gecikme", "tepki", "şikayet etmek", "geçerlilik", "yaygın olarak", "zorunlu", "ölçüm", "bilinçsizce", "başarılı", "resmen", "son zamanlarda", "çevrilebilir", "geri döndürülemez", "model", "sonuçlar", "gitgide", "gözlem", "yıl dönümü", "gelişim", "bakmak", "icat etmek", "bolca", "toplum", "temel", "şüpheli", "devrim yapmak", "rahatlamak", "olay", "tuhaf", "yavrulamak", "nadiren", "fayda", "şu anda", "dağıtım", "güç vermek", "yoğun bir şekilde", "önleyici", "bolluk", "köleleştirme", "sürdürülebilir", "inkar edilebilir", "kalabalık", "yok olmak", "ilerleme", "arabuluculuk", "kısıtlama", "şu anda", "değerli", "yeterli", "hayati", "resepsiyon", "uygun", "kalite", "dikkat çekici", "yerine getirmek", "sefer", "tesadüfen", "nazik", "eğilim", "ret", "gerekli", "rahatsız etmek", "niyet", "yorucu", "anıt", "adres", "sıcaklık", "gözlemler", "belirgin", "fırsat", "abartmak", "işbirliği", "muhalefet", "çeşitlilik", "sık", "kesinlik", "ayırt etmek", "kısaca", "bulgular", "zorluk", "emretmek", "ceza", "ayırt etmek", "aldatıcı", "gelişigüzel", "reddetmek", "canlanma", "fark", "tereddüt", "onayla", "önemlisi", "birikim", "ihlal", "duygu", "miras aldın", "çözüm", "şikayet", "zorlamak", "denklem", "eklenti", "artırmak", "kronik", "varlıklı", "nazikçe", "açık olarak", "büyütmek", "sosyal olarak", "ihlal etmek", "tahmin etmek", "tespit edilebilir", "karşılıklı", "olasılık", "tespit etmek", "isteksizlik", "giderek", "eliminasyon", "eğlendirmek", "elde etmek", "muayene", "tedavi eder", "yaratmak", "rastgele", "kırılgan", "bağlılık", "yeterli", "tesisler", "dikkatlice", "elemek", "herkesin bildiği gibi", "meydan okumak", "doğru şekilde", "yıkım", "işletmek", "durgunluk", "tetiklemek", "bağlanmak", "hatalı", "yerel", "engel", "sürdürülebilir", "yakınlık", "kabul edilebilirlik", "davet", "araya girmek", "zararlı", "hata", "tanılama", "eşzamanlı", "öncelik", "tutarlı bir şekilde", "bağımlı", "emin olmak", "eşit olarak", "çok kıymetli", "heyecanla", "yaklaşık olarak", "acilen", "ayrılma", "erişilebilir", "önemli ölçüde", "uygunsuz bir şekilde", "aslında", "ideal olarak", "aylık", "kirletmek", "rahatsızlık", "ölçüm", "evcilleştirme", "yükümlülük", "üstesinden gelmek", "kaçınılmaz", "engellemek", "şiddetle", "geri dönüşümlü", "istisna", "terk etmek", "seçmek", "kaygı", "öfkeyle", "hayranlık", "gereksiz", "başvuru", "satın almak", "belirleyici", "kazmak", "kâr", "rezervasyon", "tanıdıkça", "türetmek", "tehdit", "kaçınma", "hatırı sayılır", "öğle yemeği", "beğenmemek", "seçim", "başarılabilir", "kısıtlama", "genişletmek", "varyans", "taklit", "çeşitli", "kabul", "varsayım", "geri dönüşüm", "türlü", "yaralanma", "sakinlik", "geçici", "alışkanlık", "yazışma", "çıkarmak", "incelikle", "erken", "karakter", "son derece", "dış mekan", "ilerlemek", "olanak vermek", "yaygınlık", "tereddüt ediyorlar", "nesli tükenme", "yetersiz", "yönetilebilir", "kapalı", "ayarlamak", "yanıltıcı", "teşhis", "pratik", "salgın", "açıkçası", "cümle", "önlem", "aşırı derecede", "sefil bir şekilde", "çeşitlilik", "talep etmek", "umutsuzca", "sonuç olarak", "şüphesiz", "emniyet", "felaket", "eşzamanlı", "refleks", "değişiklik", "bozulmak", "ayrım", "suçlamalar", "tutarlı", "olumsuz olarak", "korelasyon", "bağlılık", "düzenlemek", "spekülasyon yapmak", "kafası karışmak", "reçete", "gider", "kasten", "beğenmek", "sertçe", "direnmek", "şüpheyle", "çözünürlük", "baştan sona", "sürekli", "eksik", "geçici", "yer değiştirmek", "yenisiyle değiştirme", "özel olarak", "bileşen", "kısaca", "zorla", "açıklama", "haşin", "öncelikle", "hemen hemen", "sanal olarak", "kalın", "düzenli", "yorum", "küresel olarak", "özellikle", "endüstri", "tuhaf bir şekilde", "meşrulaştırma", "emilim", "önemsiz", "hızlıca", "resim", "eksiklik", "tercih etmek", "olur", "ima etmek", "içgüdüsel olarak", "ağır şekilde", "hassas", "kavga", "bilgi vermek", "duyarlılık", "çarpıtma", "kötüleştirmek", "akıcı", "kolaylık", "şeffaf", "kısıtlamak", "fazlalık", "yenmek", "umutla", "aşağılık", "uygulama", "yaymak", "savunmak", "misafirperver", "hassas", "doğrulama", "yetki", "dayanıklılık", "uzmanlık", "tahrip etmek", "olmak", "yaşanabilir", "büyüme", "hak sahibi", "yapı", "zorlu", "kusur", "şiddetli", "tutku", "yıkıcı", "verimli bir şekilde", "onaylamama", "hayati", "zorunlu", "kapasite", "katılmak", "ince", "tüketmek", "görülme sıklığı", "aşırı", "onay", "tedarik", "yanlış bir şekilde", "adamak", "kaçınılmaz olarak", "önde gelen", "ihmal etmek", "evlat edinmek", "geniş", "kasıtlı olarak", "rezistans", "yeterlilik", "yetiştirmek", "bakım", "anlaşmazlık", "yetenek", "dikkatini dağıtmak", "yaklaşmak", "zorlu", "katmak", "rekabet etmek", "inkar edilemez", "yaptırım", "yabancı", "kabarık", "kazanma", "üstünlük", "sınırlama", "pervasızca", "sonunda", "dramatik bir şekilde", "hafıza", "hariç tutmak", "benzer şekilde", "ufuk", "engelleme", "danışmak", "çekici", "tesadüf", "mantıksızca", "rahatsız edici", "geleneksel olarak", "neyse ki", "girişim", "süspansiyon", "düzenleme", "sıkıca", "sırasıyla", "doğrulamak", "saldırgan", "tesadüfen", "beceriksizce", "örtülü olarak", "kayıtsız", "araştırmak", "hazırlanmak", "takdirle karşılamak", "numara yapmak", "toplamak", "uygun", "kurtarmak", "maruziyet", "kör", "antik", "yatırım", "halka açık", "bencilce", "dayanmak", "halk", "adamak", "biraz", "kutlama", "özenle", "görev", "kesin", "rahatlama", "tedbirli bir şekilde", "reddetmek", "azaltmak", "birden", "mevcut", "amaç", "dalgalanma", "tanımak", "gücendirmek", "bölmek", "hızlıca", "yorgun", "manevi", "kabul", "sanal", "dondurulmuş", "duyarlı", "tayin etmek", "arzu edilir", "açık", "uyarıcı", "verimli", "ayar", "pişmanlık", "düşmanca", "tanımlayıcı", "sadakatle", "kendiliğinden", "belirsiz", "davranış", "gereklilik", "diskalifiye etmek", "sağlıklı", "alakasız", "isteksizce", "tedavi", "suistimal etmek", "esin", "koruma", "sürekli", "beslemek", "zayıf", "ret", "üretme", "değişken", "çözmek", "izin vermek", "tartışmak", "yoğun bir şekilde", "kompozisyon", "dış görünüş", "sezgisel olarak", "gizem", "ortaya çıkarmak", "tanım", "ilk olarak", "madde", "yokluk", "içermek", "iletişimsel", "iyileşmek", "saldırganca", "saygın", "korumak", "abonelik", "müzakere", "başarı", "istila", "son derece", "hareket", "ders", "değiştirilebilir", "fırlatıldı", "yaşamak", "ortaya çıkarmak", "zafer", "sabırsızlıkla", "önlenebilir", "talimat", "kısmen", "kolayca", "atılım", "sorumsuzca", "meydana gelmek", "öncelik", "yenilik", "meslek", "uzatmak", "tehdit etmek", "işlem", "uygulamak", "yüksek sesle", "genleşme", "tersi", "itiraf etmek", "mülk", "vakti zamanında", "daha ağır gelmek", "yatkınlık", "yoksunluk", "izin vermek", "ayartma", "tamamlamak", "güvenilmez", "izlenim", "eksiklik", "ön hazırlık", "ayrılmak", "ceza", "kibarca", "kasıtlı", "hızlanmak", "etkileşime girmek", "makul olarak", "yarıda kesmek", "baskın olarak", "kasten, kasıtlı, planlı", "kötü şöhretli", "dayanıklılık", "değiştirmek", "nadir", "davranmak", "teklif", "garip", "başıboş dolaşmak", "itiraz", "hemen", "neden"];

  static List<String> words_learned = [];
  static List<String> words_not_learned = [];




}
