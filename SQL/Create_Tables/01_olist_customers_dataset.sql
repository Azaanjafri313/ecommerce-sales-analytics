-- Table: public.olist_customers_dataset

-- DROP TABLE IF EXISTS public.olist_customers_dataset;

CREATE TABLE IF NOT EXISTS public.olist_customers_dataset
(
    customer_id text COLLATE pg_catalog."default" NOT NULL,
    customer_unique_id text COLLATE pg_catalog."default",
    customer_zip_code_prefix text COLLATE pg_catalog."default",
    customer_city text COLLATE pg_catalog."default",
    customer_state text COLLATE pg_catalog."default",
    CONSTRAINT olist_customers_dataset_pkey PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_customers_dataset
    OWNER to postgres;
-- Index: ix_customers_customer_id

-- DROP INDEX IF EXISTS public.ix_customers_customer_id;

CREATE INDEX IF NOT EXISTS ix_customers_customer_id
    ON public.olist_customers_dataset USING btree
    (customer_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ix_customers_state

-- DROP INDEX IF EXISTS public.ix_customers_state;

CREATE INDEX IF NOT EXISTS ix_customers_state
    ON public.olist_customers_dataset USING btree
    (customer_state COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;