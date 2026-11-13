-- Metadata for the hands-on table aia_europe_sales (slides 21-22).
-- Run AFTER importing aia_europe_sales.csv. Replace <catalog>.<schema> (Find and replace in the SQL editor) and click Run all.
-- Genie uses these descriptions to find the table and to understand each column.

COMMENT ON TABLE <catalog>.<schema>.aia_europe_sales IS
'The table captures AIA Europe sales data related to insurance policies. It includes details by month, region (country), and sales channel, along with metrics such as policies sold, gross written premium in EUR, quotes generated, bound quotes, and policies that have lapsed. This data can be utilized for sales performance analysis, regional comparisons, and understanding trends in policy sales across different channels.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN month COMMENT
'First day of the calendar month the sales relate to. Data covers January 2025 to October 2026.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN region COMMENT
'AIA Europe country where the policies were sold: Germany, France, Spain, Netherlands or Italy.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN channel COMMENT
'Sales channel: Retail (tied agency), IFA (independent financial advisers) or Direct & Banca (direct and bancassurance).';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN product_family COMMENT
'Insurance product family: Life, Disability, Income Protection, Critical Illness, Health or Vitality Bundle.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN policies_sold COMMENT
'Number of new insurance policies sold in the month.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN gwp_eur COMMENT
'Gross written premium (GWP) of the new policies sold in the month, in EUR. Also called production or new business premium.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN quotes COMMENT
'Number of quotes generated in the month.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN quotes_bound COMMENT
'Number of quotes that were bound, that is, became policies. Quote-to-bind rate = quotes_bound / quotes.';

ALTER TABLE <catalog>.<schema>.aia_europe_sales ALTER COLUMN policies_lapsed COMMENT
'Number of policies that lapsed in the month.';
