//Class for Book
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  // Method to Calculate discounted prices and printout book details
  double discountedPrice(double discountPercent) {
    double discountedAmount = price * (discountPercent / 100);
    double finalPrice = price - discountedAmount;
    return finalPrice;
  }

  void bookDetails(double discountPercent) {
    double finalPrice = discountedPrice(discountPercent);
    double discountedAmount = price - finalPrice;

    //Print book details
    print('Book Name: $title');
    print('Author Name: $author');
    print('Original Price of Book: ${price.toStringAsFixed(0)} Taka');
    print('Discount: $discountPercent% or ${discountedAmount.toStringAsFixed(0)} Taka');
    print('Discounted Price: ${finalPrice.toStringAsFixed(0)} Taka\n');
  }
}

//Main function
void main() {
  //Book instances(details)
  Book book1 = Book('Accounting Principles', 'Jerry J. Weygandt', 850.0);
  book1.bookDetails(12.8);

  Book book2 = Book('Principles of Economics', 'N. Gregory Mankiw', 600.0);
  book2.bookDetails(15.0);

  Book book3 = Book('English Grammar & Composition', 'Jahirul Islam', 385.0);
  book3.bookDetails(8.5);
}
