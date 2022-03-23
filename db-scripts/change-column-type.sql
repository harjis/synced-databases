\c customers;

ALTER TABLE customers
    ALTER is_primary DROP DEFAULT;
ALTER TABLE customers
    ALTER COLUMN is_primary TYPE boolean
        USING CASE WHEN is_primary = 0 THEN FALSE
                   WHEN is_primary = 1 THEN TRUE
                   ELSE NULL
        END;
ALTER TABLE customers
    ALTER is_primary SET DEFAULT FALSE;
