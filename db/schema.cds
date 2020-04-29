using { managed } from '@sap/cds/common';
namespace fe.canvas;

entity Books : managed {
    key ID : Integer;
    title : String(111);
    descr :String(1111);
    author : Association to Authors;
    stock : Integer;
}

entity Authors : managed {
    key ID : Integer;
    name : String(111);
    books : Association to many Books on books.author = $self;
}

