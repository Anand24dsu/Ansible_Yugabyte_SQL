INSERT INTO test_table (id, name) VALUES 
(1, 'Ansible User'),
(2, 'YugabyteDB Admin'),
(3, 'Database User')
ON CONFLICT (id) DO NOTHING;

INSERT INTO users (username, email) VALUES
('john_doe', 'john.doe@example.com'),
('jane_smith', 'jane.smith@example.com')
ON CONFLICT (username) DO NOTHING;