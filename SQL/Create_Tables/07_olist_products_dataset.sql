-- Table: public.olist_products_dataset

-- DROP TABLE IF EXISTS public.olist_products_dataset;

CREATE TABLE IF NOT EXISTS public.olist_products_dataset
(
    product_id text COLLATE pg_catalog."default" NOT NULL,
    product_category_name text COLLATE pg_catalog."default",
    product_name_lenght integer,
    product_description_lenght integer,
    product_photos_qty integer,
    product_weight_g integer,
    product_length_cm integer,
    product_height_cm integer,
    product_width_cm integer,
    CONSTRAINT olist_products_dataset_pkey PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_products_dataset
    OWNER to postgres;