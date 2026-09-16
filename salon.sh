#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

echo -e "Welcome to My Salon, how can I help you?"

COUNT=$($PSQL -t --no-align -c "select count(*) from services")
SERVICE_ID_SELECTED=99

#Selecting the service
while [[ $SERVICE_ID_SELECTED -lt 1 || $SERVICE_ID_SELECTED -gt 5 ]]
do 
  for ((i=1; i<=COUNT; i++));
  do
    echo "$i) $($PSQL -t --no-align -c "SELECT name FROM services WHERE service_id = $i")"
  done
  read SERVICE_ID_SELECTED
  if [[ $SERVICE_ID_SELECTED -lt 1 || $SERVICE_ID_SELECTED -gt 5 ]]
  then
    echo -e "\nI could not find that service. What would you like today?"
  fi
done

#Getting customer details
SERVICE=$($PSQL -t --no-align -c "SELECT name FROM services WHERE service_id='$SERVICE_ID_SELECTED'")

echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

$PSQL -q --no-align -c "INSERT INTO customers(phone) VALUES('$CUSTOMER_PHONE')" 2>/dev/null
EXIT=$?
CUSTOMER_ID=$($PSQL -t --no-align -c "SELECT customer_id FROM customers where phone='$CUSTOMER_PHONE'")

#Checking if customer exists, asking for name if not
if [[ $EXIT -eq 0 ]]
then
  echo -e "\nI don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME
  $PSQL -q --no-align -c "UPDATE customers SET name='$CUSTOMER_NAME' WHERE phone='$CUSTOMER_PHONE'"
else
  CUSTOMER_NAME=$($PSQL -t --no-align -c "SELECT name FROM customers where phone='$CUSTOMER_PHONE'")
fi

#Creating appointment
echo -e "\nWhat time would you like your $SERVICE, $CUSTOMER_NAME?"
read SERVICE_TIME

$PSQL -q --no-align -c "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')"

echo -e "\nI have put you down for a $SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."


