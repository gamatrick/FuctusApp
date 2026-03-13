import SwiftUI

let fruitsData: [Fruit] = [
    Fruit(
        name: "Blueberry",
        headline: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
        image: "blueberry",
        gradientColors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")],
        description: "The blueberry is a flowering shrub that produces berries with a bluish, purple hue. Blueberries are small, around 5–16 millimeters in diameter, and have a flared crown at the end. They are pale greenish at first, then reddish-purple, and finally blue when ripe. They have a sweet taste when mature, with variable acidity.",
        nutrition: [
            NutritionItem(label: "Energy", value: "239 kJ (57 kcal)"),
            NutritionItem(label: "Sugar", value: "9.96 g"),
            NutritionItem(label: "Fat", value: "0.33 g"),
            NutritionItem(label: "Protein", value: "0.74 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Zinc")
        ]
    ),
    Fruit(
        name: "Grapefruit",
        headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
        image: "grapefruit",
        gradientColors: [Color("ColorGrapefruitLight"), Color("ColorGrapefruitDark")],
        description: "The grapefruit (Citrus × paradisi) is a subtropical citrus tree known for its relatively large sour to semisweet, somewhat bitter fruit. Grapefruit is a citrus hybrid originating in Barbados as an accidental cross between the sweet orange (C. sinensis) and pomelo (or shaddock; C. maxima), both of which were introduced from Asia in the seventeenth century.",
        nutrition: [
            NutritionItem(label: "Energy", value: "138 kJ (33 kcal)"),
            NutritionItem(label: "Sugar", value: "7.31 g"),
            NutritionItem(label: "Fat", value: "0.10 g"),
            NutritionItem(label: "Protein", value: "0.8 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Strawberry",
        headline: "Widely appreciated for its characteristic aroma,  red color, juicy texture, and sweetness.",
        image: "strawberry",
        gradientColors: [Color("ColorStrawberryLight"), Color("ColorStrawberryDark")],
        description: "The garden strawberry (Fragaria × ananassa) is a widely grown hybrid species cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates.",
        nutrition: [
            NutritionItem(label: "Energy", value: "136 kJ (33 kcal)"),
            NutritionItem(label: "Sugar", value: "4.89 g"),
            NutritionItem(label: "Fat", value: "0.30 g"),
            NutritionItem(label: "Protein", value: "0.67 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Apple",
        headline: "Apples are one of the most popular, and exceptionally healthy fruit for good reason.",
        image: "apple",
        gradientColors: [Color("ColorAppleLight"), Color("ColorAppleDark")],
        description: "An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. Apples have been grown for thousands of years in Asia and Europe.",
        nutrition: [
            NutritionItem(label: "Energy", value: "218 kJ (52 kcal)"),
            NutritionItem(label: "Sugar", value: "10.39 g"),
            NutritionItem(label: "Fat", value: "0.17 g"),
            NutritionItem(label: "Protein", value: "0.26 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Pomegranate",
        headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
        image: "pomegranate",
        gradientColors: [Color("ColorPomegranateLight"), Color("ColorPomegranateDark")],
        description: "The pomegranate (Punica granatum) is a fruit-bearing deciduous shrub that grows between 5 and 10 m tall. The pomegranate originated in the region extending from Iran to northern India, and has been cultivated since ancient times throughout the Mediterranean region and the Caucasus.",
        nutrition: [
            NutritionItem(label: "Energy", value: "346 kJ (83 kcal)"),
            NutritionItem(label: "Sugar", value: "13.67 g"),
            NutritionItem(label: "Fat", value: "1.17 g"),
            NutritionItem(label: "Protein", value: "1.67 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Mango",
        headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
        image: "mango",
        gradientColors: [Color("ColorMangoLight"), Color("ColorMangoDark")],
        description: "A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India. Mangoes are now grown in most frost-free tropical and warmer subtropical climates.",
        nutrition: [
            NutritionItem(label: "Energy", value: "250 kJ (60 kcal)"),
            NutritionItem(label: "Sugar", value: "13.7 g"),
            NutritionItem(label: "Fat", value: "0.38 g"),
            NutritionItem(label: "Protein", value: "0.82 g"),
            NutritionItem(label: "Vitamins", value: "A, B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Lime",
        headline: "Sour, round, and bright green citrus fruits. Limes are high in vitamin C, antioxidants, and other nutrients.",
        image: "lime",
        gradientColors: [Color("ColorLimeLight"), Color("ColorLimeDark")],
        description: "Lime is a citrus fruit, which is typically round, green in color and contains acidic juice vesicles. There are several species of citrus trees whose fruits are called limes, including the Key lime (Citrus aurantiifolia), Persian lime, kaffir lime, and desert lime. Limes are an excellent source of vitamin C.",
        nutrition: [
            NutritionItem(label: "Energy", value: "126 kJ (30 kcal)"),
            NutritionItem(label: "Sugar", value: "1.69 g"),
            NutritionItem(label: "Fat", value: "0.2 g"),
            NutritionItem(label: "Protein", value: "0.7 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Pear",
        headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
        image: "pear",
        gradientColors: [Color("ColorPearLight"), Color("ColorPearDark")],
        description: "The pear tree and shrub are a species of genus Pyrus in the family Rosaceae, bearing the pomaceous fruit of the same name. Several species of pear are valued for their edible fruit and juices, while others are cultivated as trees. The tree is medium-sized and native to coastal and mildly temperate regions.",
        nutrition: [
            NutritionItem(label: "Energy", value: "239 kJ (57 kcal)"),
            NutritionItem(label: "Sugar", value: "9.75 g"),
            NutritionItem(label: "Fat", value: "0.14 g"),
            NutritionItem(label: "Protein", value: "0.36 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Plum",
        headline: "Plums are a diverse group of species. The commercially important plum trees are medium-sized.",
        image: "plum",
        gradientColors: [Color("ColorPlumLight"), Color("ColorPlumDark")],
        description: "A plum is a fruit of some species in Prunus subg. Prunus. Dried plum fruits are called dried plums or prunes, although prunes are a distinct type of plum. Plums may have been one of the first fruits domesticated by humans.",
        nutrition: [
            NutritionItem(label: "Energy", value: "192 kJ (46 kcal)"),
            NutritionItem(label: "Sugar", value: "9.92 g"),
            NutritionItem(label: "Fat", value: "0.28 g"),
            NutritionItem(label: "Protein", value: "0.70 g"),
            NutritionItem(label: "Vitamins", value: "A, B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Watermelon",
        headline: "Watermelon is a plant species in the family Cucurbitaceae, a vine-like flowering plant.",
        image: "watermelon",
        gradientColors: [Color("ColorWatermelonLight"), Color("ColorWatermelonDark")],
        description: "Watermelon (Citrullus lanatus) is a plant species in the family Cucurbitaceae, a vine-like flowering plant originally domesticated in West Africa. It is a highly cultivated fruit worldwide, with more than 1,000 varieties.",
        nutrition: [
            NutritionItem(label: "Energy", value: "127 kJ (30 kcal)"),
            NutritionItem(label: "Sugar", value: "6.2 g"),
            NutritionItem(label: "Fat", value: "0.15 g"),
            NutritionItem(label: "Protein", value: "0.61 g"),
            NutritionItem(label: "Vitamins", value: "A, B1, B2, B3, B5, B6, B9, C, E"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Gooseberry",
        headline: "Gooseberries are small, round berries with a tart flavour, popular in European cuisine.",
        image: "gooseberry",
        gradientColors: [Color("ColorGooseberryLight"), Color("ColorGooseberryDark")],
        description: "A gooseberry is a fruit of several species of Ribes. The berries can vary in size, from tiny as a pea to as large as a small plum, and come in colors from pale yellow-green to deep red or dark purple. Gooseberries are rich in vitamins and antioxidants.",
        nutrition: [
            NutritionItem(label: "Energy", value: "184 kJ (44 kcal)"),
            NutritionItem(label: "Sugar", value: "6.15 g"),
            NutritionItem(label: "Fat", value: "0.58 g"),
            NutritionItem(label: "Protein", value: "0.88 g"),
            NutritionItem(label: "Vitamins", value: "A, B1, B2, B3, B5, B6, C, E"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Cherry",
        headline: "A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe.",
        image: "cherry",
        gradientColors: [Color("ColorCherryLight"), Color("ColorCherryDark")],
        description: "A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit). The cherry fruits of commerce usually are obtained from a limited number of species such as cultivars of the sweet cherry, Prunus avium.",
        nutrition: [
            NutritionItem(label: "Energy", value: "209 kJ (50 kcal)"),
            NutritionItem(label: "Sugar", value: "8.5 g"),
            NutritionItem(label: "Fat", value: "0.3 g"),
            NutritionItem(label: "Protein", value: "1.0 g"),
            NutritionItem(label: "Vitamins", value: "A, B1, B2, B3, B5, B6, B9, C, E, K"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    ),
    Fruit(
        name: "Lemon",
        headline: "The lemon is a species of small evergreen tree in the flowering plant family Rutaceae.",
        image: "lemon",
        gradientColors: [Color("ColorLemonLight"), Color("ColorLemonDark")],
        description: "The lemon (Citrus limon) is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily northeastern India. Its fruits are round in shape. The tree's ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world.",
        nutrition: [
            NutritionItem(label: "Energy", value: "121 kJ (29 kcal)"),
            NutritionItem(label: "Sugar", value: "2.5 g"),
            NutritionItem(label: "Fat", value: "0.3 g"),
            NutritionItem(label: "Protein", value: "1.1 g"),
            NutritionItem(label: "Vitamins", value: "B1, B2, B3, B5, B6, B9, C, E"),
            NutritionItem(label: "Minerals", value: "Calcium, Iron, Magnesium, Manganese, Phosphorus, Potassium, Zinc")
        ]
    )
]
