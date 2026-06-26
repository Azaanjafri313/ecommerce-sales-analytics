-- Table: public.olist_order_reviews_dataset

-- DROP TABLE IF EXISTS public.olist_order_reviews_dataset;

CREATE TABLE IF NOT EXISTS public.olist_order_reviews_dataset
(
    review_id text COLLATE pg_catalog."default",
    order_id text COLLATE pg_catalog."default",
    review_score integer,
    review_comment_title text COLLATE pg_catalog."default",
    review_comment_message text COLLATE pg_catalog."default",
    review_creation_date timestamp without time zone,
    review_answer_timestamp timestamp without time zone
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_order_reviews_dataset
    OWNER to postgres;
-- Index: ix_reviews_order_id

-- DROP INDEX IF EXISTS public.ix_reviews_order_id;

CREATE INDEX IF NOT EXISTS ix_reviews_order_id
    ON public.olist_order_reviews_dataset USING btree
    (order_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;