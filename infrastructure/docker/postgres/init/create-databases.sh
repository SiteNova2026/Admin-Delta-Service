#!/bin/bash
set -e

databases=(
  identity_access_db
  customer_db
  professional_db
  verification_db
  catalog_db
  location_db
  booking_db
  dispatch_db
  payment_db
  finance_db
  review_db
  support_db
  promotion_db
  cms_db
  notification_db
  analytics_db
  audit_db
  configuration_db
)

for database in "${databases[@]}"; do

  exists=$(psql \
    --username "$POSTGRES_USER" \
    --dbname postgres \
    -t \
    --no-align \
    --command "SELECT 1 FROM pg_database WHERE datname = '$database';")

  if [ "$exists" = "1" ]; then
    echo "Database already exists: $database"
  else
    echo "Creating database: $database"

    psql \
      --username "$POSTGRES_USER" \
      --dbname postgres \
      --set ON_ERROR_STOP=1 \
      --command "CREATE DATABASE \"$database\";"
  fi

done

echo "Database initialization completed."
