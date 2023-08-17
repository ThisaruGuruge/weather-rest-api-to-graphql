# Convert Weather REST API to a GraphQL API

## Overview

This is an example to demonstrate how to convert an existing REST API to a GraphQL API using Ballerina.

This uses the [Weather API](https://www.weatherapi.com/) REST api and converts it to a GraphQL API.

## Prerequisites

- Download and Install [Ballerina](https://ballerina.io/downloads/)
- Obtain a valid API key from [Weather API](https://www.weatherapi.com/)

## Running the Example

To run this sample,

- Checkout this repository
- Go into the `weather-rest-api-to-graphql` directory
- Add a `Config.toml` file with the following content

  ```toml
  API_KEY="<Your weatherapi.com API key>"
  ```

  You can find a sample `Config.toml` file in the same directory, named `Config.toml.sample`.

- Then execute the following `bal` command

  ```shell
  bal run
  ```
