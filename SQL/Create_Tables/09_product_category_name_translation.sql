-- Table: public.product_category_name_translation

-- DROP TABLE IF EXISTS public.product_category_name_translation;

CREATE TABLE IF NOT EXISTS public.product_category_name_translation
(
    product_category_name text COLLATE pg_catalog."default" NOT NULL,
    product_category_name_english text COLLATE pg_catalog."default",
    CONSTRAINT product_category_name_translation_pkey PRIMARY KEY (product_category_name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_category_name_translation
    OWNER to postgres;