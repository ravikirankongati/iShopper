context shoppingListModel {

	entity shoppingList {
        ListID          : UUID;
        UserID          : UUID;
        IsItemSuggested : Boolean;
        ItemID          : Integer;
        Status          : String(100);

    }
		  	
}