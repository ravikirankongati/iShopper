namespace user;


entity Login {
    key email    : String(100);
        ID       : UUID;
        password : String(100);
}

entity Details {
    key userId      : UUID;
        fullName    : String(100);
        dateOfBirth : Date;
}

entity RelationshipDetails {
    key userId               : UUID;
    key personId             : UUID;
        personFullName       : String(100);
        lifeEventDate        : Date;
        lifeEventDescription : String(100);
        remindBeforeInDays   : Integer;
}
