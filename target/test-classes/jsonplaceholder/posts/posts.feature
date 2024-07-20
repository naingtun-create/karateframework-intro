Feature: Posts API tests

Background:
  * url baseUrl
  * path 'posts'

Scenario: Get all posts
  When method GET
  Then status 200
  And match response == '#[100]'
  And match each response contains { userId: '#number', id: '#number', title: '#string', body: '#string' }

Scenario: Get posts for a specific user
  Given params { userId: 1 }
  When method GET
  Then status 200
  And match each response contains { userId: 1 }

Scenario: Create a new post
  Given request { title: 'foo', body: 'bar', userId: 1 }
  When method POST
  Then status 201
  And match response contains { id: '#number', title: 'foo', body: 'bar', userId: 1 }

Scenario: Update a post
  Given path '1'
  And request { id: 1, title: 'updated title', body: 'updated body', userId: 1 }
  When method PUT
  Then status 200
  And match response contains { id: 1, title: 'updated title', body: 'updated body', userId: 1 }

Scenario: Delete a post
  Given path '1'
  When method DELETE
  Then status 200