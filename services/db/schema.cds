namespace schema;

entity User {
    key id                : UUID;
        firstName         : String(50);
        middleName        : String(50);
        lastName          : String(50);
        email             : String(100);
        encryptedPassword : String(50);

}
