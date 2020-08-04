using {reminder} from '../db/cds/Reminder';


service Reminders {
    
    entity Details  as select from reminder.Details;
    entity Type as select from reminder.ReminderType;
    entity Tracking as select from reminder.ReminderTracking;
    entity PreferredFrequeuncy as select from reminder.UserPreferredFrequency;
  

}
