-- This is to delte all dublicated rows from table example here is "zip_codes" table
DELETE FROM zip_codes
    WHERE EXISTS (SELECT 1
                  FROM zip_codes t2
                  WHERE t2.city = zip_codes.city and
                        t2.ctid > zip_codes.ctid
                 );