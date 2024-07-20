# JSONPlaceholder API Test Suite

## Project Overview

This project demonstrates the use of Karate Framework to test the JSONPlaceholder API, a free fake API for testing and prototyping. The test suite covers various endpoints and HTTP methods, showcasing different features of Karate Framework.

## Problem Statement

When developing applications that interact with RESTful APIs, it's crucial to ensure that the API behaves as expected. This test suite aims to verify the functionality of the JSONPlaceholder API, covering various scenarios such as retrieving data, creating new resources, updating existing ones, and deleting them.

## Features Tested

- Users API
- Posts API
- Comments API

## Karate Framework Features Showcased

- API calls (GET, POST, PUT, DELETE)
- JSON parsing and validation
- Data-driven testing using Scenario Outline
- Background setup for reusable configurations
- Parameterization
- Response matching and assertions

## Setup and Execution

1. Ensure you have Java and Maven installed on your system.
2. Clone this repository: https://github.com/naingtun-create/karateframework-intro.git
3. Navigate to the project directory: cd "projectdirectory"
4. Run the tests using Maven: mvn test

## Reporting

After test execution, you can find the Karate report in the `target/karate-reports/` directory. Open the `karate-summary.html` file in a web browser to view the detailed test results.

## Contributing

Feel free to fork this project and submit pull requests with improvements or additional test scenarios.

## License

This project is open-source and available under the MIT License.
