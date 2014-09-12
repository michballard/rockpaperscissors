Feature: Playing
	In order to play Rock Paper Scissors
	As a player
	I need to get two players

Scenario: A player can register
	Given I am on the homepage
	When I enter my name
	And I press "Play"
	Then I should be ready to play

Scenario: A player is playing
	Given I've registered to play
	When I choose "Paper"
	Then I should see a result

Scenario: A player is playing
	Given I've registered to play
	When I choose "Rock"
	Then I should see a result

Scenario: A player is playing
	Given I've registered to play
	When I choose "Scissors"
	Then I should see a result

Scenario: A player is playing again
	Given I've played a game
	When I press "Play again"
	Then I should be ready to play
