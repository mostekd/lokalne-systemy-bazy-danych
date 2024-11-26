#!/bin/bash

DB_NAME="Sklep"
DB_USER="administrator_sklep"
DB_PASSWORD="admin"
BACKUP_DIR="/opt/lampp/htdocs/szkola/lokalne-systemy-bazy-danych/Klasa 4/backup/"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/backup_${DB_NAME}_${DATE}.sql"

# Tworzenie backupu
mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE

# Weryfikacja
if [ $? -eq 0 ]; then
    echo "Backup został pomyślnie wykonany: $BACKUP_FILE"
else
    echo "Błąd podczas wykonywania backupu!"
fi


#  uruchomienie:

#  bash backup_on_demand.sh