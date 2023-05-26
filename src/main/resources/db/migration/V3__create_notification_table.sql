CREATE TABLE notification (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    sender_id VARCHAR(36) NOT NULL,
    recipient_id VARCHAR(36) NOT NULL,
    title TEXT NOT NULL,
    message TEXT NOT NULL,
    image_url TEXT NOT NULL,
    redirect_url TEXT NOT NULL,
    type VARCHAR(20) NOT NULL,
    has_read BOOLEAN NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL,
    FOREIGN KEY (recipient_id) REFERENCES account_credential(id)
);