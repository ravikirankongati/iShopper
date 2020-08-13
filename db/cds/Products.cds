namespace products;

entity products
     {
       key productID        : UUID;
        productType        : UUID;
        productName        : String;
        ExpiryDate          : Date;
        RemindOnDate    : Date;
        ShoppingID  :UUID;
        ShelfLifeInDays : Integer;

}

entity productType {
    key productType     : UUID;
     productTypeDescription : String;

}