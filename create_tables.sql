CREATE TABLE products (
  product_id NUMBER PRIMARY KEY,
  sku VARCHAR2(50),
  name VARCHAR2(200),
  reorder_level NUMBER
);

CREATE TABLE inventory (
  inventory_id NUMBER PRIMARY KEY,
  product_id NUMBER,
  warehouse_id NUMBER,
  qty_on_hand NUMBER
);

CREATE TABLE orders (
  order_id NUMBER PRIMARY KEY,
  order_date DATE,
  product_id NUMBER,
  qty NUMBER,
  unit_price NUMBER(18,2)
);
