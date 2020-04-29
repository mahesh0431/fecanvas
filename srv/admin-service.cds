using {fe.canvas as fe} from '../db/schema';

service AdminService @(_requires : 'authenticated-user') {

    entity Books   as projection on fe.Books;
    entity Authors as projection on fe.Authors;

}
