\c customers;

ALTER TABLE "customers"
    ADD COLUMN "is_primary" SMALLINT NOT NULL DEFAULT 0;