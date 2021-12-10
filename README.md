# Chess

https://www.kaggle.com/maca11/chess-games-from-lichess-20132014?select=Lichess_2013_2014_Complete.csv

WhiteElo: Elo of the player with white pieces
BlackElo: Elo of the player with black pieces
WhiteName: Name of the player with white pieces
BlackName: Name of the player with black pieces
Winner: Color of the winning pieces. If the game ended in Draw it shows it.
Termination: How the game ended, it can be: Normal, Time Forfeit, Abandon or Rules infraction.
- Normal: When the game end in checkmate, abandon or draw
- Time Forfeit: When one of the players runs out of time
- Abandon: When in a competition one of the players doesn't make a move
- Rules infraction: When one of the players is banned
Site: URL of the game
Day: Day when the game was played
Month: Month when the game was played
Year: Year when the game was played
InitialTime: Time each player has before starting the game in seconds
Increment: Increment in the time after each player makes a move in seconds
TimeControl: Classification of the games based on the estimated duration of a game calculated as InitialTime+ 40*Increment. If estimated duration:
- <=29s: Ultrabullet
- <=179s: Bullet
- <=479s: Blitz
- <=1499s: Rapid
- Bigger or equal than 1500s: Classical
Opening: Opening Name
ECO: Classification of the games based on the ECO(Encyclopaedia of Chess Openings ) code
Number of Moves: Number of moves of the game
FEN: FEN of the game
