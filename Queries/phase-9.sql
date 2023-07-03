CREATE INDEX idx_available_quantity 
    ON Available ( Quantity )

CREATE INDEX idx_consumer_phone
    ON Consumer ( Telephone )

CREATE INDEX idx_brand_name
    ON Brand ( BName )

CREATE INDEX idx_product_weight
    ON Product ( Weight )