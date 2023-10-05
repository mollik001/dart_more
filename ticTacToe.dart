import 'dart:io';

void main() {
  List<String> board = List.generate(9, (index) => " ");
  bool isPlayerX = true;

  print("Welcome to Tic-Tac-Toe!");
  printBoard(board);

  while (true) {
    print("Player ${isPlayerX ? 'X' : 'O'}, enter your move (1-9): ");
    int? move = int.tryParse(stdin.readLineSync() ?? "");

    if (move == null || move < 1 || move > 9 || board[move - 1] != " ") {
      print("Invalid move. Try again.");
      continue;
    }

    board[move - 1] = isPlayerX ? "X" : "O";
    printBoard(board);

    if (checkWinner(board, isPlayerX ? "X" : "O")) {
      print("Player ${isPlayerX ? 'X' : 'O'} wins!");
      break;
    }

    if (board.every((cell) => cell != " ")) {
      print("It's a draw!");
      break;
    }

    isPlayerX = !isPlayerX;
  }
}

void printBoard(List<String> board) {
  print("");
  for (int i = 0; i < 9; i += 3) {
    print(" ${board[i]} | ${board[i + 1]} | ${board[i + 2]} ");
    if (i < 6) print("---|---|---");
  }
  print("");
}

bool checkWinner(List<String> board, String symbol) {
  return (board[0] == symbol && board[1] == symbol && board[2] == symbol) ||
      (board[3] == symbol && board[4] == symbol && board[5] == symbol) ||
      (board[6] == symbol && board[7] == symbol && board[8] == symbol) ||
      (board[0] == symbol && board[3] == symbol && board[6] == symbol) ||
      (board[1] == symbol && board[4] == symbol && board[7] == symbol) ||
      (board[2] == symbol && board[5] == symbol && board[8] == symbol) ||
      (board[0] == symbol && board[4] == symbol && board[8] == symbol) ||
      (board[2] == symbol && board[4] == symbol && board[6] == symbol);
}
