import ballerina/graphql;

@graphql:ServiceConfig {
    graphiql: {
        enabled: true,
        path: "/weather-test"
    }
}
service /weather on new graphql:Listener(4000) {
    resource function get weather(string city) returns WeatherResponse|error {
        json weatherResponseJson = check getCurrentWeather(city);
        return weatherResponseJson.cloneWithType();
    }
}
