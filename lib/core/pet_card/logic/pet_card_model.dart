enum Sex { male, female }

class PetCard {
  final String name;
  final int age;
  final String type;
  final String breed;
  final Sex sex;

  final Uri imageLink;

  PetCard(this.name, this.age, this.type, this.sex, this.imageLink, this.breed);
}
