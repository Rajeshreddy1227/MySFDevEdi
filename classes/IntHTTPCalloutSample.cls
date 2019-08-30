public class IntHTTPCalloutSample {

  // Pass in the endpoint to be used using the string url
  public String getCalloutResponseContents(String url) {

    // Instantiate a new http object
    Http h = new Http();

     // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');

    // Send the request, and return a response
    HttpResponse res = h.send(req);
      system.debug('HTTP response STATUS CODE:=='+res);
       System.debug('HTTP response Body'+res.getBody());      
    return res.getBody();
  }
}


/*
IntHTTPCalloutSample insample = new IntHTTPCalloutSample();
insample.getCalloutResponseContents('https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=CRM&apikey=D6S4D7104PT52HSY');

*/