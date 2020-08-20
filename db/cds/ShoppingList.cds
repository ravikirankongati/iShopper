
namespace shoppingList;


entity shoppingList {
    key ListID          : UUID;
    key UserID          : UUID;
   
}

entity shoppingItems {
    key ListID: UUID;
    ItemID: UUID;
    IsItemSuggested : Boolean;
    Status          : String(100);
}

view masterShoppingList as select from shoppingList left join shoppingItems on
											shoppingList.ListID = shoppingItems.ListID {
											key shoppingList.ListID as ListID,
											key shoppingList.UserID as UserID,
											shoppingItems.IsItemSuggested as IsItemSuggested,
											key shoppingItems.ItemID as ItemID,
											shoppingItems.Status as Status
	};

     
