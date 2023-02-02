CREATE TABLE IF NOT EXISTS orders (
    order_id smallint NOT NULL,
    customer_id bpchar,
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name character varying(40),
    ship_address character varying(60),
    ship_city character varying(15),
    ship_region character varying(15),
    ship_postal_code character varying(10),
    ship_country character varying(15),

    CONSTRAINT pk_orders PRIMARY KEY (order_id)
);

CREATE TABLE IF NOT EXISTS order_details (
    order_id int REFERENCES orders (order_id),
    product_id int,
    unit_price real,
    quantity int,
    discount real
);
