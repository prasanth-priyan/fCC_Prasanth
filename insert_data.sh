#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE TABLE games, teams;")"
cat games.csv | while IFS="," read YEAR ROUND WIN OPP WIN_GLS OPP_GLS
do
  if [[ $YEAR != 'year' ]]
  then
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$WIN')")"
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPP')")"
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
    echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $WIN_GLS, $OPP_GLS)")"
  fi
done
