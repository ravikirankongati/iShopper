
namespace shoppingList;


entity shoppingList {
    ListID          : UUID;
    UserID          : UUID;
   
}

entity shoppingItems {
    ListID: UUID;
    ItemID: UUID;
    IsItemSuggested : Boolean;
    Status          : String(100);
}

view masterShoppingLisy as select from shoppingList left join shoppingItems on
											shoppingList.ListID = shoppingItems.ListID {
											shoppingList.ListID as ListID,
											shoppingList.UserID as UserID,
											shoppingItems.IsItemSuggested as IsItemSuggested,
											shoppingItems.ItemID as ItemID,
											shoppingItems.Status as Status
	};