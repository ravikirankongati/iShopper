namespace user;

entity Details {
    key email    : String(100);
        ID       : UUID;
        password : String(100);
        fullName    : String(100);
        dateOfBirth : Date;
}


entity RelationshipDetails {
    key userId               : UUID; //must be taken from login table
    key personId             : UUID;
    key remainderID          : UUID; //need this to link to reminder model
        personFullName       : String(100);
        lifeEventDate        : Date;
        lifeEventDescription : String(100);
        remindBeforeInDays   : Integer;
}
