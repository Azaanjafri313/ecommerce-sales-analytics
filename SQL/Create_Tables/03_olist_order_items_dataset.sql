-- Table: public.olist_order_items_dataset

-- DROP TABLE IF EXISTS public.olist_order_items_dataset;

CREATE TABLE IF NOT EXISTS public.olist_order_items_dataset
(
    order_id text COLLATE pg_catalog."default",
    order_item_id integer,
    product_id text COLLATE pg_catalog."default",
    seller_id text COLLATE pg_catalog."default",
    shipping_limit_date timestamp without time zone,
    price numeric,
    freight_value numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_order_items_dataset
    OWNER to postgres;
-- Index: ix_items_order_id

-- DROP INDEX IF EXISTS public.ix_items_order_id;

CREATE INDEX IF NOT EXISTS ix_items_order_id
    ON public.olist_order_items_dataset USING btree
    (order_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ix_items_product_id

-- DROP INDEX IF EXISTS public.ix_items_product_id;

CREATE INDEX IF NOT EXISTS ix_items_product_id
    ON public.olist_order_items_dataset USING btree
    (product_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ix_items_seller_id

-- DROP INDEX IF EXISTS public.ix_items_seller_id;

CREATE INDEX IF NOT EXISTS ix_items_seller_id
    ON public.olist_order_items_dataset USING btree
    (seller_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;