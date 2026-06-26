-- View: public.bi_fact_review_latest

-- DROP VIEW public.bi_fact_review_latest;

CREATE OR REPLACE VIEW public.bi_fact_review_latest
 AS
 SELECT DISTINCT ON (order_id) order_id,
    review_score,
    review_creation_date,
    review_answer_timestamp
   FROM olist_order_reviews_dataset r
  ORDER BY order_id, review_creation_date DESC NULLS LAST;

ALTER TABLE public.bi_fact_review_latest
    OWNER TO postgres;

