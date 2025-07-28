@isTest
private class SwagSpamDetectionApiTest {
    /**
     * Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
     *
     * 
     */
    @isTest
    private static void spamDetectTextStringAdvancedPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagSpamDetectionAdvancedRequest.getExample()
        };

        SwagClient client;
        SwagSpamDetectionApi api;
        SwagSpamDetectionAdvancedResponse response;
        SwagSpamDetectionAdvancedResponse expectedResponse;

        client = new SwagClient();
        api = new SwagSpamDetectionApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ContainsSpam" : true,\r\n  "ContainsUnsolicitedSales" : true,\r\n  "ContainsPhishingAttempt" : true,\r\n  "CleanResult" : true,\r\n  "ContainsPromotionalContent" : true\r\n}');
        expectedResponse = SwagSpamDetectionAdvancedResponse.getExample();
        response = (SwagSpamDetectionAdvancedResponse) api.spamDetectTextStringAdvancedPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Perform AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-75 API calls depending on model selected.
     *
     * 
     */
    @isTest
    private static void spamDetectTextStringPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagSpamDetectionRequest.getExample()
        };

        SwagClient client;
        SwagSpamDetectionApi api;
        SwagSpamDetectionResponse response;
        SwagSpamDetectionResponse expectedResponse;

        client = new SwagClient();
        api = new SwagSpamDetectionApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "CleanResult" : true\r\n}');
        expectedResponse = SwagSpamDetectionResponse.getExample();
        response = (SwagSpamDetectionResponse) api.spamDetectTextStringPost(params);
        System.assertEquals(expectedResponse, response);
    }
}