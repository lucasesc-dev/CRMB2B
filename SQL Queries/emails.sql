CREATE TABLE IF NOT EXISTS emails (
    id BIGSERIAL PRIMARY KEY,

    client_id BIGINT NOT NULL,
    rep_id BIGINT NOT NULL,
    buyer_id BIGINT,
    company_id BIGINT,



    endereco VARCHAR(150) NOT NULL,
    
    is_shared BOOLEAN NOT NULL DEFAULT FALSE,
    CHECK(buyer_id IS NOT NULL OR company_id IS NOT NULL)
);