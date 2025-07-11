-- SQL Data Types: Common types across MySQL, PostgreSQL, and SQLite

-- Numeric Types
INT, INTEGER       -- Whole numbers
SMALLINT           -- Smaller range of integers
BIGINT             -- Larger range of integers
DECIMAL(p, s)      -- Exact numeric (e.g., DECIMAL(10, 2) = up to 99999999.99)
FLOAT, REAL, DOUBLE -- Approximate numbers

-- Character Types
CHAR(n)            -- Fixed-length character string
VARCHAR(n)         -- Variable-length string
TEXT               -- Large text (no length limit)

-- Date & Time Types
DATE               -- 'YYYY-MM-DD'
TIME               -- 'HH:MM:SS'
DATETIME           -- Both date and time
TIMESTAMP          -- Auto-updated date-time in some databases

-- Boolean
BOOLEAN            -- TRUE or FALSE (often represented as 1/0)

-- Binary Types (used in MySQL/PostgreSQL)
BLOB               -- Binary Large Object (used for images, audio, etc.)

-- JSON Type (used in PostgreSQL/MySQL)
JSON               -- Stores JSON-formatted text
