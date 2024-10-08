# Challenge RockPaperScissors

You have a basic understanding of arrays, state, views, images, text, and more, so let’s put them together: your challenge is to make a brain training game that challenges players to win or lose at rock, paper, scissors.

So, very roughly:

- Each turn of the game the app will randomly pick either rock, paper, or scissors.

- Each turn the app will alternate between prompting the player to win or lose.
  
- The player must then tap the correct move to win or lose the game.

- If they are correct they score a point; otherwise they lose a point.
  
- The game ends after 10 questions, at which point their score is shown.
  
- So, if the app chose “Rock” and “Win” the player would need to choose “Paper”, but if the app chose “Rock” and “Lose” the player would need to choose “Scissors”.


To solve this challenge you’ll need to draw on skills you learned in tutorials 1 and 2:

1.- Start with an App template, then create a property to store the three possible moves: rock, paper, and scissors.

2.- You’ll need to create two @State properties to store the app’s current choice and whether the player should win or lose.

3.- You can use Int.random(in:) to select a random move. You can use it for whether the player should win too if you want, but there’s an even easier choice: Bool.random() is randomly true or false. After the initial value, use toggle() between rounds so it’s always changing.

4.- Create a VStack showing the player’s score, the app’s move, and whether the player should win or lose. You can use if shouldWin to return one of two different text views.

5.- The important part is making three buttons that respond to the player’s move: Rock, Paper, or Scissors.

6.- Use the font() modifier to adjust the size of your text. If you’re using emoji for the three moves, they also scale. Tip: You can ask for very large system fonts using .font(.system(size: 200)) – they’ll be a fixed size, but at least you can make sure they are nice and big!
