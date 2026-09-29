CREATE TABLE IF NOT EXISTS applications (
    id BIGSERIAL PRIMARY KEY,

    client_id BIGINT NOT NULL,
    rep_id BIGINT NOT NULL,
    
    tipo VARCHAR(150) NOT NULL,
        
    is_shared BOOLEAN NOT NULL DEFAULT FALSE
);