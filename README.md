# AIA Genie One workshop: hands-on assets

Please find the following assets for today's hands-on workshop. All data is synthetic.

| File | What it is |
|---|---|
| [`aia_europe_sales.csv`](aia_europe_sales.csv) | AIA Europe sales data (synthetic): monthly policies sold, gross written premium (EUR), quotes, bound quotes and lapses by region, channel and product family, Jan 2025 – Oct 2026 |
| [`aia_europe_sales_metadata.sql`](aia_europe_sales_metadata.sql) | Table and column descriptions for `aia_europe_sales` |
| [`aia-chart-plotting.zip`](aia-chart-plotting.zip) | The `aia-chart-plotting` Genie One skill (`SKILL.md`) |

To download a file, open it and click **Download raw file** (or **Code → Download ZIP** for everything).

## 1. CSV file: `aia_europe_sales.csv`
Import it as a table in a `<catalog>.<schema>` that the audience has read access to.

1. In the workspace: **New → Add or upload data → Create or modify a table**.
2. Drop in `aia_europe_sales.csv`.
3. Choose the catalog and schema. Table name: **`aia_europe_sales`**.
4. Check the preview: `month` should be a **date**, the counts integers, `gwp_eur` a decimal or double. Click **Create table**.
5. Grant the audience access, for example:
   ```sql
   GRANT USE CATALOG ON CATALOG <catalog> TO `<audience group>`;
   GRANT USE SCHEMA, SELECT ON SCHEMA <catalog>.<schema> TO `<audience group>`;
   ```

## 2. Metadata: `aia_europe_sales_metadata.sql`
Copy and paste the SQL commands to populate the metadata for the table.

1. Open the **SQL editor** (New → Query) and paste the contents of `aia_europe_sales_metadata.sql`.
2. Use Find and replace to change `<catalog>.<schema>` to the catalog and schema from step 1.
3. Click **Run all**.
4. Check: Catalog Explorer → `aia_europe_sales` → the **About** box shows the description, and every column has a comment.

## 3. Skill file: `aia-chart-plotting.zip`
1. Double-click the zip file to get the skill file, `SKILL.md`.
2. Left sidebar → **Workspace** → **Home**.
3. Open the `.assistant` folder, then `skills`. If you can't see `.assistant`, turn on hidden files from the folder's ⋮ menu. If the folders don't exist yet, create them with **Create → Folder**: `.assistant`, then `skills` inside it.
4. Inside `skills`, create a folder named **`aia-chart-plotting`**.
5. Open that folder → ⋮ → **Import** → choose `SKILL.md` → **Import**.
6. Check: **Customizations → Skills** in Genie One should list `aia-chart-plotting`.

The Skills preview must be enabled in the workspace (admin: Settings → Previews).
