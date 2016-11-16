SELECT datname, xact_commit, tup_inserted, tup_updated, tup_deleted
       FROM pg_stat_database 
  --     WHERE datname = 'GSTOCKDC';

-- This is to reset them all
--Select pg_stat_reset()