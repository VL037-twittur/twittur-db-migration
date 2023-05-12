CREATE TABLE account_credential (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL
);

CREATE TABLE token(
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    account_credential_id VARCHAR(36) NOT NULL,
    token VARCHAR(255) NOT NULL,
    type VARCHAR(20) NOT NULL,
    is_expired BOOLEAN NOT NULL,
    is_revoked BOOLEAN NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL,
    FOREIGN KEY (account_credential_id) REFERENCES account_credential(id)
);

CREATE TABLE account_profile (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    account_credential_id VARCHAR(36) NOT NULL,
    username VARCHAR(255) NOT NULL,
    account_name VARCHAR(255) NOT NULL,
    bio TEXT,
    tweets_count INTEGER NOT NULL,
    followers_count INTEGER NOT NULL,
    following_count INTEGER NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL
);