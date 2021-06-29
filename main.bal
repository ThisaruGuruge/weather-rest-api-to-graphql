import ballerina/graphql;
import ballerina/io;

service /weather on new graphql:Listener(4000) {
    resource function get weather(string city) returns WeatherResponse|error {
        json weatherResponseJson = check getCurrentWeather(city);
        io:println(weatherResponseJson);
        return weatherResponseJson.cloneWithType();
    }
}

type Weather record {
    float temp_c;
};

type Location record {
    string localtime;
};

type WeatherResponse record {|
    Weather current;
    Location location;
|};
