using {schema} from '../db/schema';

service UserDetails {

    entity User as select from schema.User;

}
