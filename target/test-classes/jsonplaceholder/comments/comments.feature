Feature: Comments API tests

Background:
  * url baseUrl
  * path 'comments'

Scenario: Get all comments
  When method GET
  Then status 200
  And match response == '#[500]'
  And match each response contains { postId: '#number', id: '#number', name: '#string', email: '#string', body: '#string' }

Scenario: Get comments for a specific post
  Given params { postId: 1 }
  When method GET
  Then status 200
  And match each response contains { postId: 1 }

Scenario: Create a new comment
  Given request { postId: 1, name: 'John Doe', email: 'john@example.com', body: 'This is a test comment' }
  When method POST
  Then status 201
  And match response contains { id: '#number', postId: 1, name: 'John Doe', email: 'john@example.com', body: 'This is a test comment' }

Scenario Outline: Verify comment emails
  Given path '<id>'
  When method GET
  Then status 200
  And match response.email == '<email>'

  Examples:
    | id | email                     |
    | 1  | Eliseo@gardner.biz        |
    | 2  | Jayne_Kuhic@sydney.com    |
    | 3  | Nikita@garfield.biz       |