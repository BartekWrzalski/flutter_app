enum Category {
  Beer,
  Liqueur,
  Alcohol
}

class Product {
  late Category category;
  late String imageName;
  late String name;
  late String price;
  late String size;
  late String percent;
  late String about;
  static var products = List<Product>.empty(growable: true);

  Product(this.category, this.imageName, this.name, this.price, this.size, this.percent, this.about) {
  }
}

void createProducts() {
  Product.products.add(Product(Category.Beer, "images/products/ksipa.png",        "Książęce IPA",               "4.49",  "500", "5.4", "IPA zyskała popularność na całym świecie jako symbol piwnej rewolucji. Ten wariant swój intensywny aromat zawdzięcza wyjątkowej mieszance aż sześciu odmian amerykańskiego chmielu. Można w nim odnaleźć akordy cytrusów, dojrzałego ananasa i mango oraz nuty herbaciane. Owocowy bukiet piwa kontrastuje z wytrawną, chmielową goryczką. Tworzy to aromatyczną i orzeźwiającą kompozycję."));
  Product.products.add(Product(Category.Beer, "images/products/kscherryale.png",  "Książęce Cherry Ale",        "4.99",  "500", "4.1", "To najbardziej różnorodne smakowo piwo w portfolio marki Książęce. Należy do nowych gatunków piwa, jednakże swoimi korzeniami sięga w głąb największych tradycji piwnego świata. Łączy w sobie pełnie słodowego smaku, soczysty aromat dojrzałych wiśni i orzeźwiający goryczkowo-kwasowy finisz. Podczas degustacji, zarówno smak, jak i zapach ewoluują, zapewniając piwu niespotykaną dotąd wielowymiarowość."));
  Product.products.add(Product(Category.Beer, "images/products/ksciemne.png",     "Książęce Ciemne",            "4.19",  "500", "4.1", "Jest to piwo dolnej fermentacji o delikatnym, złożonym smaku biorącym się z zastosowania kilku odmian słodu jęczmiennego. Biszkoptowo-miodowe nuty zawdzięcza zastosowaniu słodów: pilzneńskiego oraz monachijskiego, natomiast czekoladowo-kawowe akcenty to zasługa słodu karmelowego i palonego. Ma cieszyć zmysły karmelową pełnią smaku i orzeźwiać posmakiem palonego ziarna słodu."));
  Product.products.add(Product(Category.Beer, "images/products/kslager.png",      "Książęce Czerwony Lager",    "4.49",  "500", "4.9", "Swój wyjątkowy, miedziany odcień i kremową pianę zawdzięcza kompozycji słodów pilzneńskich i karmelowych. Dostarczają one piwu także aromatycznych nut karmelu, toffi i prażonych orzechów. Chmielowa goryczka podkreśla wytrawny charakter piwa, jednocześnie kontrastując z bukietem słodowych aromatów."));
  Product.products.add(Product(Category.Beer, "images/products/ksporter.png",     "Książęce Porter",            "5.29",  "500", "7.9", "To esencjonalne piwo warzone metodą dolnej fermentacji. Odznacza się pełnym smakiem, aromatami kawy, karmelu i czekolady oraz czarnowiśniową barwą dzięki wykorzystaniu ciemnych, palonych słodów. Rozgrzewające, szlachetne nuty alkoholowe splatają się z zapachami słodowymi. To uzupełnia profil piwa o akcenty dojrzałych wiśni i czarnych porzeczek."));
  Product.products.add(Product(Category.Beer, "images/products/kspszen.png",      "Książęce Złote Pszeniczne",  "4.49",  "500", "4.9", "Łączy w sobie cechy naturalnie mętnych piw pszenicznych i tradycyjnych lagerów. Słody pszeniczne dają tutaj czysty, orzeźwiający zapach zbożowy. Natomiast drożdże dolnej fermentacji odpowiadają za owocowo-kwiatowy bukiet z dominującymi nutami miodu lipowego i dojrzałej brzoskwini. Delikatny, kwasowy finisz piwa doskonale orzeźwia i gasi pragnienie. Z kolei gęsta piana cieszy zmysł wzroku."));
  Product.products.add(Product(Category.Beer, "images/products/ksweizen.png",     "Książęce Weizen",            "4.49",  "500", "5.3", "Niezwykle orzeźwiające piwo pszeniczne. Pełnię smaku uzupełnia owocowo-korzenny bukiet – to zasługa zastosowania specjalnego szczepu drożdży górnej fermentacji. Jest delikatnie nachmielone, skąd wynika subtelna, przyjemna goryczka. Weizen słynie z pikantnych nut goździkowych i aromatu dojrzałych bananów. Jego znakiem rozpoznawczym jest także niezwykle trwała i gęsta piana."));
  Product.products.add(Product(Category.Beer, "images/products/pilsner.png",      "PilsnerUrquell",             "5.99",  "500", "5.4", ""));
  Product.products.add(Product(Category.Beer, "images/products/budweiser.png",    "Budweiser",                  "4.99",  "500", "5.4", ""));
  Product.products.add(Product(Category.Beer, "images/products/grolsh.png",       "Grolsch",                    "6.49",  "500", "5.4", ""));

  Product.products.add(Product(Category.Liqueur, "images/products/winered.png",    "Mestro Primitivo Puglia",  "48.00", "750", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/winewhite.png",  "Badagoni Alazai Valley",   "26.00", "750", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/dryver.png",     "Vermouth Cinzano Dry",     "21.99", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/sweetver.png",   "Vermouth Cinzano Rosso",   "21.99", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/aperol.png",     "Likier Aperol",            "59.49", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/campari.png",    "Likier Campari",           "64.99", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/amaretto.png",   "Likier Amaretto",          "37.99", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/blue.png",       "Likier Blue Curaçao",      "69.99", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/malibu.png",     "Rum Kokosowy Malibu",      "65.99", "700", "", ""));
  Product.products.add(Product(Category.Liqueur, "images/products/kahlua.png",     "Likier Kahlua",            "89.99", "700", "", ""));

  Product.products.add(Product(Category.Alcohol, "images/products/vodka.png",        "Wódka Biały Bocian",             "42.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/whiskey.png",      "Whisky Famous Grouse Ruby Cask", "76.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/bacardiwhite.png", "Rum Bacardi White",              "59.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/bacardiblack.png", "Rum Bacardi Black",              "59.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/bacardigold.png",  "Rum Bacardi Gold",               "59.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/gin.png",          "Gin Seagram's",                  "49.49", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/teqwhite.png",     "Tequilla El Jimador Bianco",     "94.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/teqgold.png",      "Tequilla El Jiamdor Reposado",   "94.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/absynt.png",       "Absynt Verdoyante",              "99.99", "700", "", ""));
  Product.products.add(Product(Category.Alcohol, "images/products/cointreau.png",    "Likier Cointreau",               "99.49", "700", "", ""));
}
