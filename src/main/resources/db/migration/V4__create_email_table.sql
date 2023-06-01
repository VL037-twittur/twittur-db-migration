CREATE TABLE email (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    recipient VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    is_sent BOOLEAN NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL
);

CREATE TABLE email_template (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    template_code VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL
);
