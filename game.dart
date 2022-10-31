import 'dart:math';

void main() {
  Move movePlayerOne = getMove();
  print("Player One your move is ${movePlayerOne.name}");
  Move movePlayerTwo = getMove();
  print("Player Two your move is ${movePlayerTwo.name}");
  print("The Win is ${rockScissorsPaper(movePlayerOne, movePlayerTwo)}");
}

String rockScissorsPaper(Move playerOneMove, Move playerTwoMove) {
  int playerOneGames = 0;
  int playerTwoGames = 0;

  if (playerOneMove != playerTwoMove) {
    if (playerOneMove == Move.rock && playerTwoMove == Move.scissors ||
        playerOneMove == Move.scissors && playerTwoMove == Move.paper ||
        playerOneMove == Move.paper && playerTwoMove == Move.rock) {
      playerOneGames += 1;
    } else {
      playerTwoGames += 1;
    }
  }

  if (playerOneGames == playerTwoGames) {
    return "Tie";
  } else if (playerOneGames > playerTwoGames) {
    return "Player 1";
  } else {
    return "Player 2";
  }
}

enum Move { rock, scissors, paper, error }

Move getMove() {
  Move move;

  int randomNumber = Random().nextInt(3);

  switch (randomNumber) {
    case 0:
      move = Move.rock;
      break;
    case 1:
      move = Move.scissors;
      break;
    case 2:
      move = Move.paper;
      break;
    default:
      move = Move.error;
  }
  return move;
}
