import ballerina/http;

final http:Client httpClient = check new("http://api.weatherapi.com/v1");
configurable string API_KEY = ?;
const CURRENT_WEATHER_ENDPOINT = "/current.json";

function getCurrentWeather(string city) returns json|error {
    return httpClient->/[CURRENT_WEATHER_ENDPOINT](key = API_KEY, q = city);
}
