CREATE LOGIN john_stones WITH PASSWORD = 'johnstones2000john';
    CREATE USER john_stones FOR LOGIN john_stones;

	GRANT SELECT ON Product TO john_stones;
    GRANT SELECT ON Consumer TO john_stones;
    GRANT SELECT ON Available TO john_stones;
    GRANT SELECT ON OrderTable TO john_stones;

    GRANT SELECT ON distributor_distributes TO john_stones;
    GRANT SELECT ON customer_orders TO john_stones;

DENY INSERT, UPDATE, DELETE, EXECUTE TO john_stones;