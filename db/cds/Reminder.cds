namespace reminder;

entity Details {
    key userId        : UUID;
    key reminderId    : UUID;
        frequency     : Integer;
        isReminderSet : Boolean;
        reminderForID : UUID;
}

entity UserPreferredFrequency {
    key userId     : UUID;
    key reminderId : UUID;
        frequency  : Integer;
}

entity ReminderType {
    key reminderId       : UUID;
        reminderTypeText : String(100);
}

entity ReminderTracking {
    key reminderId             : UUID;
        userId                 : UUID;
        reminderUserPreferedID : UUID;
        status                 : String(10);

}
