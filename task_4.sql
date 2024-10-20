-- Use the database passed as an argument
USE alx_book_store;

-- Query the information_schema to get the table details
SELECT 
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT,
    EXTRA
FROM 
    information_schema.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'books';
