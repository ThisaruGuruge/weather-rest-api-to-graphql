type Condition record {
    string text;
    string icon;
    int code;
};

type Weather record {
    int last_updated_epoch;
    string last_updated;
    float temp_c;
    float temp_f;
    int is_day;
    Condition condition;
    float wind_mph;
    float wind_kph;
    int wind_degree;
    string wind_dir;
    float pressure_mb;
    float pressure_in;
    float precip_mm;
    float precip_in;
    int humidity;
    int cloud;
    float feelslike_c;
    float feelslike_f;
    float vis_km;
    float vis_miles;
    float uv;
    float gust_mph;
    float gust_kph;
};

type Location record {
    string name;
    string region;
    string country;
    float lat;
    float lon;
    string tz_id;
    int localtime_epoch;
    string localtime;
};

type WeatherResponse record {|
    Weather current;
    Location location;
|};
