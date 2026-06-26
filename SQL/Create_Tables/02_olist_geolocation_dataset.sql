-- Table: public.olist_geolocation_dataset

-- DROP TABLE IF EXISTS public.olist_geolocation_dataset;

CREATE TABLE IF NOT EXISTS public.olist_geolocation_dataset
(
    geolocation_zip_code_prefix text COLLATE pg_catalog."default",
    geolocation_lat numeric,
    geolocation_lng numeric,
    geolocation_city text COLLATE pg_catalog."default",
    geolocation_state text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_geolocation_dataset
    OWNER to postgres;