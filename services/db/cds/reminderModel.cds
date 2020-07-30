context reminderModel {

	entity details {
        key userId: UUID;
        key reminderId: UUID;
        frequency: Integer;
        isReminderSet: Boolean;
        reminderForID: UUID;
    }

	entity userPreferredFrequency {
		key  userId  :UUID;
        key reminderId: UUID;
        frequency: Integer;
    }

    entity reminderType {
		key reminderId: UUID;
        reminderTypeText: String(100);
    }

    entity reminderTracking {
		key reminderId: UUID;
        userId: UUID;
        reminderUserPreferedID: UUID;
        status: String(10);

    }
		  	
}