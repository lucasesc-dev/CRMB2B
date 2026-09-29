CREATE TABLE IF NOT EXISTS phones (
    id BIGSERIAL PRIMARY KEY,

    client_id BIGINT NOT NULL,
    rep_id BIGINT NOT NULL,
    buyer_id BIGINT,
    company_id BIGINT,

    numero VARCHAR(150) NOT NULL,
    ramal VARCHAR(20),
    pessoal BOOLEAN,
    tipo VARCHAR(30),
    principal BOOLEAN,
        
    is_shared BOOLEAN NOT NULL DEFAULT FALSE,
    CHECK(buyer_id IS NOT NULL OR company_id IS NOT NULL)
);