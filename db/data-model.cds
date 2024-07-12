namespace my.bookshop;

entity Books
{
    key ID : Integer;
    title : String;
    stock : Integer;
    order : Composition of many Order on order.books = $self;
}

entity Order
{
    key ID : UUID;
    orderDetails : String;
    qunatity : Integer;
    books : Association to one Books;
    bookid : Integer;
    price : Integer;
}
