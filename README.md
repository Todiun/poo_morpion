# Tic-Tac-Toe in Ruby (Morpion)

This project is a simple **command-line Tic-Tac-Toe game** written in Ruby.  
It was created as a learning exercise to practice **Object-Oriented Programming (OOP)** and the basics of game loops, user input, and condition checking.

---

## 🎯 Features
- Two-player mode (Player X vs Player O).
- Clean board display in the terminal.
- Input validation: players cannot overwrite an occupied cell.
- Victory detection (rows, columns, diagonals).
- Draw detection (board completely filled).
- Replay system (play as many games as you want without restarting the program).

---

## 📂 Project Structure
- `app.rb` → Main entry point. Launches the application.
- `lib/application.rb` → Controls the app lifecycle (welcome, replay loop).
- `lib/game.rb` → Core game logic (turns, win/draw checks, switching players).
- `lib/board.rb` → Board logic (storing cases, moves, checking states).
- `lib/board_case.rb` → Represents a single square on the board.
- `lib/player.rb` → Defines a player (name + symbol).
- `lib/show.rb` → Handles board display in the terminal.

---

## ▶️ How to Run
1. Clone this repository or copy the files locally.
2. Open a terminal and go to the project folder.
3. Run the game with:
   ```bash
   ruby app.rb
