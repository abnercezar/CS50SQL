
-- *** The Lost Letter ***

-- Search for the specific address '900 Somerville Avenue'
SELECT * FROM addresses
WHERE address = '900 Somerville Avenue';

-- Search packages and 'Drop' actions related to source and destination address
SELECT packages.*, scans.*
FROM packages
JOIN scans ON packages.id = scans.package_id
WHERE packages.from_address_id = (
    SELECT id FROM addresses
    WHERE address = '900 Somerville Avenue'
)
AND packages.to_address_id = (
    SELECT id FROM addresses
    WHERE address LIKE '%2 Finn%'
)
AND scans.action = 'Drop'
AND scans.package_id = 384;

-- *** The Devious Delivery ***

-- Search packets without source address
SELECT * FROM packages
WHERE from_address_id IS NULL;

-- Search for the destination address of the package delivered without a source address
SELECT * FROM addresses
WHERE id = (
    SELECT address_id FROM scans
    WHERE package_id = (
        SELECT id FROM packages
        WHERE from_address_id IS NULL
    ) AND action = 'Drop'
);
-- *** The Forgotten Gift ***

-- Fetch package contents
SELECT contents
FROM packages
WHERE to_address_id = (
    SELECT id
    FROM addresses
    WHERE address = '728 Maple Place'
)
AND from_address_id = (
    SELECT id
    FROM addresses
    WHERE address = '109 Tileston Street'
);

-- Look for the driver who has the package
SELECT name, action
FROM drivers
JOIN scans ON drivers.id = scans.driver_id
WHERE package_id IN (
    SELECT id
    FROM packages
    WHERE from_address_id = (
        SELECT id
        FROM addresses
        WHERE address = '109 Tileston Street'
    )
    AND to_address_id = (
        SELECT id
        FROM addresses
        WHERE address = '728 Maple Place'
    )
);


