using {user} from '../db/cds/User';

service Users {

   // entity Login as select from user.Login;
    entity Details as select from user.Details;
     entity RelationshipDetails as select from user.RelationshipDetails;

      function countOrders() returns Integer;

}


