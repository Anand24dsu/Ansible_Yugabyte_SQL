CREATE OR REPLACE VIEW user_summary AS
SELECT username, email, created_at
FROM users
ORDER BY created_at DESC;

-- Add a column to existing table if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns 
                   WHERE table_name='test_table' AND column_name='description') THEN
        ALTER TABLE test_table ADD COLUMN description TEXT;
    END IF;
END$$;

-- Update some data
UPDATE test_table SET description = 'Created by Ansible automation' WHERE id = 1;
UPDATE test_table SET description = 'YugabyteDB admin user' WHERE id = 2;
UPDATE test_table SET description = 'Regular database user' WHERE id = 3;