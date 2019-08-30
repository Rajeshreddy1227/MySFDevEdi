public class JSONPerson {
public string firstName;
public string lastName;
}

/*execute ananymous
 
string sample = '{"firstName":"foo","lastName":"bar"}';
JSONPerson jp = (JSONPerson)System.JSON.deserialize(sample, JSONPerson.class);
system.debug(jp.firstName);
system.debug(jp.lastName);
 */