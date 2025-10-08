import '../models/product.dart';

// --- LISTE DES CATÉGORIES ---
List<String> categories = [
  "Gâteaux Signature",
  "Mousses & Entremets",
  "Gâteaux Événementiels",
  "Viennoiseries",
  "Millefeuilles",
  "Feuilletés Salés",
  "Choux & Profiteroles",
];

// --- LISTE DES PRODUITS ---
List<Product> products = [
  Product(
    id: 1,
    name: 'Tarte aux Fraises',
    description: 'Délicieuse tarte aux fraises avec pâte sablée maison.',
    price: 25.0,
    imageUrl: 'https://i.postimg.cc/3rPTxTvp/recette-tarte-aux-fraises-1.jpg',
    category: 'Gâteaux Signature',
  ),
  Product(
    id: 2,
    name: 'Éclair au Chocolat',
    description: 'Éclair classique au chocolat noir et crème pâtissière.',
    price: 15.0,
    imageUrl: 'https://i.postimg.cc/qB6PY55B/clair-au-Chocolat.jpg',
    category: 'Choux & Profiteroles',
  ),
  Product(
    id: 3,
    name: 'Mousse au Chocolat',
    description: 'Mousse légère et onctueuse au chocolat noir.',
    price: 20.0,
    imageUrl: 'https://i.postimg.cc/wBBPkfmV/gateau-mousse-au-chocolat.webp',
    category: 'Mousses & Entremets',
  ),
  Product(
    id: 4,
    name: 'Croissant Beurre',
    description: 'Croissant classique au beurre, bien doré et feuilleté.',
    price: 5.0,
    imageUrl: 'https://i.postimg.cc/bJ7BpqBJ/croissant-au-beurre.jpg',
    category: 'Viennoiseries',
  ),
  Product(
    id: 5,
    name: 'Millefeuille Vanille',
    description: 'Feuilletage croustillant avec crème pâtissière à la vanille.',
    price: 18.0,
    imageUrl: 'https://i.postimg.cc/rwfZz1PQ/millefeuille-framboise.jpg',
    category: 'Millefeuilles',
  ),
  Product(
    id: 6,
    name: 'Quiche Lorraine',
    description: 'Feuilleté salé garni de lardons et de crème.',
    price: 12.0,
    imageUrl: 'https://i.postimg.cc/J03P8ZXQ/Quiche-Lorraine.jpg',
    category: 'Feuilletés Salés',
  ),
  Product(
    id: 7,
    name: 'Profiteroles au Chocolat',
    description: 'Choux garnis de crème et nappés de chocolat.',
    price: 22.0,
    imageUrl: 'https://i.postimg.cc/W4D83Qrv/Profiteroles-au-Chocolat.jpg',
    category: 'Choux & Profiteroles',
  ),
];
