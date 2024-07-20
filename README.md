# JSONPlaceholder API Test Suite

## Project Overview

This project demonstrates the use of Karate Framework to test the JSONPlaceholder API, a free fake API for testing and prototyping. The test suite covers various endpoints and HTTP methods, showcasing different features of Karate Framework.

## Problem Statement

When developing applications that interact with RESTful APIs, it's crucial to ensure that the API behaves as expected. This test suite aims to verify the functionality of the JSONPlaceholder API, covering various scenarios such as retrieving data, creating new resources, updating existing ones, and deleting them.

## Karate Framework vs Python Scripts for API Testing

|   | Karate Framework | Python Scripts |
| ------------- | ------------- | ------------- |
| Ease of Use  | Built in Syntax even for non-developers  | Require Python knowledge and understanding of code  |
| Features  | Integrated API Testing and Mocking  | Requires additional libraries and setup to utilise extra features  |
| Built in Reporting  | Detailed HTML reports generated  | Libraries like pytest-html or create custom reports using Python libraries.  |
| Flexibility  | Less flexibility for complex test scenarios or custom logic  | Python allows for fine-grained control and flexibility. You can write highly customized tests and integrate complex logic as needed.  |

## When to use Karate Framework vs Python Scripts

Choose Karate Framework if:
- You prefer a DSL (domain specific language) that simplifies API testing and reduces boilerplate code.
- You are working on a Java project and need integrated API testing with built-in reporting.
- You need out-of-the-box support for mocking and parallel execution.

Choose Python Scripts if:
- You need maximum flexibility and control over your test scenarios and custom logic.
- You prefer using Python's extensive libraries and want to integrate with various tools and services.
- You are already comfortable with Python and want to leverage its simplicity and readability for writing test scripts.

## Features Tested

- Comments API (https://github.com/naingtun-create/karateframework-intro/tree/main/src/test/java/jsonplaceholder/comments/comments.feature)
- Posts API (https://github.com/naingtun-create/karateframework-intro/tree/main/src/test/java/jsonplaceholder/posts/posts.feature)
- Users API (https://github.com/naingtun-create/karateframework-intro/tree/main/src/test/java/jsonplaceholder/users/users.feature)


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

![image](https://github.com/user-attachments/assets/04f190e8-d6e3-4ac9-a64f-9b2d8cde0b6b)
![image](https://github.com/user-attachments/assets/c406cf8b-d37c-41e1-bdf5-dc9675a31060)


## Contributing

Feel free to fork this project and submit pull requests with improvements or additional test scenarios.

## License

This project is open-source and available under the MIT License.
