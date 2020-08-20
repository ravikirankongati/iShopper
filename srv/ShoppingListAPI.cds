using {shoppingList} from '../db/cds/ShoppingList';

service shoppingListService {

    entity mainShoppingList as select from shoppingList.shoppingList;
    entity shoppingItems as select from shoppingList.shoppingItems;
    view masterShoppingLisy as select from shoppingList.masterShoppingList;

    function generateShoppingList(user: String) returns String;

}



