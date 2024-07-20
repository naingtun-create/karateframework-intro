Feature: User API tests

Background:
  * url baseUrl
  * path 'users'

Scenario: Get all users
  When method GET
  Then status 200
  And match response == '#[10]'
  And match each response contains { id: '#number', name: '#string', email: '#string' }

Scenario: Get all users and export to CSV
  When method GET
  Then status 200
  And match response == '#[10]'
  And match each response contains { id: '#number', name: '#string', email: '#string' }
  * def csvData = karate.map(response, function(x){ return x.id + ',' + x.name + ',' + x.username + ',' + x.email })
  * def csvHeader = 'id,name,username,email'
  * def csvContent = csvHeader + '\n' + csvData.join('\n')
  * karate.write(csvContent, 'users.csv')
  
Scenario: Get a specific user
  Given path '1'
  When method GET
  Then status 200
  And match response contains { id: 1, name: 'Leanne Graham', email: '#string' }

Scenario: Create a new user
  Given request { name: 'John Doe', email: 'john@example.com', username: 'johndoe' }
  When method POST
  Then status 201
  And match response contains { id: '#number', name: 'John Doe', email: 'john@example.com' }

Scenario Outline: Verify user emails
  Given path '<id>'
  When method GET
  Then status 200
  And match response.email == '<email>'

  Examples:
    | id | email                    |
    | 1  | Sincere@april.biz        |
    | 2  | Shanna@melissa.tv        |
    | 3  | Nathan@yesenia.net       |