
-- *** The Lost Letter ***

-- Busca o endereço específico '900 Somerville Avenue'
SELECT * FROM addresses
WHERE address = '900 Somerville Avenue';

-- Busca pacotes e ações de 'Drop' relacionados ao endereço de origem e destino
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

-- Busca pacotes sem endereço de origem
SELECT * FROM packages
WHERE from_address_id IS NULL;

-- Busca o endereço de destino do pacote entregue sem endereço de origem
SELECT * FROM addresses
WHERE id = (
    SELECT address_id FROM scans
    WHERE package_id = (
        SELECT id FROM packages
        WHERE from_address_id IS NULL
    ) AND action = 'Drop'
);
-- *** The Forgotten Gift ***

-- Busca o conteúdo do pacote'
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

-- Busca o motorista que esta com o pacote
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
