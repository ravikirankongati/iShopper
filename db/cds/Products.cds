namespace products;

entity products
     {
       key productID        : UUID;
        productType        : UUID;
        productName        : String;
        expiryDate          : Date;
        remindOnDate    : Date;
        shoppingID  :UUID;
        shelfLifeInDays : Integer;
        purchasedOn: Date;
        productConsumed: Boolean Default false;
        isPurchased: Boolean Default false;

}

entity productType {
    key productType     : UUID;
     productTypeDescription : String;

}

view itemsPurchased as select from products left join productType on
											products.productType = productType.productType {
                                              products.productID,
       products.productType,
        products.productName,
        products.expiryDate,
        products.remindOnDate,
        products.shoppingID,
        products.shelfLifeInDays,
        products.purchasedOn,
        products.productConsumed,
        products.isPurchased,
        productType.productTypeDescription,
	} where isPurchased = true and productConsumed = false;

    view itemsPurchasedOutOfStock as select from itemsPurchased where isPurchased = true and productConsumed = true;

    view itemsPurchasedTobeAddedToShoppingList as select from itemsPurchased where isPurchased = true and productConsumed = true;
