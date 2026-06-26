-- Table: public.olist_sellers_dataset

-- DROP TABLE IF EXISTS public.olist_sellers_dataset;

CREATE TABLE IF NOT EXISTS public.olist_sellers_dataset
(
    seller_id text COLLATE pg_catalog."default" NOT NULL,
    seller_zip_code_prefix text COLLATE pg_catalog."default",
    seller_city text COLLATE pg_catalog."default",
    seller_state text COLLATE pg_catalog."default",
    CONSTRAINT olist_sellers_dataset_pkey PRIMARY KEY (seller_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_sellers_dataset
    OWNER to postgres;