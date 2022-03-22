class RappiCategory {
  final String name;
  final List<RappiProduct> products;
  RappiCategory({
    required this.name,
    required this.products,
  });
}

class RappiProduct {
  final String name;
  final String description;
  final double price;
  final String image;
  RappiProduct({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

var rappiCategories = [
  RappiCategory(name: "Lanches", products: [
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "X-tudo",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "X-salada",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "X-egge",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "X-bacon",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "X-burguer",
        price: 26.50),
  ]),
  RappiCategory(name: "Pizza", products: [
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Calabreza",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Mussarela",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Egge",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Bacon",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "burguer",
        price: 26.50),
  ]),
  RappiCategory(name: "Açai", products: [
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai com leite",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai com nutella",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai com nescau",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai com paçoca",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai com leite ninho",
        price: 26.50),
  ]),
  RappiCategory(name: "Vitamina", products: [
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Laranja",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Morango",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "TNT",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Guarana",
        price: 26.50),
  ]),
  RappiCategory(name: "Sucos", products: [
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Laranja",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Açai",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Morango",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "TNT",
        price: 26.50),
    RappiProduct(
        description:
            "Descrição é uma narração detalhada sobre algo ou alguém, que acontece através da enumeração de características ou eventos. Uma descrição é marcada pela presença de verbos de ligação (ser, estar, parecer, etc).",
        image:
            "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia19920/beneficios-dos-sucos-naturais-1-alfa-hotel.jpg",
        name: "Guarana ",
        price: 26.50),
  ]),
];
